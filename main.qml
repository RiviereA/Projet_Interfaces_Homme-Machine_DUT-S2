import QtQuick 1.1
import "samegame.js" as SameGame

Rectangle {
    id: background
    width: 480
    height: 750    

    Item {
        id: item1
        anchors.fill: parent

        Image {
            id: image1
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: "/new/prefix1/background"
        }


    }

    Rectangle {
        id: rectangle1
        y: 366
        height: 30
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: text1
            x: 465
            y: 8
            text: qsTr("Score:")
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.pixelSize: 12
        }

        Button {
            id: button1
            y: 18
            height: 30
            text: "New Game"
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ee2626"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
            }
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 8
            onClicked: SameGame.startNewGame()
        }
    }
}
