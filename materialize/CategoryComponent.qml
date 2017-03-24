import QtQuick 2.6

ListView {
    id: categoryListView
    anchors.bottomMargin: 0
    anchors.rightMargin: 0
    anchors.topMargin: 24
    anchors.fill: parent
    spacing: 35
    delegate: Item {
        anchors.left: parent.left
        anchors.right: parent.right
        Row {
            id: categoryList
            Text {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 25
                anchors.rightMargin: 25
                text: name
                font.family: "Lato"
                font.pointSize: 12
                anchors.verticalCenter: parent.verticalCenter
                antialiasing: true
            }
        }
    }
    model: ListModel {
        ListElement {
            name: "Grey"
        }

        ListElement {
            name: "Red"
        }

        ListElement {
            name: "Blue"
        }

        ListElement {
            name: "Green"
        }
    }
}
