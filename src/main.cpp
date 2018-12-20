#include <QApplication>
#include <QDebug>
#include <QQmlApplicationEngine>
#include <QThread>
#include <QTimer>

#include "qtintercom.h"

int main(int argc, char** argv)
{
    QApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QtIntercom::getInstance()->initialize();
    QtIntercom::getInstance()->showMessenger(true);

    return app.exec();
}
