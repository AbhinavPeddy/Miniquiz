//
//  AppDelegate.h
//  MiniQuizz
//
//  Created by CTSMacBook on 02/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootVC;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) RootVC *rootvc;
+(NSMutableArray *)fillData;
+ (void)SwitchVC:(UIViewController *)vc;
@end
