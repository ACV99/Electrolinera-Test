import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import electrolinera 1.0
//import Qt.SafeRenderer 1.1
import QtQuick.Studio.Components 1.0

//0 desactivado, 1 rojo

//vrelebms

Rectangle {
    id: rectangle
    width: 269
    height: 687
    color: "#0f0812"
    radius: 10
    property alias switchbmsChecked: switchbms.checked

    BusyIndicator {
        id: busyIndicator
        x: 100
        y: 70
        width: 70
        height: 70
        visible: if (botonestado.carga == false)
                     false
                 else
                     true
        font.pointSize: 12
        property var carga: false /////////////////////////////////////////////////////////variable estado de la carga

    }

    Switch {
        id: switchbms
        x: 112
        y: 190
        width: 45
        height: 29
        text: qsTr("")
        antialiasing: true
        clip: false
        wheelEnabled: false
        hoverEnabled: false
        enabled: true
        checkable: true
        autoRepeat: false
        autoExclusive: false
        checked: true
        scale: 1.8
        font.pointSize: 19
    }

    Text {
        id: infobms
        x: 84
        y: 240
        color: "#ffffff"
        text: if(switchbms.position == 1)
                  "Con BMS"
              else
                  " Sin BMS"

        font.pixelSize: 25
    }

    Text {
        id: trelebms
        x: 25
        y: 311
        color: "#ffffff"
        text: qsTr("Rele BMS")
        font.pixelSize: 16

        Rectangle {
            id: irelebms
            x: 175
            y: -11
            width: 40
            height: 40
            radius: 20
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color:"#2d2d2d"/* if (vrelebms == 0)
                               "#2d2d2d"
                            else if (vrelebms == 1)
                                    "#ff1744"
                              else if (vrelebms == 2)
                                        "#00e676"*/
                }

                GradientStop {
                    position: 1
                    color: "#2d2d2d"/*if (vrelebms == 0)
                               "#2d2d2d"
                            else if (vrelebms == 1)
                                    "#8a1a1a"
                              else if (vrelebms == 2)
                                        "#1a451c"*/
                }
            }
            opacity: 1
        }
    }

    Text {
        id: trelebatcar
        x: 25
        y: 371
        color: "#ffffff"
        text: qsTr("Rele baterias-cargador")
        font.pixelSize: 16

        Rectangle {
            id: irelebatcar
            x: 175
            y: -11
            width: 40
            height: 40
            radius: 20
            opacity: 0.85
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color:"#2d2d2d" /*if (vrelebatcar == 0)
                               "#2d2d2d"
                            else if (vrelebatcar == 1)
                                    "#ff1744"
                              else if (vrelebatcar == 2)
                                        "#00e676"*/ //CAMBIAR DESDE QT CREATOR
                }

                GradientStop {
                    position: 1
                    color: "#2d2d2d"/*if (vrelebatcar == 0)
                               "#2d2d2d"
                            else if (vrelebatcar == 1)
                                    "#8a1a1a"
                              else if (vrelebatcar == 2)
                                        "#1a451c"*/
                }
            }
        }
    }

    Text {
        id: tmagcar
        x: 25
        y: 431
        color: "#ffffff"
        text: qsTr("Magneto cargador")
        font.pixelSize: 16

        Rectangle {
            id: imagcar
            x: 175
            y: -11
            width: 40
            height: 40
            radius: 20
            opacity: 0.85
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#2d2d2d"/*if (vmagcar == 0)
                               "#2d2d2d"
                            else if (vmagcar == 1)
                                    "#ff1744"
                              else if (vmagcar == 2)
                                        "#00e676"*/
                }

                GradientStop {
                    position: 1
                    color: "#2d2d2d"/*if (vmagcar == 0)
                               "#2d2d2d"
                            else if (vmagcar == 1)
                                    "#8a1a1a"
                              else if (vmagcar == 2)
                                        "#1a451c"*/
                }
            }
        }
    }

    Text {
        id: tcancar
        x: 26
        y: 491
        color: "#ffffff"
        text: qsTr("Can cargador")
        font.pixelSize: 16

        Rectangle {
            id: icancar
            x: 174
            y: -11
            width: 40
            height: 40
            radius: 20
            opacity: 0.85
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#2d2d2d"/*if (vcancar == 0)
                               "#2d2d2d"
                            else if (vcancar == 1)
                                    "#ff1744"
                              else if (vcancar == 2)
                                        "#00e676"*/
                }

                GradientStop {
                    position: 1
                    color: "#2d2d2d"/*if (vcancar == 0)
                               "#2d2d2d"
                            else if (vcancar == 1)
                                    "#8a1a1a"
                              else if (vcancar == 2)
                                        "#1a451c"*/
                }
            }
        }
    }

    Text {
        id: tcangen
        x: 26
        y: 551
        color: "#ffffff"
        text: qsTr("Can general")
        font.pixelSize: 16

        Rectangle {
            id: icangen
            x: 174
            y: -11
            width: 40
            height: 40
            radius: 20
            opacity: 0.85
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color:"#2d2d2d" /*if (vcangen == 0)
                               "#2d2d2d"
                            else if (vcangen == 1)
                                    "#ff1744"
                              else if (vcangen == 2)
                                        "#00e676"*/
                }

                GradientStop {
                    position: 1
                    color:"#2d2d2d" /*if (vcangen == 0)
                               "#2d2d2d"
                            else if (vcangen == 1)
                                    "#8a1a1a"
                              else if (vcangen == 2)
                                        "#1a451c"*/
                }
            }
        }
    }

    Text {
        id: tcombms
        x: 26
        y: 611
        color: "#ffffff"
        text: qsTr("Comunicacion BMS")
        font.pixelSize: 16

        Rectangle {
            id: icombms
            x: 174
            y: -11
            width: 40
            height: 40
            radius: 20
            opacity: 0.85
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#2d2d2d"/*if (vconbms == 0)
                               "#2d2d2d"
                            else if (vconbms == 1)
                                    "#ff1744"
                              else if (vconbms == 2)
                                        "#00e676"*/
                }

                GradientStop {
                    position: 1
                    color:"#2d2d2d"/*if (vconbms == 0)
                              "#2d2d2d"
                           else if (vconbms == 1)
                                   "#8a1a1a"
                             else if (vconbms == 2)
                                       "#1a451c"*/
                }
            }
        }
    }
}
