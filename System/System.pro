#-------------------------------------------------
#
# Project created by QtCreator 2020-06-11T16:06:56
#
#-------------------------------------------------

QT       -= gui

TARGET = StickYuushaSystem
TEMPLATE = lib
VERSION = 1.0.0

DEFINES += SYSTEM_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += Tools/logger.h

SOURCES += Tools/logger.cpp

#Target file directory
DESTDIR=bin
#Intermediate object files directory
OBJECTS_DIR=generated_files
#Intermediate moc files directory
MOC_DIR=generated_files

unix {
    CONFIG += create_pc create_prl no_install_prl

    target.path = /usr/lib/
    headers.files = $$HEADERS
    headers.path = /usr/include/stickyuusha/system

    QMAKE_PKGCONFIG_NAME = $$TARGET
    QMAKE_PKGCONFIG_PREFIX = $$INSTALLBASE
    QMAKE_PKGCONFIG_LIBDIR = $$target.path
    QMAKE_PKGCONFIG_INCDIR = $$headers.path
    QMAKE_PKGCONFIG_DESTDIR = pkgconfig
    QMAKE_PKGCONFIG_VERSION = $$VERSION

    INSTALLS += target headers
}
