//
//  DAAppDelegate.m
//  gitPod
//
//  Created by git on 08/23/2021.
//  Copyright (c) 2021 git. All rights reserved.
//

#import "DAAppDelegate.h"
#import "DAViewController.h"

@implementation DAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = UIColor .whiteColor;
    DAViewController* tempView = [[DAViewController alloc]init];
    self.window.rootViewController = tempView;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}


@end
