#pragma once

class IIntercom {
public:
    virtual ~IIntercom();

    virtual void initialize() = 0;
    virtual void showMessenger(bool isShowed) = 0;
};
