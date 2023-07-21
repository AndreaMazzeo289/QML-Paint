import QtQuick 2.15
import QtQuick.Controls 2.15
import QMLPaint
import CustomComponents

Rectangle
{
    color: "lightgray"

    IconButton
    {
        anchors.centerIn: parent

        imageSource: "../../content/images/toolbar/effects.png"
        labelText: "Test"
        labelColor: Constants.toolbar_textColor
        orientation: "Vertical"
        iconSize: 24
        width: 60 // 100
        height: 60 // 60
        gradientLeftStop: "#0164B6"
        gradientRightStop: "#6553E6"
    }

}
