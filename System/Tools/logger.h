#ifndef LOGGER_H
#define LOGGER_H

#include <QObject>

namespace Tools {
    class Logger : public QObject
    {
        Q_OBJECT
    private:
        Logger(QObject *parent = nullptr);

    public:
        static const Logger* getInstance();
    };
}


#endif // LOGGER_H
