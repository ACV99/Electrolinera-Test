#include "can.h"

can::can(QObject *parent) : QObject(parent)
{

}

void can::caninit()
{
    //--------------------------------------------------------------------------
    //SocketCAN Check

    if (QCanBus::instance()->plugins().contains(QStringLiteral("socketcan"))) {
        qInfo() << "SocketCAN check succesfull.";
    } else{
        qInfo() << "SocketCAN check failed.";
    }

    //--------------------------------------------------------------------------
    //Device interface
    QString errorString;
    CANdevice.reset(QCanBus::instance()->createDevice(QStringLiteral("socketcan"), QStringLiteral("can0"),
                                                        &errorString));
    if (!CANdevice) {
        qInfo() << "Ha ocurrido un error al conectarse:" << errorString;;
        return;
    } else {
        CANdevice->connectDevice();
    }

    connect(CANdevice.get(), &QCanBusDevice::framesReceived,
            this, &can::framesRecievedSlot);
}

void can::send(qint32 sendId, QByteArray sendPayload)
{
    //--------------------------------------------------------------------------
    //Frame = send selected ID + Payload

    qInfo() << "LLamada a la función de emisión de Can correcta";
    QCanBusFrame frame;
    frame.setFrameId(sendId);    //Número de 11bits
    frame.setPayload(sendPayload);      //Mensaje (de 0 a 8bytes)
    CANdevice->writeFrame(frame);
    qInfo() << "Frame escrito correctamente";
}

QCanBusFrame can::receive()
{
    //--------------------------------------------------------------------------
    //<QCanBusFrame>Frame =  Sender ID + Payload
    QCanBusFrame frame = CANdevice->readFrame();
    return frame;
}

void can::framesRecievedSlot()
{
    quint32 frame_r_id;
    QByteArray frame_r_payload;
    QByteArray celda_str;
    int celda_int;
    float celda;
    float vTensiones[28];
    bool ok;

    while(CANdevice->framesAvailable()){
        const QCanBusFrame frame_r = receive();  //readFrame y descuenta 1 al buffer

        frame_r_id = frame_r.frameId();
        frame_r_payload = frame_r.payload();

        switch(frame_r_id){
        case 0x710: {
            //Celdas 1-4
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=0;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        case 0x711: {
            //Celdas 5-8
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=4;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        case 0x712: {
            //Celdas 9-12
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=7;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        case 0x713: {
            //Celdas 13-16
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=12;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        case 0x714: {
            //Celdas 17-20
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=16;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        case 0x715: {
            //Celdas 21-24
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=20;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        case 0x716: {
            //Celdas 25-28
            for(auto i = 0; i<16; i=i+4){
                //Obtiene los caracteres del Payload de 4 en 4,
                celda_str = frame_r_payload.mid(i,4);
                celda_int=celda_str.toInt(&ok, 16);
                celda=celda_int/1000.0;

                //Comprobaciones en la interfaz
                qInfo()<<"El valor de la celda como str es:" << celda_str;
                qInfo()<<ok;
                qInfo()<<"El valor de la celda como int es:" << celda_int;
                qInfo()<<"El valor de la celda como float es:" << celda;

                //Guardar datos en vector
                auto k=24;
                vTensiones[k]=celda;
                k++;
            }
        }break;
        default: qInfo() << "Mensaje recivido pero Id no reconocido";
        }
        }
    }

