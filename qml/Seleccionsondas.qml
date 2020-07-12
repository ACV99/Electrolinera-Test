import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import electrolinera 1.0
//import Qt.SafeRenderer 1.1

//carga - variable estado de la carga
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0



Item {
    id: seleccionsondas
    width: 200
    height: 200

    Button {
        id: menossondas
        x: 68
        y: 127
        width: 64
        text: qsTr("-")
        font.family: "Ubuntutt"
        onClicked: if (tsondas.text > 1)
                       tsondas.text = tsondas.text*1 - 1
    }

    Button {
        id: massondas
        x: 68
        y: 25
        width: 64
        text: qsTr("+")
        font.family: "Ubuntutt"
        onClicked: if (tsondas.text < 8)
                       tsondas.text = tsondas.text*1 + 1
    }

    Text {
        id: tsondas
        x: 87
        y: 86
        color: "#ffffff"
        text: qsTr("4")
        font.family: "Ubuntutt"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 24
    }


}
