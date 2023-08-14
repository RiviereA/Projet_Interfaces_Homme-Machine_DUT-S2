import QtQuick 1.1

Rectangle {
    id: block
    width: 100
    height: 62
    color: "#00000000"
    property int type: 0

    Image {
        id: image1
        anchors.fill: parent
        source:
            if (type==0) {
                return "/new/prefix1/redStone"
            }
            else if (type==1) {
                return "/new/prefix1/blueStone"
            }
            else {
                return "/new/prefix1/greenStone"
            }
    }
}
