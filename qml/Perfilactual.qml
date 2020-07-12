import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import electrolinera 1.0
//import Qt.SafeRenderer 1.1

//carga - variable estado de la carga
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0



Rectangle {
    id: rectangle5
    width: 895
    height: 383
    color: "#0f0812"
    radius: 10
    
    Button {
        id: bgraficas
        x: 603
        y: 260
        width: 127
        height: 108
        text: qsTr("Button")
        font.family: "Ubuntutt"
        highlighted: false
        display: AbstractButton.IconOnly
        flat: true
        
        Image {
            id: image
            x: 13
            y: 5
            width: 101
            height: 98
            source: "graficas.png"
            fillMode: Image.PreserveAspectFit
        }
    }
    
    Button {
        id: bconfiguracion
        x: 749
        y: 260
        width: 127
        height: 108
        text: qsTr("Button")
        font.family: "Ubuntutt"
        flat: true
        highlighted: false
        display: AbstractButton.IconOnly
        onClicked: stackLayout.currentIndex = 2
        
        Image {
            id: engranajes
            x: 9
            y: 12
            width: 103
            height: 83
            source: "engranajes.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: element
        x: 28
        y: 29
        color: "#ffffff"
        text: qsTr("Perfil de carga actual")
        font.pixelSize: 25
    }
}
