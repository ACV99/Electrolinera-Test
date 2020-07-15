#ifndef CAN_H
#define CAN_H

#include <QObject>
#include <QDebug>
#include <QCanBus>

class can : public QObject
{
    Q_OBJECT

private:

public:
    std::unique_ptr<QCanBusDevice> CANdevice;
    explicit can(QObject *parent = nullptr);
    void caninit();
    void send(qint32 sendId, QByteArray sendPayload);
    QCanBusFrame receive();

signals:

public slots:
    void framesRecievedSlot();
};

#endif // CAN_H
