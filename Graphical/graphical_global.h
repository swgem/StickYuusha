#ifndef GRAPHICAL_GLOBAL_H
#define GRAPHICAL_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(GRAPHICAL_LIBRARY)
#  define GRAPHICALSHARED_EXPORT Q_DECL_EXPORT
#else
#  define GRAPHICALSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // GRAPHICAL_GLOBAL_H
