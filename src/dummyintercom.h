#pragma once

#include "iintercom.h"

class DummyIntercom final : public IIntercom {

public:
    DummyIntercom();
    ~DummyIntercom() final override;

    void initialize() final override;
    void showMessenger(bool isShowed) final override;
};
