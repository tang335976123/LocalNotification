//
//  RegisteredNotifi.h
//  FBSnapshotTestCase
//
//  Created by 唐基林 on 2019/1/20.
//

#import <Foundation/Foundation.h>
#import <UserNotifications/UserNotifications.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisteredNotifi : NSObject<UIApplicationDelegate,UNUserNotificationCenterDelegate>


/**
 *判断是否由远程消息通知触发应用程序启动
 */
+(void)initLauchOptionsWithOptions:(NSDictionary *)launchOptions;

/**
 * 这个方法在这AppDelegate里面调用 1､首先注册一个通知
 */
+(void)registeredNotificationapplication:(UIApplication *)application;


/**
 *自定本地通知弹框

 @param alertBody 主体消息
 @param alerttitel 消息标题
 @param alertAction used in UIAlert button or 'slide to unlock...' slider in place of unlock
 @param hasAction defaults to YES. pass NO to hide launching button/slider
 @param sendName app bundle中资源的名称或UILocalNotificationDefaultSoundName
 @param badgeNumber 0 means no change. defaults to 0
 @param category 本地通知的类别标识符，在UIUserNotificationCategory上设置并传递给+[UIUserNotificationSettings settingsForTypes:categories:]
 @param userInfo userInfo description
 @param alertLaunchImage 图标设置
 */
+(void)initCustomNOtifcationalertBody:(NSString *)alertBody alerttitel:(NSString *)alerttitel alertAction:(NSString *)alertAction hasAction:(BOOL)hasAction soundName:(NSString *)sendName applicationIconBadgeNumber:(NSInteger)badgeNumber category:(NSString *)category userInfoDic:(NSDictionary *)userInfo logimage:(NSString *)alertLaunchImage;


@end

NS_ASSUME_NONNULL_END
