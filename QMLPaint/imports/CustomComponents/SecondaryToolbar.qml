import QtQuick 2.15
import QtQuick.Controls 2.15
import QMLPaint
import QtQuick.Layouts
import CustomComponents

// SecondarToolbar.qml
Rectangle
{
    height: Constants.secondaryToolbar_height
    width: 1920
    color: Constants.secondaryToolbar_backgroundColor

    property int zoomValue: 0

    RowLayout
    {
        anchors.fill: parent

        Rectangle
        {
            id: select_button

            Layout.preferredHeight: parent.height
            Layout.preferredWidth: 115

            gradient: Gradient
            {
                orientation: Gradient.Horizontal
                GradientStop { position: 0.0; color: "#9AACBA" }
                GradientStop { position: 1.0; color: "#D4D2F0" }
            }

            Image
            {
                id: icon

                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 3 * Constants.marginUnit

                source: "../../content/images/lateralMenu/cursor.png"
                height: 16
                width: 16
            }

            CustomText
            {
                id: label

                anchors.right: parent.right
                anchors.rightMargin: 5 * Constants.marginUnit
                text: "Select"
                height: parent.height
                verticalAlignment: Text.AlignVCenter
            }
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
