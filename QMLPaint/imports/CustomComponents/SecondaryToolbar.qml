import QtQuick 2.15
import QtQuick.Controls 2.15
import QMLPaint
import QtQuick.Layouts
import CustomComponents

// SecondarToolbar.qml
Rectangle
{
    height: Constants.secondaryToolbar_height
    color: Constants.secondaryToolbar_backgroundColor

    property int zoomValue: 0

    RowLayout
    {
        anchors.fill: parent

        IconButton
        {
            id: select_button

            labelColor: Constants.lateralMenu_textColor
            orientation: "Horizontal"
            iconSize: 24
            Layout.preferredWidth: 115
            Layout.preferredHeight: parent.height
            gradientLeft: Constants.secondaryToolbar_gradientLeft
            gradientRight: Constants.secondaryToolbar_gradientRight
            gradientHover: Constants.secondaryToolbar_gradientHover
            imageSource: "../../content/images/lateralMenu/cursor.png"
            labelText: "Select"
        }

        Item { Layout.fillWidth: true }

        Item
        {
            Layout.preferredHeight: Constants.secondaryToolbar_height
            Layout.preferredWidth: Constants.secondaryToolbar_height

            Image
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                height: 16
                width: 16
                source: "../../content/images/lateralMenu/minus.png"
            }
        }

        Slider
        {
            id: slider

            Layout.preferredWidth: 150
            Layout.preferredHeight: Constants.slider_barHeight
            from: 0
            to: 100
            stepSize: 1
            value: zoomValue

            background: Rectangle
            {
                anchors.verticalCenter: slider.verticalCenter
                radius: height / 2
                color: Constants.slider_labelSecondaryColor
                height: 3
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
                zoomValue = value
                slider_value_box.text = value + "%"
            }
        }

        Item
        {
            Layout.preferredHeight: Constants.secondaryToolbar_height
            Layout.preferredWidth: Constants.secondaryToolbar_height

            Image
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                height: 16
                width: 16
                source: "../../content/images/lateralMenu/plus.png"
            }
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth: 1
            color: Constants.lateralMenu_divisorColor
        }

        Item
        {
            Layout.preferredHeight: Constants.secondaryToolbar_height
            Layout.preferredWidth: Constants.secondaryToolbar_height

            CustomText
            {
                id: slider_value_box
                anchors.centerIn: parent
                text: zoomValue + "%"
                color: Constants.lateralMenu_textColor
            }
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth: 1
            color: Constants.lateralMenu_divisorColor
        }
    }

}
