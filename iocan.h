#ifndef IOcan_H
#define IOcan_H

#include <QObject>
#include <QDebug>
#include "can.h"

class iocan : public QObject
{
    Q_OBJECT
    //Estos parametros son reconocidos por la función, no los necesitan como entrada
    can objcan;
    QCanBusDevice* CANdevice = objcan.caninit();
    int vTensiones[64];

private:




public:
    explicit iocan(QObject *parent = nullptr);
    /*
    Q_INVOKABLE void bInicio();
    Q_INVOKABLE void bParo();
    */
    Q_INVOKABLE void button(quint32 bId, QByteArray bFrame);
    Q_INVOKABLE float Vbar1;
    Q_INVOKABLE void setVbar1(float Vbar){Vbar1 = Vbar;}
    Q_INVOKABLE float getVbar1(){return Vbar1;}


signals:

public slots:
    void framesRecievedSlot();
};

#endif // BUTTON_H
