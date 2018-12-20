#pragma once

class IIntercom;

class PlatformSupport
{
    PlatformSupport() = delete;
    ~PlatformSupport() = delete;
public:
    static IIntercom *intercom();
};
