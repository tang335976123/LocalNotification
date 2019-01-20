//
//  TLViewController.m
//  LocalNotification
//
//  Created by 唐基林 on 01/20/2019.
//  Copyright (c) 2019 唐基林. All rights reserved.
//

#import "TLViewController.h"
#import "RegisteredNotifi.h"
@interface TLViewController ()

@end

@implementation TLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)sendMessage:(id)sender {
    [self reisteranotifi];
}

-(void)reisteranotifi
{
    [RegisteredNotifi initCustomNOtifcationalertBody:@"hello1234567" alerttitel:@"通知来了" alertAction:@"xxxxx" hasAction:YES soundName:UILocalNotificationDefaultSoundName applicationIconBadgeNumber:10 category:@"categorybiaoji" userInfoDic:@{@"name" : @"女dsfsd", @"QQ":@"110",@"sex" : @"女",@"age" : @"18"} logimage:@" "];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
