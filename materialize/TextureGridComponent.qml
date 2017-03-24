import QtQuick 2.0
import QtQuick.Layouts 1.3

GridView {
    id: textureGridView
    keyNavigationWraps: true
    clip: false
    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
    Layout.rowSpan: 1
    anchors.topMargin: 0
    cellWidth: 220
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    cellHeight: 270
    anchors.right: parent.right
    anchors.rightMargin: 24
    anchors.leftMargin: 24
    Layout.columnSpan: 1


    model: ListModel {
        ListElement {
            name: "Grey"
            colorCode: "grey"
        }

        ListElement {
            name: "Red"
            colorCode: "red"
        }

        ListElement {
            name: "Blue"
            colorCode: "blue"
        }

        ListElement {
            name: "Green"
            colorCode: "green"
        }
    }
    anchors.top: parent.top
    delegate:
    Rectangle{
        width: 200
        height: 250
        color: "white"
        ColumnLayout {
            spacing: 0
            anchors.fill: parent
            Rectangle{
                color: "gray"
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                height: 200
                Layout.fillWidth: true
                Image {
                    anchors.fill: parent
                }
            }

            Text {
                text: name
                font.family: "Lato"
                font.pointSize: 12
                Layout.fillHeight: true
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                Layout.leftMargin: 12
                Layout.rightMargin: 12
                color: "#585858"
            }
        }
    }
}


