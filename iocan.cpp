#include "iocan.h"

iocan::iocan(QObject *parent) : QObject(parent)
{

}

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

void iocan::framesRecievedSlot()
{
    while(CANdevice->framesAvailable()){
        const QCanBusFrame frame_r = objcan.receive(CANdevice);  //readFrame y descuenta 1 al buffer

        quint32 frame_r_id;
        frame_r_id = frame_r.frameId();

        switch(frame_r_id){
            case 0x1: qInfo() << "Frame reciveved correctly";
        }
    }
}
