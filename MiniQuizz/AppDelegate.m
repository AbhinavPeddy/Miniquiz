//
//  AppDelegate.m
//  MiniQuizz
//
//  Created by CTSMacBook on 02/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "RootVC.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize rootvc = _rootvc;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.rootvc = [[RootVC alloc] initWithNibName:@"RootVC" bundle:nil];

    self.window.rootViewController = self.rootvc;
    [self.window makeKeyAndVisible];
    return YES;
}

+ (void)SwitchVC:(UIViewController *)vc
{
    AppDelegate *app = [UIApplication sharedApplication].delegate;
    [app.rootvc presentModalViewController:vc animated:NO];
}

+(NSMutableArray *)fillData{
    NSDictionary *questionDic1 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"The following function is where all program execution starts in an Objective-C program:",@"question",
                                  @"begin",@"option1",
                                  @"application:didFinishLaunchingWithOptions:",@"option2",
                                  @"shabang",@"option3",
                                  @"main",@"option4",
                                  @"4",@"answer", nil];
    
    NSDictionary *questionDic2 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"By convention, a class interface is stored in a file with which extension?",@"question",
                                  @".h",@"option1",
                                  @".m",@"option2",
                                  @".o",@"option3",
                                  @".c",@"option4",
                                  @"1",@"answer", nil];
    
    NSDictionary *questionDic3 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"By convention, a class implementation is stored in a file with which extension?",@"question",
                                  @".h",@"option1",
                                  @".m",@"option2",
                                  @".o",@"option3",
                                  @".c",@"option4",
                                  @"2",@"answer", nil];
    
    NSDictionary *questionDic4 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"Which of the following are valid comments in Objective-C?",@"question",
                                  @"--Fix this line later",@"option1",
                                  @"// Fix this line later",@"option2",
                                  @"/* Fix this line later */",@"option3",
                                  @"Both B & C",@"option4",
                                  @"4",@"answer", nil];
    
    NSDictionary *questionDic5 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"Objective-C makes extensive and intrinsic use of which of the following design patterns:",@"question",
                                  @"The Factory Method Pattern",@"option1",
                                  @"The Objective Pattern",@"option2",
                                  @"The Gestalt Pattern",@"option3",
                                  @"The Waffle Pattern",@"option4",
                                  @"1",@"answer", nil];
    
    NSDictionary *questionDic6 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"main and NSLog are examples of",@"question",
                                  @"Classes",@"option1",
                                  @"Functions",@"option2",
                                  @"Methods",@"option3",
                                  @"Messages",@"option4",
                                  @"2",@"answer", nil];
    
    NSDictionary *questionDic7 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"The line\nid <Painting> myObject;\nSays",@"question",
                                  @"MyObject is part of the Painting category",@"option1",
                                  @"MyObject conforms to the Painting category",@"option2",
                                  @"MyObject conforms to the Painting protocol",@"option3",
                                  @"Is not valid Objective-C syntax",@"option4",
                                  @"3",@"answer", nil];
    
    NSDictionary *questionDic8 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"11^5\nWhat does the operation shown above procedure?",@"question",
                                  @"6",@"option1",
                                  @"14",@"option2",
                                  @"-11",@"option3",
                                  @"-14",@"option4",
                                  @"2",@"answer", nil];
    
    NSDictionary *questionDic9 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"int x = 2 * 3 + 4 * 5;\nWhat value will x contain in the sample code above?",@"question",
                                  @"22",@"option1",
                                  @"26",@"option2",
                                  @"46",@"option3",
                                  @"50",@"option4",
                                  @"2",@"answer", nil];
    
    NSDictionary *questionDic10 = [[NSDictionary alloc] initWithObjectsAndKeys:
                                  @"main(){\nint c=--2;\nprinf(\"c=%d\",c);\n}",@"question",
                                  @"c=-2",@"option1",
                                  @"c=2",@"option2",
                                  @"garbage",@"option3",
                                  @"error",@"option4",
                                  @"4",@"answer", nil];
    
    NSMutableArray *questionsArray = [[NSMutableArray alloc]initWithObjects:questionDic1,questionDic2,questionDic3,questionDic4,questionDic5,questionDic6,questionDic7,questionDic8,questionDic9,questionDic10, nil];
    
    return questionsArray;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
