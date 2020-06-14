#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "logger.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    Q_INIT_RESOURCE(forms);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/MainWindow.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    const Tools::Logger *logger{Tools::Logger::getInstance()};

    return app.exec();
}
