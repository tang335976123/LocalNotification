# LocalNotification

[![CI Status](https://img.shields.io/travis/唐基林/LocalNotification.svg?style=flat)](https://travis-ci.org/唐基林/LocalNotification)
[![Version](https://img.shields.io/cocoapods/v/LocalNotification.svg?style=flat)](https://cocoapods.org/pods/LocalNotification)
[![License](https://img.shields.io/cocoapods/l/LocalNotification.svg?style=flat)](https://cocoapods.org/pods/LocalNotification)
[![Platform](https://img.shields.io/cocoapods/p/LocalNotification.svg?style=flat)](https://cocoapods.org/pods/LocalNotification)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LocalNotification is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LocalNotification'
```

## Author

唐基林, 857258218@qq.com

## License

### 使用方法
 [RegisteredNotifi initLauchOptionsWithOptions:launchOptions];              /* 清除角标，角标统计*/
 [RegisteredNotifi registeredNotificationapplication:application];               /*获取弹框，首先要在- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
这个方法中 注册一个通知*/


/*这是要发送通知的内容设置 */
[RegisteredNotifi initCustomNOtifcationalertBody:@"hello1234567" alerttitel:@"通知来了" alertAction:@"xxxxx" hasAction:YES soundName:UILocalNotificationDefaultSoundName applicationIconBadgeNumber:10 category:@"categorybiaoji" userInfoDic:@{@"name" : @"女dsfsd", @"QQ":@"110",@"sex" : @"女",@"age" : @"18"} logimage:@" "];

LocalNotification is available under the MIT license. See the LICENSE file for more info.

### 欢迎各位大佬指导
