# SwiftNotification
[![Version](https://img.shields.io/cocoapods/v/SwiftNotification.svg?style=flat)](http://cocoapods.org/pods/SwiftNotification)
[![SPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)
![Xcode 9.0+](https://img.shields.io/badge/Xcode-9.0%2B-blue.svg)
![iOS 9.0+](https://img.shields.io/badge/iOS-9.0%2B-blue.svg)
![Swift 4.0+](https://img.shields.io/badge/Swift-4.0%2B-orange.svg)
[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-green.svg?style=flat)](https://developer.apple.com/swift/)

针对NotificationCenter的毛病做的工具，NotificationCenter需要关注移除，添加次数等等。

NSObject扩展一个属性：notifiCenter，继承自NSObject的类都可以很方便的使用它收发通知，不需要关心通知移除，deinit会自动移除, 并且防止多次添加同一个通知（只有最后一个生效）

## 安装

### Cocoapods

1.在 Podfile 中添加 `pod ‘Swift_Notification’`  

2.执行 `pod install 或 pod update`

3.导入 `import Swift_Notification`

### Swift Package Manager

从 Xcode 11 开始，集成了 Swift Package Manager，使用起来非常方便。SwiftNotification 也支持通过 Swift Package Manager 集成。

在 Xcode 的菜单栏中选择 `File > Swift Packages > Add Pacakage Dependency`，然后在搜索栏输入

`https://github.com/jackiehu/SwiftNotification`，即可完成集成。

### 手动集成

SwiftNotification 也支持手动集成，只需把Sources文件夹中的SwiftNotification文件夹拖进需要集成的项目即可

## 使用

发送通知
```swift
notifiCenter.postNotification("notiName", object: "cccccc", userInfo: ["key":"cccccc"])

```
接收通知

```swift
notifiCenter.addNotification("notiName", callBack: { (noti) in
            print("\(String(describing: noti.object)) -- \(String(describing: noti.userInfo))")
        })
```
系统通知
```swift
notifiCenter.addNotification(UIApplication.willEnterForegroundNotification, callBack: { (noti) in
            print("1111111-- \(String(describing: noti.userInfo))")
        })
```
### API

```swift
    /// 移除所有通知
    public func removeAllNotification()

    /// 移除单个通知
    /// - Parameter name: 通知名称String
    public func removeNotification(name : String)

    /// 移除单个系统通知
    /// - Parameter forName: NSNotification.Name通知名称
    public func removeNotification(notiName : NSNotification.Name)

    /// 移除多个通知
    /// - Parameter names: 通知名称String数组
    public func removeNotifications(names : [String])

    /// 移除多个系统通知
    /// - Parameter notiNames: 通知名称NSNotification.Name数组
    public func removeNotifications(notiNames : [NSNotification.Name])

    /// 注册添加通知
    /// - Parameters:
    ///   - name: 通知名称String
    ///   - callBack: 通知执行的回调
    public func addNotification(_ name : String, callBack : @escaping (Notification) -> Void)

    /// 注册添加多个通知
    /// - Parameters:
    ///   - names: 通知名称String数组
    ///   - callBack: 通知执行的回调
    public func addNotifications(_ names : [String], callBack : @escaping (Notification) -> Void)

    /// 注册添加通知
    /// - Parameters:
    ///   - notiName: NSNotification.Name通知名称
    ///   - callBack: 通知执行的回调
    public func addNotification(_ notiName : NSNotification.Name, callBack : @escaping (Notification) -> Void)

    /// 注册添加多个通知
    /// - Parameters:
    ///   - notiNames: NSNotification.Name通知名称数组
    ///   - callBack: 通知执行的回调
    public func addNotifications(_ notiNames : [NSNotification.Name], callBack : @escaping (Notification) -> Void)

    /// 发送通知
    /// - Parameters:
    ///   - name: 通知名称
    ///   - object: 发送对象
    ///   - userInfo: 发送字典
    public func postNotification(_ name : String, object: Any? = nil, userInfo : [String : Any]? = nil)
```
详细用法参见Demo **PushViewController**



## 更多砖块工具加速APP开发

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftBrick&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftBrick)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMediator&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMediator)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftShow&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftShow)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftLog&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftLog)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftyForm&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftyForm)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftEmptyData&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftEmptyData)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftPageView&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftPageView)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=JHTabBarController&theme=radical&locale=cn)](https://github.com/jackiehu/JHTabBarController)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftMesh&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftMesh)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftNetSwitch&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftNetSwitch)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftButton&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftButton)

[![ReadMe Card](https://github-readme-stats.vercel.app/api/pin/?username=jackiehu&repo=SwiftDatePicker&theme=radical&locale=cn)](https://github.com/jackiehu/SwiftDatePicker)
