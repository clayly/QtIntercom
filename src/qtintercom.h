#pragma once

#include <QLoggingCategory>
#include <QObject>

Q_DECLARE_LOGGING_CATEGORY(INTERCOM)

#include "iintercom.h"

/*!
 \class Intercom
 \brief Работа с API Intercom.
 */
class QtIntercom final : public QObject, IIntercom {

    Q_OBJECT

public:
    static QtIntercom* getInstance();

    ~QtIntercom() final override;

    /*!
      \fn void initialize() final override

      Инициализация API.
    */
    void initialize() final override;

    /*!
      \fn void showMessenger(bool isShowed) final override

      Показать окно мессенджера.
    */
    void showMessenger(bool isShowed) final override;

public slots:

signals:

private:
    static QtIntercom* s_intercom;

    QtIntercom();

    IIntercom* const m_intercomImpl;
};
