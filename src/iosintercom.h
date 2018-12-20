#pragma once

#include "iintercom.h"

class IOSIntercom final : public IIntercom {

public:
    IOSIntercom();
    ~IOSIntercom() final override;

    void initialize() final override;
    void showMessenger(bool isShowed) final override;

private:
};
