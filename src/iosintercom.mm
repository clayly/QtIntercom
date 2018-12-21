#include "iosintercom.h"

#include "qtintercom.h"

Q_LOGGING_CATEGORY(INTERCOM, "IOSIntercom", QtWarningMsg)

@import Intercom;

IOSIntercom::IOSIntercom()
{
}

IOSIntercom::~IOSIntercom()
{
}

void IOSIntercom::initialize()
{
    [Intercom setApiKey:@"your-api-key" forAppId:@"your-app-id"];
    [Intercom registerUnidentifiedUser];
    [Intercom enableLogging];
    [Intercom setLauncherVisible:FALSE];
}

void IOSIntercom::showMessenger(bool isShowed)
{
    [Intercom setLauncherVisible:isShowed];
}
