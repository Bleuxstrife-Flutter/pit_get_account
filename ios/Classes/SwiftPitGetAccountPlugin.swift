import Flutter
import UIKit

public class SwiftPitGetAccountPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "pit_get_account", binaryMessenger: registrar.messenger())
    let instance = SwiftPitGetAccountPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result([String]())
  }
}
