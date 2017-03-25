import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3


Window {
    visible: true
    width: 1000
    height: 600
    title: qsTr("Materialize Settings")

    GridLayout {
        id: gridLayout
        columnSpacing: 24
        rowSpacing: 0
        columns: 2
        anchors.rightMargin: 24
        anchors.leftMargin: 24
        anchors.bottomMargin: 24
        anchors.topMargin: 24
        anchors.fill: parent

        ListView {
            id: settingsList
            x: 0
            y: 0
            width: 110
            height: 160
            Layout.minimumWidth: 200
            Layout.maximumWidth: 200
            Layout.maximumHeight: 65535
            Layout.fillHeight: true
            Layout.fillWidth: false
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

        StackLayout {
            id: settingsStack
            width: 100
            height: 100
            currentIndex: 0

            SearchDirectoryComponent {
                id: searchDirectoryComponent
            }
        }
    }

}
