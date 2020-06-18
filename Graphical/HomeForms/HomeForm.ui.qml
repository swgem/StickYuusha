import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    anchors.fill: parent

    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#5d1866"

        Text {
            id: txtGameName
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: parent.height / 4
            text: qsTr("Stick Yuusha")
            styleColor: "#000000"
            font.pointSize: 30
        }

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height / 11
            width: parent.width / 6
            height: parent.height * 3 / 8
            spacing: height / 11

            Button {
                id: btnStart
                width: parent.width
                height: parent.height * 3 / 11
                text: qsTr("Start")
            }

            Button {
                id: btnLoad
                width: parent.width
                height: parent.height * 3 / 11
                text: qsTr("Load")
            }

            Button {
                id: btnSettings
                width: parent.width
                height: parent.height * 3 / 11
                text: qsTr("Settings")
            }
        }
    }
}
