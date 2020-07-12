import QtQuick 2.12
import electrolinera 1.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
//import Qt.SafeRenderer 1.1

Item {
    id: element
    x: 0
    width: 200
    height: 200
    property alias nceldasText: nceldas.text

    Text {
        id: nceldas
        x: 84
        y: 83
        color: "#ffffff"
        text: qsTr("28")
        font.family: "Ubuntutt"
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 24
    }

    Button {
        id: bmenos
        x: 66
        y: 124
        text: qsTr("-");
        font.family: "Ubuntutt"
        onClicked: if (nceldas.text > 1)
                       nceldas.text = nceldas.text*1 - 1
    }

    Button {
        id: bmas
        x: 66
        y: 22
        text: qsTr("+")
        font.family: "Ubuntutt"
        onClicked: if (nceldas.text < 37)
                       nceldas.text = nceldas.text*1 + 1
    }


}
