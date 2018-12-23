TEMPLATE = app
TARGET = BHealth
QT += core gui qml quick widgets network
CONFIG += qt c++14

HEADERS += \
    $$PWD/iintercom.h \
    $$PWD/qtintercom.h \
    $$PWD/platformsupport.h

SOURCES += \
    $$PWD/main.cpp \
    $$PWD/iintercom.cpp \
    $$PWD/qtintercom.cpp \
    $$PWD/platformsupport.cpp

RESOURCES += $$PWD/ui/qml.qrc

IOS_DIR = $$PWD/../ios
3RDPARTY_DIR = $$PWD/../3rdparty

!ios: {
    HEADERS += \
        $$PWD/dummyintercom.h

    SOURCES += \
        $$PWD/dummyintercom.cpp
}

ios: {
    QMAKE_IOS_DEPLOYMENT_TARGET = 11.0
    QMAKE_APPLE_TARGETED_DEVICE_FAMILY = 1,2

    XCODE_CLANG_ENABLE_OBJC_WEAK.name = CLANG_ENABLE_OBJC_WEAK
    XCODE_CLANG_ENABLE_OBJC_WEAK.value = YES
    QMAKE_MAC_XCODE_SETTINGS += XCODE_CLANG_ENABLE_OBJC_WEAK

    XCODE_CLANG_ENABLE_OBJC_ARC.name = CLANG_ENABLE_OBJC_ARC
    XCODE_CLANG_ENABLE_OBJC_ARC.value = YES
    QMAKE_MAC_XCODE_SETTINGS += XCODE_CLANG_ENABLE_OBJC_ARC

    QMAKE_CXXFLAGS += \
        -fmodules \
        -fcxx-modules \

    QMAKE_LFLAGS += \
        -ObjC

    COCOAPODS_ROOT = $$IOS_DIR/CocoaPods/Pods

    OBJECTIVE_HEADERS += \
        $$PWD/iosintercom.h

    OBJECTIVE_SOURCES += \
        $$PWD/iosintercom.mm

    LIBS += \
        -framework UIKit \
        -framework HealthKit \
        -framework CoreLocation \
        -framework Foundation

    QMAKE_TARGET_BUNDLE_PREFIX="tech.biolink"
    QMAKE_BUNDLE="BHealth.zva"
    VERSION=$$VERSION
    QMAKE_INFO_PLIST = $$IOS_DIR/Info.plist

    QMAKE_ASSET_CATALOGS = $$IOS_DIR/Images.xcassets
    QMAKE_ASSET_CATALOGS_APP_ICON = "AppIcon"
    QMAKE_ASSET_CATALOGS_LAUNCH_IMAGE = "LaunchImage"

    # https://bugreports.qt.io/browse/QTBUG-55975
    MY_ENTITLEMENTS.name = CODE_SIGN_ENTITLEMENTS
    MY_ENTITLEMENTS.value = $$IOS_DIR/QtIntercom.entitlements
    QMAKE_MAC_XCODE_SETTINGS += MY_ENTITLEMENTS
}

3RDPARTY_LIBPATH =
include($$3RDPARTY_DIR/3rdparty.pri)
