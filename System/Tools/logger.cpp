#include "logger.h"
#include <QDebug>

using Tools::Logger;

Logger::Logger(QObject *parent) : QObject(parent)
{

}

const Logger* Logger::getInstance()
{
    static Logger instance{};
    return &instance;
}
