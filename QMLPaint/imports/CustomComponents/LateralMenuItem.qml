import QtQuick 2.15
import QtQuick.Controls 2.15
import QMLPaint
import CustomComponents
import QtQuick.Layouts 2.15

// LateralMenuItem.qml
Item
{
    id: root

    height: Constants.lateralMenu_heightItem
    width: Constants.lateralMenu_width

    property bool selected: false
    property string source
    property string text

    RowLayout
    {
        anchors.fill: parent

        Rectangle
        {
            Layout.preferredHeight: parent.height / 2
            Layout.preferredWidth: 7
            Layout.alignment: Qt.AlignVCenter
            color: root.selected ? Constants.blue : "transparent"
        }

        Image
        {
            id: icon
            Layout.preferredHeight: 16
            Layout.preferredWidth: 16
            fillMode: Image.PreserveAspectFit
            Layout.leftMargin: 4 * Constants.marginUnit
            Layout.rightMargin: 3 * Constants.marginUnit
            source: root.source
        }

        CustomText
        {
            id: label_text
            font.pixelSize: Constants.largeFont.pixelSize
            color: Constants.lateralMenu_textColor
            text: root.text
        }

        Item { Layout.fillWidth: true }
    }
}
