//
//  AppDelegate.m
//  CustomTableView
//
//  Created by HayashidaKazumi on 2015/07/19.
//  Copyright (c) 2015年 HayashidaKazumi. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  MasterViewController *masterViewController = [[MasterViewController alloc] init];
  UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
  self.window.rootViewController = navigationController;
  [self.window makeKeyWindow];
  return YES;
}
@end
