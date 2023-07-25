import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QMLPaint
import CustomComponents

Item
{
    id: root

    width: parent.width
    height: Constants.slider_height

    property int minValuePercentage: 0
    property int maxValuePercentage: 100
    property int minValuePixel: 5
    property int maxValuePixel: 200
    property bool isPercentageType: true // Set to false for pixel type
    property int sliderValue: isPercentageType ? minValuePercentage : minValuePixel

    property alias text : slider_label_text.text

    RowLayout
    {
        id: slider_label

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 3 * Constants.marginUnit

        height: implicitHeight

        CustomText
        {
            id: slider_label_text
            Layout.preferredHeight: Constants.slider_labelHeight
            verticalAlignment: Text.AlignVCenter
        }

        Item { Layout.fillWidth: true }

        Rectangle
        {
            Layout.preferredWidth: Constants.slider_labelWidth
            Layout.preferredHeight: Constants.slider_labelHeight

            border.color: Constants.slider_labelSecondaryColor
            border.width: 1

            CustomText
            {
                id: slider_value_box
                anchors.centerIn: parent
                text: isPercentageType ? sliderValue + "%" : sliderValue + "px"
            }
        }
    }

    Slider
    {
        id: slider
        anchors.top: slider_label.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 3 * Constants.marginUnit

        height: Constants.slider_barHeight
        from: isPercentageType ? minValuePercentage : minValuePixel
        to: isPercentageType ? maxValuePercentage : maxValuePixel
        stepSize: 1
        value: sliderValue

        background: Rectangle
        {
            anchors.verticalCenter: slider.verticalCenter
            radius: height / 2
            color: Constants.slider_labelSecondaryColor
            height: 3
        }

        Rectangle
        {
            id: background_left
            anchors.verticalCenter: slider.verticalCenter
            anchors.left: parent.left
            radius: height / 2
            color: Constants.blue
            height: 3
            width: handle.x
        }

        handle: Rectangle
        {
            width: 6
            height: parent.height
            radius: height / 2
            color: Constants.blue
        }

        onValueChanged:
        {
            sliderValue = value
            slider_value_box.text = isPercentageType ? value + "%" : value + "px"
            handle.x = (slider.width - handle.width) * (value - slider.from) / (slider.to - slider.from)
            background_left.width = handle.x
        }
    }
}
