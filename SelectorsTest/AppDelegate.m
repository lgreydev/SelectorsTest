//
//  AppDelegate.m
//  SelectorsTest
//
//  Created by Serhii Lukashchuk on 2023-12-01.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
//    [self testMethod];
    
    SEL selector1 = @selector(testMethod);
    SEL selector2 = @selector(testMethod:);
    SEL selector3 = @selector(testMethod:parameter2:);
    
    [self performSelector:selector1];
    [self performSelector:selector2 withObject:@"- test string"];
    [self performSelector:selector3 withObject:@"string1" withObject:@"string2"];
    
    [self performSelector:selector1 withObject:nil afterDelay:5.f];
    
    return YES;
}

- (void) testMethod {
    NSLog(@"testMethod");
}

- (void) testMethod:(NSString*) string {
    NSLog(@"testMethod %@", string);
}

- (void) testMethod:(NSString*) string parameter2:(NSString*) string2 {
    NSLog(@"testMethod: parametr2: %@, %@", string, string2);
}

#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
