# Garmin-ExampleApp-Swift

This repository contains functional code for an iOS companion app that can send data to a Garmin Datafield.

## Overview

The iOS code is based on the original [Garmin's iOS Example Code](https://developer.garmin.com/connect-iq/sdk/) that was ported to Swift by **Doug Williams**. You can find his repository [here](https://github.com/dougw/Garmin-ExampleApp-Swift).

The Garmin Data Field code was inspired by [Garmin's connectiq-companion-app-example-ios](https://github.com/garmin/connectiq-companion-app-example-ios).

## Modifications

The iOS code was modified to compile with the latest iOS SDKs with the following changes:
- Replaced deprecated method to restore device data.
- Ensured delegate and table views are available.
- Added Bluetooth entitlements.

## Application Selection List

In the application selection list, two apps can be selected if they are installed:
1. **String Test App**: This is the original example application (not a data field) that came with Garmin's iOS example code. It just shows the received data and might serve debugging purposes. Therefore, it was left.
2. **My Data Field**: This is the new data field that does more or less the same as the "String Test App" application: It just shows the received message as a string.

## Compilation and Logs

The repository includes the iOS code to be compiled with Xcode. In order for it to compiled you need to update the bundle identifieer and provisioning profile. The Garmin code can be compiled using Visual Studio Code or you just move the `Garmin.prg` file to the `Garmin/Apps` directory of your Garmin device. Logs will end up in the `Garmin/Apps/LOGS/SUGAR.TXT` file, but this file needs to be created first. For more information see https://developer.garmin.com/connect-iq/connect-iq-basics/your-first-app/
