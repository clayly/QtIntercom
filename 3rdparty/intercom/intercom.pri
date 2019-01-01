ios: {
    INTERCOM_FRAMEWORK_ROOT = $$COCOAPODS_ROOT/Intercom/Intercom
    INTERCOM_RESOURCES = $$INTERCOM_FRAMEWORK_ROOT/Intercom.framework/Resources

    LIBS += \
        -F$$INTERCOM_FRAMEWORK_ROOT \
        -framework Intercom

    INTERCOM_ASSETS.files       = $$INTERCOM_RESOURCES/Assets.car
    INTERCOM_TRANS_BUNDLE.files = $$INTERCOM_RESOURCES/IntercomTranslations.bundle
    INTERCOM_BUNDLE.files       = $$INTERCOM_RESOURCES/Intercom.bundle

    QMAKE_BUNDLE_DATA += \
        INTERCOM_ASSETS \
        INTERCOM_TRANS_BUNDLE \
        INTERCOM_BUNDLE
}
