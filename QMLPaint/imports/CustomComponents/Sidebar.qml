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

    function darkerColor(color)
    {
        print ("hue: " + color.hue)
        print ("saturation: " + color.saturation)
        print ("lightness: " + color.lightness)
        print ("alpha: " + color.alpha)

        var hslColor = Qt.hsla(color.hue, color.saturation, color.lightness * 0.5, color.alpha);
        return hslColor;
    }

    function lighterColor(color)
    {
        var hslColor = Qt.hsla(color.hue, color.saturation, color.lightness * 1.5, color.alpha);
        return hslColor;
    }

    Component
    {
        id: color_sector_button

        Rectangle
        {
            id: component_root

            property color gradientLow
            property color gradientHigh

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
                onEntered: hover_selector.visible = true
                onExited: hover_selector.visible = false
                onClicked:
                {
                    let darker_color = darkerColor(component_root.color)
                    let lighter_color = lighterColor(component_root.color)

                    console.log("darker: " + darker_color)
                    console.log("lighter: " + lighter_color)

                    color_picker_preview.gradientLow = darker_color
                    color_picker_preview.gradientHigh = lighter_color
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
                onLoaded: item.color = Constants.sidebar_white
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_lightgray
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_darkgray
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_black
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_darkred
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_lightred
            }


            // Second row
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_orange
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_darkyellow
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_beidge
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_yellow
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_limegreen
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_green
            }

            // Third row
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_cyan
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_blue
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_purple
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_magenta
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_pink
            }
            Loader
            {
                Layout.preferredHeight: color_selector_grid.width / color_selector_grid.columns
                Layout.preferredWidth: color_selector_grid.width / color_selector_grid.columns
                sourceComponent: color_sector_button
                onLoaded: item.color = Constants.sidebar_brown
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
