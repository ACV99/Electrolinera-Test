import QtQuick 2.12
import electrolinera 1.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
//import Qt.SafeRenderer 1.1
//import QtStudio3D 2.3
import QtQuick.Timeline 1.0
import QtQuick.Shapes 1.0

Button {
    id: bcarga
    width: 1200/1920*Constants.width
    height: 200/1080*Constants.height
    text: qsTr("carga")
    font.family: "Ubuntutt"
    font.pointSize: 40/1920*Constants.width
    font.underline: false
    font.strikeout: false
    font.italic: false
    font.bold: false
    spacing: 6/1920*Constants.width
    focusPolicy: Qt.NoFocus
}
