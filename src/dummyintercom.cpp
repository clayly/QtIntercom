#include "dummyintercom.h"

#include "qtintercom.h"

Q_LOGGING_CATEGORY(INTERCOM, "DummyIntercom", QtWarningMsg)

DummyIntercom::DummyIntercom()
{
}

DummyIntercom::~DummyIntercom()
{
}

void DummyIntercom::initialize()
{
}

void DummyIntercom::showMessenger(bool isShowed)
{
    Q_UNUSED(isShowed);
}
