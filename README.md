# SwiftNotification
针对NotificationCenter的毛病做的工具，NotificationCenter需要关注移除，添加次数等等。

NSObject扩展一个属性：notifiCenter，继承自NSObject的类都可以很方便的使用它收发通知，不需要关心通知移除，deinit会自动移除, 并且防止多次添加同一个通知（只有最后一个生效）

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

### 安装

#### cocoapods导入

```
支持ios9以上版本，swift4以上版本都支持
pod ‘Swift_Notification’

```

#### SPM导入

`https://github.com/jackiehu/SwiftNotification`

#### 手动导入