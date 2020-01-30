import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    //注册URL Loading System协议，让每一个请求都会经过WKURLProtocol处理
    URLProtocol.registerClass(HybridNSURLProtocol.self)
    
//    [NSURLProtocol registerClass:[HybridNSURLProtocol class]];
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)

  }

}
