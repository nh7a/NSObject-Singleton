//
//  AppDelegate.m
//  Example
//
//  Created by Naoki Hiroshima on 4/17/14.
//  Copyright (c) 2014 Sloth Labs, Inc. All rights reserved.
//

#import "AppDelegate.h"

#import "NSObject+Singleton.h"
#import "Foo.h"
#import "Bar.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"foo: %@", [Foo singleton]);
    NSLog(@"foo: %@", [Foo singleton]);
    NSLog(@"bar: %@", [Bar singleton]);
    NSLog(@"bar: %@", [Bar singleton]);
    NSLog(@"obj: %@", [NSObject singleton]);
    NSLog(@"obj: %@", [NSObject singleton]);

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
