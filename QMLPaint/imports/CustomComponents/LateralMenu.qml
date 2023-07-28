import QtQuick 2.15
import QtQuick.Controls 2.15
import QMLPaint
import CustomComponents
import QtQuick.Layouts 2.15

// lateralMenu.qml
Item
{
    anchors.fill: parent

    Rectangle
    {
        id: lateral_menu

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: Constants.lateralMenu_width

        color: Constants.lateralMenu_backgroundColor

        gradient: Gradient
        {
            orientation: Gradient.Horizontal
            GradientStop { position: 1.0; color: "#CCCCCC" }
            GradientStop { position: 0.8; color: "#DDDDDD" }
            GradientStop { position: 0.0; color: "#FFFFFF" }
        }

        ColumnLayout
        {
            anchors.fill: parent
            spacing: 0

            Loader
            {
                source: "LateralMenuItem.qml"
                onLoaded:
                {
                    item.source = "../../content/images/lateralMenu/back.png"
                    item.text = "Back"
                }
                Layout.topMargin: 5 * Constants.marginUnit
                Layout.bottomMargin: 2 * Constants.marginUnit
            }

            Rectangle
            {
                Layout.preferredHeight: 1
                color: Constants.lateralMenu_divisorColor
                Layout.preferredWidth: parent.width - 50
                Layout.alignment: Qt.AlignHCenter
            }

            Loader
            {
                source: "LateralMenuItem.qml"
                onLoaded:
                {
                    item.source = "../../content/images/lateralMenu/new-file.png"
                    item.text = "New file"
                }
                Layout.topMargin: 2 * Constants.marginUnit
            }

            Loader
            {
                source: "LateralMenuItem.qml"
                onLoaded:
                {
                    item.source = "../../content/images/lateralMenu/open-file.png"
                    item.text = "Open file"
                }
            }

            Loader
            {
                source: "LateralMenuItem.qml"
                onLoaded:
                {
                    item.source = "../../content/images/lateralMenu/save.png"
                    item.text = "Save"
                }
            }

            Loader
            {
                source: "LateralMenuItem.qml"
                onLoaded:
                {
                    item.source = "../../content/images/lateralMenu/save-as.png"
                    item.text = "Save as"
                }
            }

            Item { Layout.fillHeight: true }


            Rectangle
            {
                Layout.preferredHeight: 1
                color: Constants.lateralMenu_divisorColor
                Layout.preferredWidth: parent.width - 50
                Layout.alignment: Qt.AlignHCenter
            }

            Loader
            {
                source: "LateralMenuItem.qml"
                onLoaded:
                {
                    item.source = "../../content/images/lateralMenu/settings.png"
                    item.text = "Settings"
                }
                Layout.topMargin: 2 * Constants.marginUnit
                Layout.bottomMargin: 5 * Constants.marginUnit
            }

        }
    }
    /*
    Rectangle
    {
        color: "#000000"
        anchors.top: parent.top
        anchors.left: lateral_menu.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        opacity: 0.5
    }
    */
}
