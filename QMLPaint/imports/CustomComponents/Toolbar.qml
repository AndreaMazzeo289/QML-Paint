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
    color: Constants.toolbar_backgroundColor

    // Defaul button
    Component
    {
        id: toolbar_item_component

        IconButton
        {
            id: button

            labelColor: Constants.toolbar_textColor
            orientation: "Vertical"
            iconSize: 24
            width: Constants.toolbar_height
            height: Constants.toolbar_height
            gradientLeft: Constants.toolbar_gradientLeft
            gradientRight: Constants.toolbar_gradientRight
            gradientHover: Constants.toolbar_gradientHover
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
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/menu.png"
                item.labelText = "Menu"
            }
        }

        Item { Layout.fillWidth: true }

        // 1. Tools
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/tools.png"
                item.labelText = "Tools"
            }
        }

        // 2. Shapes
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/shape.png"
                item.labelText = "Shapes"
            }
        }

        // 3. Text
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/text.png"
                item.labelText = "Text"
            }
        }

        // 4. Effects
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/effects.png"
                item.labelText = "Effects"
            }
        }

        // 5. Frame
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/frame.png"
                item.labelText = "Frame"
            }
        }

        Item { Layout.fillWidth: true }

        // 6. Undo
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/undo.png"
                item.labelText = "Undo"
            }
        }

        // 7. Redo
        Loader
        {
            sourceComponent: toolbar_item_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/redo.png"
                item.labelText = "Redo"
            }
        }
    }
}

