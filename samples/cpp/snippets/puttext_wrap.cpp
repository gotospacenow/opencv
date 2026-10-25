// This file is part of OpenCV project.
// It is subject to the license terms in the LICENSE file found in the top-level directory
// of this distribution and at http://opencv.org/license.html.

//! [puttext_wrap]
#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include <iostream>

using namespace cv;

/*
 * Demonstrates FontFace putText with PUT_TEXT_WRAP:
 * long phrases wrap at word boundaries inside a drawn column.
 */
int main()
{
    const Size canvas(640, 360);
    Mat img(canvas, CV_8UC3, Scalar(245, 245, 245));

    FontFace sans("sans");
    const int size = 28;
    const int weight = 400;
    const Scalar ink(30, 30, 30);
    const Scalar boxColor(200, 220, 255);

    const Rect column(40, 40, 280, 280);
    rectangle(img, column, boxColor, FILLED);
    rectangle(img, column, Scalar(120, 140, 180), 1);

    const String text =
        "OpenCV putText can wrap long phrases at word boundaries "
        "so captions stay readable inside a panel.";

    Point org(column.x + 12, column.y + size + 8);
    PutTextFlags flags = (PutTextFlags)(PUT_TEXT_ALIGN_LEFT | PUT_TEXT_WRAP);
    Range wrap(column.x + 12, column.x + column.width - 12);

    putText(img, text, org, ink, sans, size, weight, flags, wrap);

    putText(img, "PUT_TEXT_WRAP demo", Point(340, 60), ink, sans, 22, 600);

    imshow("putText wrap", img);
    std::cout << "Press any key to exit\n";
    waitKey(0);
    return 0;
}
//! [puttext_wrap]
