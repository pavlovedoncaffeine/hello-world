import QtQuick 2.10
//import QtQuick.Window 2.10

Rectangle {
    id: page                        //id for the rectangle to refer to it later
    width: 1920; height: 1080       //dimensions of window
    color: "dark red"

    Text {
        id: helloText               // id for label text
        text: "Hello, welcome to your second qml  tutorial!"
        anchors.verticalCenter: page.verticalCenter     // vertically aligned and centered
        anchors.horizontalCenter: page.horizontalCenter // horizontally aligned and centered
        font.pointSize: 26; font.bold: true
        //onClicked: page.color = "white"
        MouseArea {
            anchors.fill: parent
            onClicked: helloText.text = "Changed your text! Good job!"
        }

    }

    Grid {
        id: colorPicker
        x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
        rows: 2; columns: 3; spacing: 3

        Cell { cellColor: "red"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "green"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "blue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "yellow"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "steelblue"; onClicked: helloText.color = cellColor }
        Cell { cellColor: "black"; onClicked: helloText.color = cellColor }
    }
}
