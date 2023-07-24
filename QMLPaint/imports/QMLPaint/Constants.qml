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
    readonly property color sidebar_white: "#FFFFFF";
    readonly property color sidebar_lightgray: "#C3C3C3";
    readonly property color sidebar_darkgray: "#585858";
    readonly property color sidebar_black: "#000000";
    readonly property color sidebar_darkred: "#88001B";
    readonly property color sidebar_red: "#EC1C24";
    readonly property color sidebar_orange: "#FF7F27";
    readonly property color sidebar_darkyellow: "#FFCA18";
    readonly property color sidebar_beidge: "#FDECA6";
    readonly property color sidebar_yellow: "#FFF200";
    readonly property color sidebar_limegreen: "#C4FF0E";
    readonly property color sidebar_green: "#0ED145";
    readonly property color sidebar_cyan: "#8CFFFB";
    readonly property color sidebar_blue: "#00A8F3";
    readonly property color sidebar_purple: "#3F48CC";
    readonly property color sidebar_magenta: "#B83DBA";
    readonly property color sidebar_pink: "#FFAEC8";
    readonly property color sidebar_brown: "#B97A56";

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
