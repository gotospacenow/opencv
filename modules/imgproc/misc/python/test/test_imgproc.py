#!/usr/bin/env python

from __future__ import print_function

import numpy as np
import cv2 as cv
try:
    from PIL import Image
except ImportError:
    Image = None

from tests_common import NewOpenCVTests

class Imgproc_Tests(NewOpenCVTests):

    def test_python_986(self):
        cntls = []
        img = np.zeros((100,100,3), dtype=np.uint8)
        color = (0,0,0)
        cnts = np.array(cntls, dtype=np.int32).reshape((1, -1, 2))
        try:
            cv.fillPoly(img, cnts, color)
            assert False
        except:
            assert True

    def test_filter2d(self):
        img = self.get_sample('samples/data/lena.jpg', 1)
        eps = 0.001
        # compare 2 ways of computing 3x3 blur using the same function
        kernel = np.array([[1, 1, 1], [1, 1, 1], [1, 1, 1]], dtype='float32')
        img_blur0 = cv.filter2D(img, cv.CV_32F, kernel*(1./9))
        img_blur1 = cv.filter2Dp(img, kernel, ddepth=cv.CV_32F, scale=1./9)
        self.assertLess(cv.norm(img_blur0 - img_blur1, cv.NORM_INF), eps)

    def test_resize_pillow(self):
        if Image is None:
            self.skipTest("Pillow is not available")

        r = np.random.randint(0, 255, size=(128, 147, 3), dtype="uint8")
        target_size=[(128,128), (129,129), (160,160)]
        for ts in target_size:

            pil_result = np.array(Image.fromarray(r).resize(ts, Image.NEAREST))
            ocv_result = cv.resize(r, dsize=ts, interpolation=cv.INTER_NEAREST_EXACT)
            status = np.all(pil_result == ocv_result)
            print(ts, status)
            self.assertTrue(status, "resize result differs from Pillow for target size %s" % (ts,))

    def test_puttext_wrap_word_boundary(self):
        # FontFace putText with PUT_TEXT_WRAP should soft-wrap at spaces when possible.
        if not hasattr(cv, 'FontFace') or not hasattr(cv, 'PUT_TEXT_WRAP'):
            self.skipTest("FontFace / HarfBuzz text API not available")
        try:
            sans = cv.FontFace("sans")
        except cv.error:
            self.skipTest("built-in sans font not available")

        text = "word wrap keeps phrases intact"
        size, weight = 28, 400
        org = (10, 40)
        canvas_w, canvas_h = 220, 200

        def rect_xywh(r):
            if hasattr(r, 'width'):
                return int(r.x), int(r.y), int(r.width), int(r.height)
            return int(r[0]), int(r[1]), int(r[2]), int(r[3])

        flags = int(cv.PUT_TEXT_ALIGN_LEFT) | int(cv.PUT_TEXT_WRAP)
        wrapped = cv.getTextSize((canvas_w, canvas_h), text, org, sans, size, weight, flags)
        nowrap = cv.getTextSize((0, 0), text, org, sans, size, weight, int(cv.PUT_TEXT_ALIGN_LEFT))
        wx, _, ww, wh = rect_xywh(wrapped)
        _, _, _, nh = rect_xywh(nowrap)

        self.assertGreater(ww, 0)
        self.assertGreater(wh, nh)  # wrapped taller than single line
        self.assertLessEqual(wx + ww, canvas_w)

        img = np.full((canvas_h, canvas_w, 3), 255, dtype=np.uint8)
        cv.putText(img, text, org, (0, 0, 0), sans, size, weight, flags)
        self.assertLess(float(img.mean()), 255.0)

    def test_warp_reject_nd_input(self):
        # https://github.com/opencv/opencv/issues/29589
        batch = np.zeros((4, 3, 5, 3), dtype=np.uint8)
        map_x, map_y = np.meshgrid(np.arange(5, dtype=np.float32), np.arange(3, dtype=np.float32))
        affine = np.eye(2, 3, dtype=np.float32)
        perspective = np.eye(3, dtype=np.float32)

        with self.assertRaises(cv.error):
            cv.remap(batch, map_x, map_y, cv.INTER_NEAREST)
        with self.assertRaises(cv.error):
            cv.warpAffine(batch, affine, (5, 3), flags=cv.INTER_NEAREST)
        with self.assertRaises(cv.error):
            cv.warpPerspective(batch, perspective, (5, 3), flags=cv.INTER_NEAREST)

        # a single HWC image is still accepted
        res = cv.remap(batch[0], map_x, map_y, cv.INTER_NEAREST)
        self.assertEqual(res.shape, (3, 5, 3))
