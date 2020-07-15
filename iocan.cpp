#include "iocan.h"

iocan::iocan(QObject *parent) : QObject(parent)
{

}

void iocan::button(quint32 bId, QByteArray bFrame)
{
   objcan.send(bId, bFrame);
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


