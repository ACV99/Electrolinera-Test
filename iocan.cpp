#include "iocan.h"

iocan::iocan(QObject *parent) : QObject(parent)
{

}

void iocan::button(quint32 bId, QByteArray bFrame)
{
   objcan.send(CANdevice, bId, bFrame);
   qInfo() << "Se ha enviado la señal con Id:" << bId << "y frame" << bFrame;
}
/*
void iocan::bInicio()
{
    qInfo() << "LLamada a la función de inicio de carga correcta";
    //Envío señal CANBUS
    objcan.send(CANdevice, quint32(8), QByteArray("A7F6"));
}

void iocan::bParo()
{
    qInfo() << "LLamada a la función de paro de carga correcta";
    //Envío señal CANBUS
}
*/

void iocan::framesRecievedSlot()
{
    quint32 frame_r_id;
    QByteArray frame_r_payload, celda;
    bool ok;
    while(CANdevice->framesAvailable()){
        const QCanBusFrame frame_r = objcan.receive(CANdevice);  //readFrame y descuenta 1 al buffer

        frame_r_id = frame_r.frameId();
        frame_r_payload = frame_r.payload();

        switch(frame_r_id){
            case 0x710: {
                /*for(auto i = 0; i<8; i++){
                    celda = (frame_r_payload.toInt(&ok,10))<<(16*i);
                    vTensiones[i]=frame_r_payload &
                }*/
            default: qInfo() << "Mensaje recivido pero Id no reconocido"
        };
        }
    }
}
