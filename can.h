#ifndef CAN_H
#define CAN_H

#include <QObject>
#include <QDebug>
#include <QCanBus>

class can : public QObject
{
    Q_OBJECT

public:
    explicit can(QObject *parent = nullptr);
    QCanBusDevice* caninit();
    void send(QCanBusDevice*CANdevice, qint32 sendId, QByteArray sendPayload);
    QCanBusFrame receive(QCanBusDevice* CANdevice);

signals:


};

#endif // CAN_H
