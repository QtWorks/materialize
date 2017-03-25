import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.1
import QtQuick.Dialogs 1.2

Item {

    id: searchDirectoryComponent
    GridLayout {
        id: searchDirectoryGrid
        columns: 1
        columnSpacing: 0
        rowSpacing: 0
        rows: 2
        anchors.fill: parent


        ListView {
            Layout.row: 0
            id: searchDirectoryList
            Layout.preferredHeight: 100
            z: 0
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            anchors.fill: parent
            delegate: Item {
                x: 5
                width: 80
                height: 40
                Row {
                    id: row1
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                    spacing: 10
                }
            }
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
        }
        Button {
            Layout.row: 1
            id: addDirectoryButton
            text: qsTr("Add")
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: {
                var component = Qt.createComponent("SelectFolderComponent.qml");
                var win = component.createObject(root);
                win.show();
            }
        }
    }

}
