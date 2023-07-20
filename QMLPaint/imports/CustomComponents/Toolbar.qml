import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import QMLPaint
import CustomComponents

// Toolbar.qml
Rectangle
{
    width: parent.width
    height: Constants.toolbar_height
    color: "#ffffff"
    border.color: "#ffffff"

    // Defaul button
    Component
    {
        id: toolbar_item

        Rectangle
        {
            height: Constants.toolbar_height
            width: Constants.toolbar_height

            color: "transparent"

            property alias source: icon.source
            property alias text: iconText.text

            ColumnLayout
            {
                id: inner_layout
                anchors.centerIn: parent
                spacing: 0

                Item { Layout.fillHeight: true }

                Image
                {
                    id: icon
                    Layout.preferredHeight: Constants.toolbar_iconSize
                    Layout.preferredWidth: Constants.toolbar_iconSize
                    fillMode: Image.PreserveAspectFit
                    Layout.alignment: Qt.AlignHCenter
                }

                Item { Layout.preferredHeight: Constants.marginUnit }

                CustomText
                {
                    id: iconText
                    Layout.alignment: Qt.AlignHCenter
                    color: Constants.toolbar_textColor
                }

                Item { Layout.fillHeight: true }
            }
        }
    }

    RowLayout
    {
        id: toolbar_container

        anchors.fill: parent
        spacing: 0

        // 0. Menu
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/menu.png"
                item.text = "Menu"
            }
        }

        Item { Layout.fillWidth: true }

        // 1. Tools
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/tools.png"
                item.text = "Tools"
            }
        }

        // 2. Shapes
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/shape.png"
                item.text = "Shapes"
            }
        }

        // 3. Text
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/text.png"
                item.text = "Text"
            }
        }

        // 4. Effects
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/effects.png"
                item.text = "Effects"
            }
        }

        // 5. Frame
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/frame.png"
                item.text = "Frame"
            }
        }

        Item { Layout.fillWidth: true }

        // 6. Undo
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/undo.png"
                item.text = "Undo"
            }
        }

        // 7. Redo
        Loader
        {
            sourceComponent: toolbar_item
            onLoaded:
            {
                item.source = "../../content/images/toolbar/redo.png"
                item.text = "Redo"
            }
        }
    }
}

