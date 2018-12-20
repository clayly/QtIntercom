#include "platformsupport.h"

#include <QtGlobal>

#ifdef Q_OS_IOS
#include "iosintercom.h"
#else
#include "dummyintercom.h"
#endif

IIntercom* PlatformSupport::intercom()
{
#ifdef Q_OS_IOS
    return new IOSIntercom;
#else
    return new DummyIntercom;
#endif
}
