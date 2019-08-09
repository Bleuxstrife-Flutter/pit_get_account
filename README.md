# PIT Get Account

Use this Plugin for get Account Info, this plugin only work on android

*Note*: This plugin is still under development, and some Components might not be available yet or still has so many bugs.

## Installation

First, add `pit_get_account` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```
pit_get_account: ^0.0.1
```

## Important

this plugin depends on other plugins, you must have a permission to use this plugin, you can use `pit_permission` plugin or other permission plugin.

You must add this permission in AndroidManifest.xml for Android

```
for read Contact = <uses-permission android:name="android.permission.READ_CONTACTS"/>
```

## Example for Get Account Info
```
    List<String> result = await PitGetAccount.getAccount();
```