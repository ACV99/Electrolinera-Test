#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include "can.h"
#include "iocan.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQuickView view;
    //Objects - Context Propeties
    iocan iocan;
    view.rootContext()->setContextProperty("ioqml", &iocan);

    //QML import - View start
    view.engine()->addImportPath("qrc:/qml/imports");
    view.setSource(QUrl("qrc:/qml/principal.qml"));
    if (!view.errors().isEmpty())
        return -1;
    view.show();
    can objcan;
    objcan.caninit();


    return app.exec();
}
