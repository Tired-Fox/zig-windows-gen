# README

Currently supports Zig `v0.15.1`.

**Implemented**

- [-] Windows
    - [-] UI
        - [-] ViewManagement
            - [x] UISettings
        - [ ] Notification
            - [-] ToastNotificationManager
            - [-] ToastNotification
            - [x] ToastNotifier
            - [x] NotificationData
            - [x] ScheduledToastNotification
    - [-] Data
        - [-] Xml
            - [-] Dom
                - [-] XmlDocument
                - [-] XmlElement
                - [-] XmlText
                - [-] IXmlNode
    - [ ] Media
        - [ ] Audio

**Generation**

Currently all of the APIs are implemented by hand as I am only implementing the APIs I need for my personal projects.

> [!WARNING]
> There could be some missed errors as it is difficult to maintian the abi by hand.

I plan to write a code generator that focuses on WinRT. This should cover all areas except win32 where zigwin32 will fill that gap. Any types
that are also defined in zigwin32 will be ignored in favor of the format of the code generated. Once I have a stable format for how I want the code to look
I will create projects for generating the metadata and generating the bindings.

**Reference**

+ windows-rs: Reference abi structure and IIDs
    - https://docs.rs/crate/windows-core/latest/source/
    - https://docs.rs/crate/windows-core/latest/source/src/imp/factory_cache.rs
    - https://docs.rs/crate/windows-collections/latest/source/src/bindings.rs

+ UISettings (Windows.UI.ViewManagement)
    https://learn.microsoft.com/en-us/uwp/api/windows.ui.viewmanagement.uisettings?view=winrt-26100

+ TypedEventHandler (Windows.Foundation)
    - https://learn.microsoft.com/en-us/uwp/api/windows.foundation.typedeventhandler-2?view=winrt-26100

+ Notifications (Windows.UI.Notifications + Windows.Data.Xml.Dom)
    + https://learn.microsoft.com/en-us/uwp/schemas/tiles/toastschema/schema-root
    + https://learn.microsoft.com/en-us/dotnet/api/system.xml.xmldocument?view=net-9.0
    + https://learn.microsoft.com/en-us/uwp/api/windows.data.xml.dom.xmlelement?view=winrt-26100
    + https://learn.microsoft.com/en-us/uwp/api/windows.ui.notifications.toastnotification?view=winrt-26100
    + https://learn.microsoft.com/en-us/uwp/api/windows.ui.notifications.toastnotifier?view=winrt-26100

+ Audio (Windows.Media.Audio)
    + https://learn.microsoft.com/en-us/windows/win32/coreaudio/wasapi
    + https://learn.microsoft.com/en-us/windows/uwp/audio-video-camera/audio-graphs

**Notes**

- Classes should implement the base `IInspectable` vtable with the perk of being able to pointer cast to the default interface. All other interface impls must use queryInterface to get the correct pointer.
    + This is also necissary if the default interface uses the parent classes type in it's vtable signature. If the class implements it's default interface vtable instead everything will work but zig will throw a `struct depends on itself` error at compile time. Instead just use IInspectable.VTable and cast to the default interface for all methods on that interface.
