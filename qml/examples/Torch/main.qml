import QtQuick 2.4
import QtMultimedia 5.4

Item {
    anchors.fill: parent
    property bool torchEnabled: false

    // The Torch component isn't working on Android, so I'm using Camera instead
    // However, this function remains unstable and often leads to crash app

    /*Torch {
        enabled: torchEnabled
        power: 100
    }*/

    Camera {
        flash.mode: (torchEnabled) ?
                        Camera.FlashVideoLight :
                        Camera.FlashOff
    }

    Rectangle {
        anchors.centerIn: parent
        width: 500
        height: 500
        radius: width / 2
        color: (torchEnabled) ? "#006224" : "#ffffff"
        border.color: "#80c342"
        border.width: 10
    }

    MouseArea {
        anchors.fill: parent
        onClicked: torchEnabled = !torchEnabled
    }
}
