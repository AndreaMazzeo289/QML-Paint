import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QMLPaint
import CustomComponents

// Sidebar.qml
Rectangle
{
    width: Constants.sidebar_width
    color: Constants.sidebar_backgroundColor

    ColumnLayout
    {
        anchors.fill: parent
        anchors.margins: 4 * Constants.marginUnit
        spacing: 3 * Constants.marginUnit

        CustomText
        {
            text: "Pennelli"
            font.pixelSize: Constants.largeFont.pixelSize
            color: Constants.blue
        }

        CustomSlider
        {
            text: "Thickness"
            isPercentageType: false
        }

        CustomSlider
        {
            text: "Opacity"
            isPercentageType: true
        }

        Item { Layout.fillHeight: true }

        Rectangle
        {
            Layout.preferredHeight: 1
            Layout.preferredWidth: parent.width
            color: Constants.slider_labelSecondaryColor
        }

        RowLayout
        {
            id: color_picker

            Layout.preferredHeight: implicitHeight
            Layout.preferredWidth: parent.width

            Rectangle
            {
                id: color_picker_preview
                Layout.preferredHeight: 50
                Layout.fillWidth: true
            }

            Rectangle
            {
                id: color_picker_button
                Layout.preferredHeight: 50
                Layout.preferredWidth: 70
                color: "transparent"
                border.color: Constants.slider_labelSecondaryColor
                border.width: 1

                Image
                {
                    anchors.centerIn: parent
                    height: 20
                    width: 20
                    source: "../../content/images/toolbar/color-picker.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        GridLayout
        {
            id: color_selector_grid

            Layout.preferredHeight: implicitHeight
            Layout.preferredWidth: parent.width
            rowSpacing: 0
            columnSpacing: 0
            rows: 3
            columns: 6

            // First row
            Rectangle
            {
                color: "#ffffff"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#9d9d9d"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#3f3f3f"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#000000"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#6e0000"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#ff0000"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }

            // Second row
            Rectangle
            {
                color: "#ff5e00"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#fea000"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#f9e857"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#fffe00"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#b7ff01"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#22cc00"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }

            // Third row
            Rectangle
            {
                color: "#00ffe1"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#00c6f6"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#0076ff"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#c400ff"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#ff879d"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
            Rectangle
            {
                color: "#682900"
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
            }
        }

        Rectangle
        {
            color: "transparent"
            border.color: Constants.slider_labelSecondaryColor
            border.width: 1
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns

            Item
            {
                id: add_color_button

                height: parent.height
                width: parent.height

                Image
                {
                    anchors.centerIn: parent
                    height: 16
                    width: 16
                    source: "../../content/images/toolbar/add.png"
                }
            }
        }
    }
}
