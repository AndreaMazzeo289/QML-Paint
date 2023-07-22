pragma Singleton
import QtQuick 6.4
import QtQuick.Studio.Application

QtObject {
    readonly property int width: 1920
    readonly property int height: 1080

    property string relativeFontDirectory: "fonts"

    readonly property FontLoader systemFont: FontLoader { source: "../../content/fonts/Inter-Light.ttf"}

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: systemFont.name,
                                             pixelSize: Qt.application.font.pixelSize,
                                             letterSpacing: 1.5
                                         })

    readonly property font largeFont: Qt.font({
                                                  family: systemFont.name,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6,
                                                  letterSpacing: 1.5
                                              })

    //-----------------------------------------------------------------------//
    // General
    //-----------------------------------------------------------------------//
    readonly property int marginUnit: 5
    readonly property color backgroundColor: "#C2C5C2"

    //-----------------------------------------------------------------------//
    // Toolbar
    //-----------------------------------------------------------------------//
    readonly property int toolbar_height: 80
    readonly property color toolbar_backgroundColor: "#363941"
    readonly property color toolbar_textColor: "#EAEBED"
    readonly property int toolbar_iconSize: 32
    readonly property color toolbar_gradientLeft: "#0164B6"
    readonly property color toolbar_gradientRight: "#6553E6"
    readonly property color toolbar_gradientHover: "#70FFFFFF"

    //-----------------------------------------------------------------------//
    // Secondary Toolbar
    //-----------------------------------------------------------------------//
    readonly property int secondaryToolbar_height: 60
    readonly property color secondaryToolbar_backgroundColor: "#EAEBED"
    readonly property color secondaryToolbar_gradientLeft: "#9AACBA"
    readonly property color secondaryToolbar_gradientRight: "#D4D2F0"
    readonly property color secondaryToolbar_gradientHover: "#70000000"

    //-----------------------------------------------------------------------//
    // Sidebar
    //-----------------------------------------------------------------------//
    readonly property int sidebar_width: 300
    readonly property color sidebar_backgroundColor: "#F0F2F3"
    readonly property int slider_height: 100
    readonly property int slider_labelHeight: 40
    readonly property int slider_labelWidth: 60
    readonly property color slider_labelSecondaryColor: "#BBBCBC"
    readonly property int slider_barHeight: 22

    // Default colors
    //----------------//
    readonly property color sidebar_white: Qt.rgba(1, 1, 1, 1)
    readonly property color sidebar_lightgray: Qt.rgba(0.7647, 0.7647, 0.7647, 1)
    readonly property color sidebar_darkgray: Qt.rgba(0.3450, 0.3450, 0.3450, 1)
    readonly property color sidebar_black: Qt.rgba(0, 0, 0, 1)
    readonly property color sidebar_darkred: Qt.rgba(0.5333, 0, 0.1058, 1)
    readonly property color sidebar_lightred: Qt.rgba(0.9254, 0.1098, 0.1411, 1)
    readonly property color sidebar_orange: Qt.rgba(1, 0.4901, 0.1529, 1)
    readonly property color sidebar_darkyellow: Qt.rgba(1, 0.7921, 0.0941, 1)
    readonly property color sidebar_beidge: Qt.rgba(0.9921, 0.9254, 0.6509, 1)
    readonly property color sidebar_yellow: Qt.rgba(1, 0.9490, 0, 1)
    readonly property color sidebar_limegreen: Qt.rgba(0.7686, 1, 0.0549, 1)
    readonly property color sidebar_green: Qt.rgba(0.0549, 0.8196, 0.2705, 1)
    readonly property var sidebar_cyan: Qt.hsla(0.6941, 1, 0.78, 1) //Qt.rgba(0.5490, 1, 0.9843, 1)
    readonly property color sidebar_blue: Qt.rgba(0, 0.6588, 0.9529, 1)
    readonly property color sidebar_purple: Qt.rgba(0.2470, 0.2823, 0.8, 1)
    readonly property color sidebar_magenta: Qt.rgba(0.7215, 0.2392, 0.7294, 1)
    readonly property color sidebar_pink: Qt.rgba(1, 0.6823, 0.7843, 1)
    readonly property color sidebar_brown: Qt.rgba(0.7254, 0.4784, 0.3372, 1)

    //-----------------------------------------------------------------------//
    // Colors
    //-----------------------------------------------------------------------//
    readonly property color blue: "#0064B6"

    //-----------------------------------------------------------------------//
    // Lateral Menu
    //-----------------------------------------------------------------------//
    readonly property int lateralMenu_width: 400
    readonly property color lateralMenu_backgroundColor: "#BABBBC"
    readonly property color lateralMenu_hoveredItem: "#ABACB2"
    readonly property color lateralMenu_textColor: "#222255"
    readonly property color lateralMenu_divisorColor: "#B0B1B2"
    readonly property int lateralMenu_heightItem: 50
    readonly property color lateralMenu_overlayColor: "#000000"
    readonly property int lateralMenu_overlayOpacity: 50


    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../../content/" + relativeFontDirectory)
    }
}
