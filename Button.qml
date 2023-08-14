import QtQuick 1.1

Rectangle {
    id: container
    width: 100
    height: 30
    radius: 15
    signal clicked
    property string text: "Button"
    gradient: Gradient {
        GradientStop {
            position: 0
            color: "#ffffff"
        }

        GradientStop {
            position: 1
            color: "#000000"
        }
    }

    MouseArea {
        id: mouseArea1
        anchors.fill: parent
        onClicked: container.clicked();
    }

    Text {
        id: text1
        x: 32
        y: 24
        text: container.text
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
    }
}
