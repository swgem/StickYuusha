#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTranslator>
#include "logger.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    Q_INIT_RESOURCE(forms);
    Q_INIT_RESOURCE(translations);

    QTranslator translator{};
    translator.load(QStringLiteral("Graphical_pt-br.qm"), QStringLiteral(":/translations"));
    app.installTranslator(&translator);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/forms/MainWindow.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    const Tools::Logger *logger{Tools::Logger::getInstance()};

    return app.exec();
}
