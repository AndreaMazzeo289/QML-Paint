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

    Component
    {
        id: zoom_control_button

        Item
        {
            anchors.fill: parent

            property alias source : button_icon.source

            Image
            {
                id: button_icon

                anchors.centerIn: parent
                height: 16
                width: 16
                source: "../../content/images/lateralMenu/minus.png"
            }

            Rectangle
            {
                id: button_background

                anchors.fill: parent
                color: "transparent"
                opacity: 1
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                onEntered:
                {
                    button_background.color = "#000000"
                    button_background.opacity = 0.2
                }
                onExited:
                {
                    button_background.color = "transparent"
                    button_background.opacity = 1
                }
                onPressed:
                {
                    button_background.color = "#000000"
                    button_background.opacity = 0.4
                }
                onReleased:
                {
                    button_background.color = "#000000"
                    button_background.opacity = 0.2
                }
            }
        }
    }

    RowLayout
    {
        anchors.fill: parent
        spacing: 0

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

        Loader
        {
            id: minus_button

            Layout.preferredHeight: Constants.secondaryToolbar_height
            Layout.preferredWidth: Constants.secondaryToolbar_height

            sourceComponent: zoom_control_button
            onLoaded:
            {
                item.source = "../../content/images/lateralMenu/minus.png"
            }
        }

        Slider
        {
            id: slider

            Layout.preferredWidth: 150
            Layout.preferredHeight: Constants.slider_barHeight
            Layout.leftMargin: 2 * Constants.marginUnit
            Layout.rightMargin: 2 * Constants.marginUnit
            from: 0
            to: 100
            stepSize: 1
            value: zoomValue

            property var sliderPosition : handle.x

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
                width: slider.sliderPosition
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
                slider.handle.x = (slider.width - slider.handle.width) * (value - slider.from) / (slider.to - slider.from)
                slider.sliderPosition = slider.handle.x
            }
        }

        Loader
        {
            id: plus_button

            Layout.preferredHeight: Constants.secondaryToolbar_height
            Layout.preferredWidth: Constants.secondaryToolbar_height

            sourceComponent: zoom_control_button
            onLoaded:
            {
                item.source = "../../content/images/lateralMenu/plus.png"
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
