import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import QMLPaint
import CustomComponents

// Toolbar.qml
Rectangle
{
    id: toolbar_root

    width: parent.width
    height: Constants.toolbar_height
    color: Constants.toolbar_backgroundColor

    signal menuButtonPressed()
    signal toolSelected(string toolName)

    function disableButtonsExcept(enabledButton)
    {
        for(let i = 2; i < toolbar_container.children.length - 3; i++)
        {
            if (toolbar_container.children[i].item.labelText !== enabledButton)
                toolbar_container.children[i].item.state = "default";
        }
    }

    // Defaul button
    Component
    {
        id: toolbar_gradientButton_component

        GradientIconButton
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

    Component
    {
        id: toolbar_simpleButton_component

        SimpleIconButton
        {
            id: button

            labelColor: Constants.toolbar_textColor
            orientation: "Vertical"
            iconSize: 24
            width: Constants.toolbar_height
            height: Constants.toolbar_height
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
            sourceComponent: toolbar_simpleButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/menu.png"
                item.labelText = "Menu"
                item.iconButtonClicked.connect(function() { toolbar_root.menuButtonPressed() });
            }
        }

        Item { Layout.fillWidth: true }

        // 1. Tools
        Loader
        {
            sourceComponent: toolbar_gradientButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/tools.png"
                item.labelText = "Tools"
                item.iconButtonClicked.connect(function() { toolbar_root.toolSelected(item.labelText) });
            }
        }

        // 2. Shapes
        Loader
        {
            sourceComponent: toolbar_gradientButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/shape.png"
                item.labelText = "Shapes"
                item.iconButtonClicked.connect(function() { toolbar_root.toolSelected(item.labelText) });
            }
        }

        // 3. Text
        Loader
        {
            sourceComponent: toolbar_gradientButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/text.png"
                item.labelText = "Text"
                item.iconButtonClicked.connect(function() { toolbar_root.toolSelected(item.labelText) });
            }
        }

        // 4. Effects
        Loader
        {
            sourceComponent: toolbar_gradientButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/effects.png"
                item.labelText = "Effects"
                item.iconButtonClicked.connect(function() { toolbar_root.toolSelected(item.labelText) });
            }
        }

        // 5. Frame
        Loader
        {
            sourceComponent: toolbar_gradientButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/frame.png"
                item.labelText = "Frame"
                item.iconButtonClicked.connect(function() { toolbar_root.toolSelected(item.labelText) });
            }
        }

        Item { Layout.fillWidth: true }

        // 6. Undo
        Loader
        {
            sourceComponent: toolbar_simpleButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/undo.png"
                item.labelText = "Undo"
            }
        }

        // 7. Redo
        Loader
        {
            sourceComponent: toolbar_simpleButton_component
            onLoaded:
            {
                item.imageSource = "../../content/images/toolbar/redo.png"
                item.labelText = "Redo"
            }
        }
    }
}

