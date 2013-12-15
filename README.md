# RootFinder Module

The **RootFinder** module provides an interface to detect hacked/rooted devices from Titanium

## Loading the module

Load this module in your Titanium app as follows:

    var RootFinder = require('com.appersonlabs.root');

## Module object

### Methods

**isRooted**()

Returns true if the device has a rooted/hacked OS.

Returns false if validation checks show the device is not hacked.

**requestAccess**()

(ANDROID ONLY) This not only checks that a device is rooted, it also calls su for your app, requests permission, and returns true if your app was successfully granted root permissions. This can be used as the first check in your app to make sure that you will be granted access when you need it.

**isBoughtFromAppStore**()

(iOS ONLY) This detects if the app has been cracked or otherwise stolen. Returns true if theft IS detected OR if the build is a debug or simulator build.

## Please note!
Like in any case, the APIs here are NOT perfect! So please don't blame us if users/hackers find ways around these checks... but we will do our best to keep up with them.
If security is a major concern for your app, we HIGHLY recommend consulting with a security pro regarding additional ways to make sure your app and data stays secure.