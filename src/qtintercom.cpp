#include "qtintercom.h"

#include "platformsupport.h"

QtIntercom* QtIntercom::s_intercom = nullptr;

QtIntercom::QtIntercom()
    : m_intercomImpl(PlatformSupport::intercom())
{
}

QtIntercom* QtIntercom::getInstance()
{
    if (s_intercom == nullptr) {
        s_intercom = new QtIntercom;
    }
    return s_intercom;
}

QtIntercom::~QtIntercom()
{
    delete s_intercom;
    s_intercom = nullptr;
    delete m_intercomImpl;
}

void QtIntercom::initialize()
{
    m_intercomImpl->initialize();
}

void QtIntercom::showMessenger(bool isShowed)
{
    m_intercomImpl->showMessenger(isShowed);
}
