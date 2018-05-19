//
//  AppDelegate.m
//  CustomTableView
//
//  Created by HayashidaKazumi on 2015/07/19.
//  Copyright (c) 2015年 HayashidaKazumi. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MasterViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
  MasterViewController *controller = (MasterViewController *)navigationController.topViewController;
  return YES;
}
@end
