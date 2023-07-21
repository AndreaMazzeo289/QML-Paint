import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import CustomComponents
import QMLPaint

// IconButton.qml
Rectangle
{
    id: button_root

    property string imageSource
    property string labelText
    property string orientation
    property int iconSize
    property color labelColor
    property color gradientLeft
    property color gradientRight
    property color gradientLeftStop
    property color gradientRightStop

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

    gradient: Gradient
    {
        orientation: Gradient.Horizontal
        GradientStop
        {
            position: 0.0
            color: button_root.gradientLeft
        }
        GradientStop
        {
            position: 1.0
            color: button_root.gradientRight
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
            button_root.state = "selected"
            console.log("Clicked: " + button_root.state + ", color: " + button_root.gradientLeft)
        }
        onEntered:
        {
            if (button_root.state !== "selected")
            {
                button_root.state = "hovered"
            }

            console.log("Entered: " + button_root.state + ", color: " + button_root.gradientLeft)
        }
        onExited:
        {
            if (button_root.state !== "selected")
            {
                button_root.state = "default";
            }
            console.log("Exited: " + button_root.state + ", color: " + button_root.gradientLeft)
        }
    }

    states:
    [
        State
        {
            name: "selected"
            PropertyChanges
            {
                target: button_root;
                color: "white"
                gradientLeft: button_root.gradientLeftStop
                gradientRight: button_root.gradientRightStop
            }
        },
        State
        {
            name: "hovered"
            PropertyChanges
            {
                target: button_root;
                color: "#000000"
                opacity: 0.3
                gradientLeft: "#80000000"
                gradientRight: "#80000000"
            }
        },
        State
        {
            name: "default"
            PropertyChanges
            {
                target: button_root;
                color: "transparent"
                gradientLeft: "transparent"
                gradientRight: "transparent"
            }
        }
    ]

    state: "default"
}
