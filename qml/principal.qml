import QtQuick 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import electrolinera 1.0
//import Qt.SafeRenderer 1.1

//carga - variable estado de la carga
import QtQuick.Studio.Effects 1.0
import QtQuick.Studio.Components 1.0



Item {

    id: element
    x: -150
    y: -90
    width: Constants.width
    height: Constants.height
    scale: 1
    transformOrigin: Item.Center


    //HORA Y FECHA ACTUAL
    Timer {
        interval: 500; running: true; repeat: true
        onTriggered: time.text = Date().toString()
    }

    Text { id: time ;font.family: "Ubuntutt" }



    Rectangle {
        id: rectangle
        x: 116
        y: 76
        width: 1968
        height: 1104
        color: "#1b0123"
        transformOrigin: Item.Center
        scale: 1
        gradient: Gradient {
            GradientStop {
                id: pagprincipal
                position: 0
                color: "#1b0123"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }


        StackLayout {
            id: stackLayout
            x: 0
            y: 0
            width: 1968
            height: 1105
            clip: false
            visible: true
            scale: 1
            currentIndex: 1


            Item {
                id: principal
                width: 1406
                height: 1080
                Layout.fillHeight: true
                Layout.fillWidth: true

                Celdas {
                    id: celdas
                    x: 1576
                    y: 410
                }

                Bcarga {
                    id: bcarga
                    x: 150
                    y: 800
                    width: 1200
                    height: 200
                    transformOrigin: Item.Center
                    scale: 1
                    font.family: "Ubuntutt"
                    onClicked: stackLayout.currentIndex = 1

                }

                Urmotostudent {
                    id: urmotostudent
                    x: 150
                    y: 0
                    scale: 1
                    antialiasing: true
                }

                BusyIndicator {
                    id: busyIndicator
                    x: 1685
                    y: 52
                    width: 70
                    height: 70
                    font.family: "Ubuntutt"
                    visible: if (botonestado.carga == false)
                                 false
                             else
                                 true
                    font.pointSize: 12
                    property var carga: false //estado de la carga

                }

                Tension {
                    id: tension
                    x: 1601
                    y: 240
                    font.family: "Ubuntutt"
                }

                Text {
                    id: hora
                    x: 1469
                    y: 34
                    color: "#ffffff"
                    //cambiar a bucle for
                    text: time.text[0] + time.text[1] + time.text[2] + time.text[3] + time.text[10] + time.text[11] + time.text[12] + time.text[13] + time.text[14] + time.text[15] + time.text[16] + time.text[17] + time.text[18] + time.text[19]
                    font.family: "Ubuntutt"
                    font.pixelSize: 20

                }



            }

            Item {
                id: cargando
                width: 1406
                height: 1105


                Button {
                    id: bsalir
                    x: 40
                    y: 23
                    width: 50
                    height: 50
                    text: qsTr("X")
                    font.family: "Ubuntutt"
                    onClicked: stackLayout.currentIndex = 0

                }








                Item {
                    id: botonestado
                    width: 895
                    height: 282

                    property var carga: false
                    x: 150
                    y: 483

                    Estado {
                        id: estado
                        x: 425
                        y: 5
                        radius: 10
                    }

                    Button {
                        id: binicio
                        x: 0
                        y: 0
                        width: 343
                        height: 134
                        text: qsTr("inicio")
                        font.family: "Ubuntutt"
                        enabled:if(botonestado.carga == true)
                                    false
                                else
                                    true
                        onClicked: botonestado.carga = true
                        font.pointSize: 20
                    }

                    Button {
                        id: bparo
                        x: 0
                        y: 148
                        width: 343
                        height: 134
                        text: qsTr("paro")
                        font.family: "Ubuntutt"
                        enabled: if(botonestado.carga == true)
                                     true
                                 else
                                     false
                        onClicked: botonestado.carga = false
                        font.pointSize: 20

                    }



                }



                Indicadoryswitch {
                    id: indicadoryswitch
                    x: 1080
                    y: 66
                }



                BorderImage {
                    id: motopequena
                    x: 1616
                    y: 23
                    width: 133
                    height: 91
                    source: "imagenes/motoBlancaSinFondo.png"
                }

                Tension {
                    id: tension1
                    x: 1601
                    y: 240
                    font.family: "Ubuntutt"
                }


                Perfilactual {
                    id: perfilactual
                    x: 150
                    y: 66
                }

                Tensiones {
                    id: tensiones
                    x: 150
                    y: 820
                }

                Celdas {
                    id: celdas1
                    x: 1577
                    y: 410
                }







            }

            StackLayout {
                id: pestanasconfig
                width: 1738
                height: 960
                currentIndex: 1







                Item {
                    id: listaperfiles
                    width: 1738
                    height: 960

                    Button {
                        id: bsalir1
                        x: 40
                        y: 23
                        width: 50
                        height: 50
                        text: qsTr("X")
                        font.family: "Ubuntutt"
                        onClicked: stackLayout.currentIndex = 1
                    }

                    Rectangle {
                        id: rectangle1
                        x: 147
                        y: 66
                        width: 1703
                        height: 934
                        color: "#0f0812"
                        radius: 10
                        visible: true
                    }

                    Button {
                        id: bnuevoperfil
                        x: 1488
                        y: 95
                        width: 303
                        height: 71
                        text: qsTr("nuevo perfil")
                        font.family: "Ubuntutt"
                        font.pointSize: 20
                        onClicked: pestanasconfig.currentIndex = 1
                    }





                }







                Item {
                    id: configurarperfil
                    width: 1738
                    height: 960

                    Rectangle {
                        id: rectangle2
                        x: 147
                        y: 66
                        width: 1703
                        height: 934
                        color: "#0f0812"
                        radius: 10
                        visible: true


                        Tensioncorriente {
                            id: tensioncorriente
                            x: 705
                            y: 52
                        }


                        Seleccionceldas {
                            id: seleccionceldas
                            x: 130
                            y: 184
                            width: 200
                            height: 200
                        }


                        Text {
                            id: tnumeroceldas
                            x: 156
                            y: 155
                            color: "#ffffff"
                            text: qsTr("Numero de celdas")
                            font.family: "Ubuntutt"
                            font.pixelSize: 20
                        }


                        Seleccionsondas {
                            id: seleccionsondas
                            x: 437
                            y: 184
                        }


                        Text {
                            id: tnumerosondas
                            x: 423
                            y: 155
                            color: "#ffffff"
                            text: qsTr("Sensores de temperatura")
                            font.family: "Ubuntutt"
                            font.pixelSize: 20
                        }



                        SwipeView {
                            id: selector
                            x: 736
                            y: 533
                            width: 231
                            height: 200
                            font.family: "Ubuntutt"
                            scale: 1
                            currentIndex: 0

                            Image {
                                id: fmoto
                                x: -11
                                y: 22
                                width: 245
                                height: 126
                                fillMode: Image.PreserveAspectFit
                                source: "imagenes/moto.png"
                            }

                            Image {
                                id: fcoche
                                x: -19
                                y: 71
                                width: 245
                                height: 71
                                fillMode: Image.PreserveAspectFit
                                source: "imagenes/coche.png"
                            }

                            Image {
                                id: fdrone
                                x: -8
                                y: 22
                                width: 245
                                height: 156
                                scale: 0.8
                                fillMode: Image.PreserveAspectFit
                                source: "imagenes/drone.png"
                            }

                            Image {
                                id: fcamion
                                x: -6
                                y: 47
                                width: 245
                                height: 111
                                fillMode: Image.PreserveAspectFit
                                source: "imagenes/camion.png"
                            }


                        }




                        Rectangle {
                            id: rectangle3
                            x: 469
                            y: 533
                            width: 261
                            height: 200
                            color: "#0f0812"
                            opacity: 0.8
                            border.color: "#00000000"
                        }




                        Rectangle {
                            id: rectangle4
                            x: 979
                            y: 533
                            width: 261
                            height: 200
                            color: "#0f0812"
                            opacity: 0.8
                            border.color: "#00000000"
                        }



                        Button {
                            id: bavanza
                            x: 979
                            y: 715
                            width: 65
                            height: 65
                            text: qsTr(">")
                            display: AbstractButton.TextOnly
                            font.bold: true
                            font.family: "Ubuntutt"
                            font.pointSize: 25
                            onClicked: if (selector.currentIndex == 3)
                                           selector.currentIndex = 0
                                       else
                                           selector.currentIndex = selector.currentIndex + 1
                        }

                        Button {
                            id: bretrocede
                            x: 665
                            y: 715
                            width: 65
                            height: 65
                            text: qsTr("<")
                            font.pointSize: 25
                            font.bold: true
                            font.family: "Ubuntutt"
                            display: AbstractButton.TextOnly
                            onClicked: if (selector.currentIndex == 0)
                                           selector.currentIndex = 3
                                       else
                                           selector.currentIndex = selector.currentIndex - 1
                        }

                        Image {
                            id: image1
                            x: 803
                            y: 768
                            width: 98
                            height: 98
                            source: "imagenes/aceptar.png"
                            fillMode: Image.PreserveAspectFit

                            RoundButton {
                                id: roundButton
                                x: -6
                                y: -6
                                width: 110
                                height: 110
                                text: ""
                                font.family: "Ubuntutt"
                                highlighted: false
                                autoRepeat: false
                                flat: true
                                hoverEnabled: true
                            }
                        }
                    }

                    Button {
                        id: bsalir3
                        x: 197
                        y: 95
                        width: 50
                        height: 50
                        text: qsTr("x")
                        font.family: "Ubuntutt"
                        onClicked: pestanasconfig.currentIndex = 0
                    }
                }



            }

            Item {
                id: graficas
                width: 1406
                height: 1105

                Button {
                    id: bsalir2
                    x: 40
                    y: 23
                    width: 50
                    height: 50
                    text: qsTr("X")
                    font.family: "Ubuntutt"
                    onClicked: stackLayout.currentIndex = 0
                }
            }


        }










    }
}

































































































































































































































































































/*##^##
Designer {
    D{i:9;anchors_height:1080;anchors_width:1406;anchors_x:0;anchors_y:0}D{i:10;anchors_height:1080;anchors_width:1406;anchors_x:0;anchors_y:0}
D{i:11;anchors_x:150;anchors_y:800}D{i:12;anchors_x:150;anchors_y:800}D{i:7;anchors_height:1080;anchors_width:1406;anchors_x:1533;anchors_y:405}
}
##^##*/
