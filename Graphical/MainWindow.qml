import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Stick Yuusha")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/Home.qml")
    }
}
