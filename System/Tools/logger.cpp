#include "logger.h"
#include <QDebug>

using Tools::Logger;

Logger::Logger(QObject *parent) : QObject(parent)
{

}

const Logger* Logger::getInstance()
{
//    if (instance == nullptr)
//    {
//        qDebug() << "entrou ain";
//        instance = new Logger{};
//    }
    return Logger::instance;
}
