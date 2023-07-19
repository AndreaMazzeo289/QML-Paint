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

    //-----------------------------------------------------------------------//
    // Secondary Toolbar
    //-----------------------------------------------------------------------//
    readonly property int secondaryToolbar_height: 60
    readonly property color secondaryToolbar_backgroundColor: "#EAEBED"

    //-----------------------------------------------------------------------//
    // Secondary Toolbar
    //-----------------------------------------------------------------------//
    readonly property int sidebar_width: 250
    readonly property color sidebar_backgroundColor: "#F0F2F3"
    readonly property int slider_height: 100
    readonly property int slider_labelHeight: 40
    readonly property int slider_labelWidth: 60
    readonly property color slider_labelSecondaryColor: "#BBBCBC"
    readonly property int slider_barHeight: 22

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
    readonly property int lateralMenu_heightItem: 40
    readonly property color lateralMenu_overlayColor: "#000000"
    readonly property int lateralMenu_overlayOpacity: 50


    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../../content/" + relativeFontDirectory)
    }
}
