import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let helloChannel = FlutterMethodChannel(name: "plataform_channel/hello_world",
                                              binaryMessenger: controller.binaryMessenger)
    helloChannel.setMethodCallHandler({
     [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
      // This method is invoked on the UI thread.
      // Handle battery messages.
       guard call.method == "getHelloWorld" else {
        result(FlutterMethodNotImplemented)
        return
      }
      result("Hello World")
    })
                                          
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
