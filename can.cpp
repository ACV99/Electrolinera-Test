#include "can.h"

can::can(QObject *parent) : QObject(parent)
{

}

QCanBusDevice* can::caninit()
{
    //--------------------------------------------------------------------------
    //SocketCAN Check

    if (QCanBus::instance()->plugins().contains(QStringLiteral("socketcan"))) {
        qInfo() << "SocketCAN check succesfull.";
    } else{
        qInfo() << "SocketCAN check task failed succesfully";
    }

    //--------------------------------------------------------------------------
    //Device interface

    QString errorString;
    QCanBusDevice* CANdevice = QCanBus::instance()->createDevice(QStringLiteral("socketcan"), QStringLiteral("can0"), &errorString);
    if (!CANdevice) {
        // Error handling goes here
        qDebug() << errorString;
    } else {
        CANdevice->connectDevice();
    }

    return CANdevice;
}

void can::send(QCanBusDevice* CANdevice, qint32 sendId, QByteArray sendPayload)
{
    //--------------------------------------------------------------------------
    //Frame = send elected ID + to send Payload

    qInfo() << "LLamada a la función de emisión de Can correcta";
    QCanBusFrame frame;
    frame.setFrameId(sendId);    //Numero de 11bits
    frame.setPayload(sendPayload);      //Mensaje (de 0 a 8bytes)
    CANdevice->writeFrame(frame);
}

QCanBusFrame can::receive(QCanBusDevice *CANdevice)
{
    //--------------------------------------------------------------------------
    //<QCanBusFrame>Frame =  Sender ID + Payload
    QCanBusFrame frame = CANdevice->readFrame();
    return frame;
}
