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

    readonly property color backgroundColor: "#c2c2c2"

    //-----------------------------------------------------------------------//
    // General
    //-----------------------------------------------------------------------//
    readonly property int marginUnit: 5

    //-----------------------------------------------------------------------//
    // Toolbar
    //-----------------------------------------------------------------------//
    readonly property int toolbar_height: 80
    readonly property string toolbar_backgroundColor: "#363941"
    readonly property string toolbar_textColor: "#EAEBED"
    readonly property int toolbar_iconSize: 32

    //-----------------------------------------------------------------------//
    // Secondary Toolbar
    //-----------------------------------------------------------------------//
    readonly property int secondaryToolbar_height: 60
    readonly property string secondaryToolbar_backgroundColor: "#EAEBED"

    //-----------------------------------------------------------------------//
    // Secondary Toolbar
    //-----------------------------------------------------------------------//
    readonly property int sidebar_width: 250
    readonly property string sidebar_backgroundColor: "#F0F2F3"


    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../../content/" + relativeFontDirectory)
    }
}
