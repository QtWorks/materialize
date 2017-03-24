import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1

Rectangle {

    // set up a default height to work in the designer
    width: 1450
    height: 768
    color: "#f7f7f7"
    opacity: 1

    GridLayout {
        id: gridLayout
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        columnSpacing: 0
        rowSpacing: 0
        rows: 3
        columns: 3
        anchors.fill: parent

        Rectangle {
            id: menuArea
            width: 200
            height: 200
            border.width: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumHeight: 52

            Layout.row: 0
            Layout.columnSpan: 3
            Layout.rowSpan: 1

            ToolBar {
                id: toolBar
                anchors.fill: parent
            }
        }

        Rectangle {
            id: categoryArea
            width: 200
            height: 200
            color: "#f3f3f3"
            border.width: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 250
            Layout.maximumWidth: 250
            Layout.row: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 2

            CategoryComponent { }
        }

        Rectangle {
            id: textureNameArea
            color: "#f7f7f7"
            Layout.minimumHeight: 80
            Layout.maximumHeight: 80
            Layout.rowSpan: 1
            Layout.columnSpan: 1
            Layout.row: 1
            Layout.column: 1
            Layout.fillWidth: true

            Text {
                id: resultsText
                text: qsTr("Text")
                renderType: Text.NativeRendering
                anchors.rightMargin: 24
                rightPadding: 0
                leftPadding: 0
                font.weight: Font.Normal
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 24
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.topMargin: 0
                Layout.preferredWidth: 7
                Layout.fillWidth: false
                Layout.minimumHeight: 11
                Layout.fillHeight: false
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.preferredHeight: 13
                Layout.minimumWidth: 11
                font.pixelSize: 24
            }
        }

        Rectangle {
            id: textureArea
            width: 200
            height: 200
            color: "#f7f7f7"
            z: -10
            border.width: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.column: 1

            TextureGridComponent { }
        }

        Rectangle {
            id: materialArea
            width: 200
            height: 200
            color: "#f7f7f7"
            border.width: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 2
            Layout.row: 1
            Layout.column: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 250
            Layout.maximumWidth: 250
        }
    }
}
