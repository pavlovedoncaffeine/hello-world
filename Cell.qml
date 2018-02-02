import QtQuick 2.10
//import QtQuick.Window 2.10

//------------------------------------------------------------------------------------------------

// Hello World tutorial 1

//Rectangle {
//    id: page                        //id for the rectangle to refer to it later
//    width: 1920; height: 1080       //dimensions of window
//    color: "red"

//    Text {
//        id: helloText               // id for label text
//        text: "Hello, welcome to your first qml  tutorial!"
//        //y: 500
//        anchors.verticalCenter: page.verticalCenter     // vertically aligned and centered
//        anchors.horizontalCenter: page.horizontalCenter // horizontally aligned and centered
//        font.pointSize: 26; font.bold: true
//    }
//}
//------------------------------------------------------------------------------------------------


Item {
    id: container
    property alias cellColor: rectangle.color
    signal clicked(color cellColor)

    width: 40; height: 15

    Rectangle  {
        id: rectangle
        border.color: "black"
        anchors.fill: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked(container.cellColor)
    }
}
