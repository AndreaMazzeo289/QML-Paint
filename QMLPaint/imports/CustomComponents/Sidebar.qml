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

    Component
    {
        id: color_sector_button

        Rectangle
        {
            id: component_root

            property color gradientStart

            anchors.fill: parent

            Rectangle
            {
                id: hover_selector

                anchors.fill: parent
                anchors.margins: 1

                color: "transparent"
                border.color: "white"
                border.width: 1
                visible: false
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                onEntered:
                {
                    hover_selector.visible = true
                    border.color = "#000000"
                    border.width = 1
                }
                onExited:
                {
                    hover_selector.visible = false
                    border.width = 0
                }
                onClicked:
                {
                    color_picker_preview.gradientLow = component_root.color
                    color_picker_preview.gradientHigh = component_root.gradientStart
                }
            }
        }
    }

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

                property color gradientLow
                property color gradientHigh

                gradient: Gradient
                {
                    orientation: Gradient.Vertical
                    GradientStop
                    {
                        position: 0.0
                        color: color_picker_preview.gradientLow
                    }
                    GradientStop
                    {
                        position: 1.0
                        color: color_picker_preview.gradientHigh
                    }
                }
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
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_white
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_lightgray
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_darkgray
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_black
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_darkred
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_red
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }

            // Second row
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_orange
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_darkyellow
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_beidge
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_yellow
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_limegreen
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_green
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }

            // Third row
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_cyan
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_blue
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_purple
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_magenta
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_pink
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded:
                {
                    item.color = Constants.sidebar_brown
                    item.gradientStart = Qt.lighter(item.color, 0.6)
                }
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
