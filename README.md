# QtIntercom

Adding Intercom (https://www.intercom.com/) framework (mainly messanger) to Qt iOS project.

**/3rdparty/intercom/intercom.pri**: describes adding Intercom framework to project.

**/src/src.pro**: main project file, describing all resources and settings for project.

**/src/iosintercom.mm**: main Intercom implementation file.

**/src/main.cpp**: app starting point, where we creating main loop and initializing Intercom.

## Installing

Instruction for macOS.

1. Get qt and xcode as described here: https://doc.qt.io/qt-5.11/ios-support.html.
1. Install and prepare CocoaPods.
1. Run "pod install" in /src/ios/CocoaPods folder (EmptyProject here is just whatever project, created in xcode).
1. Open QtIntercom.pro with QtCreator (it is qt project file).
1. Run build (it will create build folder near current QtIntercom folder).
1. From xcode go to build folder, created in previous step, and open xcodeproj file.
1. Run project on iOS device.
