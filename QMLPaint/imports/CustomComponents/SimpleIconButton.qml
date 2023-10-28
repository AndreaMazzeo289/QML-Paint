import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import CustomComponents
import QMLPaint

// SimpleIconButton.qml
Rectangle
{
    id: button_root

    property string imageSource
    property string labelText
    property string orientation
    property int iconSize
    property color labelColor

    signal iconButtonClicked()

    Component
    {
        id: vertical_layout

        ColumnLayout
        {
            anchors.fill: parent
            spacing: 0

            Item { Layout.fillHeight: true }

            Image
            {
                Layout.preferredHeight: button_root.iconSize
                Layout.preferredWidth: button_root.iconSize
                fillMode: Image.PreserveAspectFit
                Layout.alignment: Qt.AlignHCenter
                source: button_root.imageSource
            }

            Item { Layout.fillHeight: true }

            CustomText
            {
                Layout.alignment: Qt.AlignHCenter
                color: button_root.labelColor
                text: button_root.labelText
            }

            Item { Layout.fillHeight: true }
        }
    }

    Component
    {
        id: horizontal_layout

        RowLayout
        {
            anchors.fill: parent
            spacing: 0

            Item { Layout.fillWidth: true }

            Image
            {
                Layout.preferredHeight: button_root.iconSize
                Layout.preferredWidth: button_root.iconSize
                fillMode: Image.PreserveAspectFit
                Layout.alignment: Qt.AlignVCenter
                source: button_root.imageSource
            }

            Item { Layout.fillWidth: true }

            CustomText
            {
                Layout.alignment: Qt.AlignVCenter
                color: button_root.labelColor
                text: button_root.labelText
            }

            Item { Layout.fillWidth: true }
        }
    }

    Loader
    {
        anchors.fill: parent
        sourceComponent: button_root.orientation == "Vertical" ? vertical_layout : horizontal_layout
    }

    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true

        onClicked:
        {
            button_root.iconButtonClicked()
        }
        onPressed:
        {
            button_root.state = "pressed";
        }
        onEntered:
        {
            button_root.state = "hovered";
        }
        onExited:
        {
            button_root.state = "default";
        }
    }

    states:
    [
        State
        {
            name: "hovered"
            PropertyChanges
            {
                target: button_root;
                color: "#000000"
                opacity: 0.4
            }
        },
        State
        {
            name: "pressed"
            PropertyChanges
            {
                target: button_root;
                color: "#000000"
                opacity: 0.2
            }
        },
        State
        {
            name: "default"
            PropertyChanges
            {
                target: button_root;
                color: "transparent"
            }
        }
    ]

    state: "default"
}
