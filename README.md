# MXKV

## Usage

```Swift
enum AppSettings {}

// 1
extension AppSettings {	        
	@MXStore("notificationOn", default: true)
	static var notificationOn: Bool
}

print("notificationOn == \(AppSettings.notificationOn)") // notificationOn == true
AppSettings.notificationOn = false
print("notificationOn == \(AppSettings.notificationOn)") // notificationOn == false

// 2
extension AppSettings {
	@MXStore("uiStyle")
	static var uiStyle: UIUserInterfaceStyle
}

extension UIUserInterfaceStyle: MXValue {
    static var mx_default: UIUserInterfaceStyle { .unspecified }
}

print("isUnset == \(AppSettings.$uiStyle.isUnset)") // isUnset == true
AppSettings.uiStyle = .dark
print("isUnset == \(AppSettings.$uiStyle.isUnset)") // isUnset == false
print("key: \(AppSettings.$uiStyle.key), val: \(AppSettings.uiStyle)") // key: AppSettings.uiStyle, val: .dark
AppSettings.$uiStyle.unset()
print("key: \(AppSettings.$uiStyle.key), val: \(AppSettings.uiStyle)") // key: AppSettings.uiStyle, val: .unspecified

```
