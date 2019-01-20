//
//  RegisteredNotifi.m
//  FBSnapshotTestCase
//
//  Created by 唐基林 on 2019/1/20.
//

#import "RegisteredNotifi.h"

@implementation RegisteredNotifi
+(void)initLauchOptionsWithOptions:(NSDictionary *)launchOptions
{
    //判断是否由远程消息通知触发应用程序启动
    if ([launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey]!=nil) {
        //获取应用程序消息通知标记数（即小红圈中的数字）
        long badge = [UIApplication sharedApplication].applicationIconBadgeNumber;
        if (badge>0) {
            //如果应用程序消息通知标记数（即小红圈中的数字）大于0，清除标记。
            badge--;
            //清除标记。清除小红圈中数字，小红圈中数字为0，小红圈才会消除。
            [UIApplication sharedApplication].applicationIconBadgeNumber = badge;
        }
    }}


+(void)registeredNotificationapplication:(UIApplication *)application
{
    //消息推送注册
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 10.0) {
        
        //iOS10特有
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        // 必须写代理，不然无法监听通知的接收与点击
        center.delegate = self;
        [center requestAuthorizationWithOptions:(UNAuthorizationOptionAlert | UNAuthorizationOptionBadge | UNAuthorizationOptionSound) completionHandler:^(BOOL granted, NSError * _Nullable error) {
            
            if (granted) {
                
                // 点击允许
                
                NSLog(@"注册成功");
                
                [center getNotificationSettingsWithCompletionHandler:^(UNNotificationSettings * _Nonnull settings) {
                    
                    NSLog(@"%@", settings);
                    
                }];
                
            } else {
                
                // 点击不允许
                
                NSLog(@"注册失败");
                
            }
            
        }];
        
    }else if ([[UIDevice currentDevice].systemVersion floatValue] >8.0){
        
        //iOS8 - iOS10
        
        [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert | UIUserNotificationTypeSound | UIUserNotificationTypeBadge categories:nil]];
        
        
        
    }else if ([[UIDevice currentDevice].systemVersion floatValue] < 8.0) {
        
        //iOS8系统以下
        
        [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeSound];
        
    }
    
    // 注册获得device Token
    
    [[UIApplication sharedApplication] registerForRemoteNotifications];
}


+(void)initCustomNOtifcationalertBody:(NSString *)alertBody alerttitel:(NSString *)alerttitel alertAction:(NSString *)alertAction hasAction:(BOOL)hasAction soundName:(NSString *)sendName applicationIconBadgeNumber:(NSInteger)badgeNumber category:(NSString *)category userInfoDic:(NSDictionary *)userInfo logimage:(NSString *)alertLaunchImage
{
    //2.定制(预制)定制
    //2.1.创建本地通知
    UILocalNotification *local = [[UILocalNotification alloc]init];
    
    local.fireDate = [NSDate dateWithTimeIntervalSinceNow:5.0];
    
    local.alertBody = alertBody;
    
    if (@available(iOS 8.2, *)) {
        local.alertTitle = alerttitel;
    } else {
        // Fallback on earlier versions
    }
    
//    local.alertAction = @"XXXXX";
    local.alertAction = alertAction;

//    local.hasAction = YES;
    local.hasAction = hasAction;
    
    local.soundName = UILocalNotificationDefaultSoundName;
//    local.soundName = sendName;

    local.applicationIconBadgeNumber = badgeNumber;
    
//    local.category = @"categorybiaoji";
    local.category = category;

    local.userInfo = userInfo;
    
    local.alertLaunchImage = alertLaunchImage;
//    local.userInfo = @{@"name" : @"女神", @"QQ":@"110",@"sex" : @"女",@"age" : @"18"};
    
    //2.2定制
    [[UIApplication sharedApplication]scheduleLocalNotification:local];
    //3.展示 (自动展示)
    
    
}








@end
