/***
 * Excerpted from "iOS SDK Development",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/adios for more book information.
***/
//
//  PRPAppDelegate.m
//  Recipes
//
//  Created by Bill Dudney on 9/14/12.
//  Copyright (c) 2012 Pragmatic Programmers LLC. All rights reserved.
//

#import "PRPAppDelegate.h"

#import "PRPViewController.h"

@implementation PRPAppDelegate

//
- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  NSString *directions = @"Put the flour and other dry ingredients in a bowl,\
  stir in the eggs until evenly moist. Add chocolate chips and stir in until even. \
  Place tablespoon-size portions on greased cookie sheet and bake at 350° for \
  6 minutes.";
  PRPRecipe *recipe = [[PRPRecipe alloc] init];
  recipe.title = @"Chocolate Chip Cookies";
  recipe.image = [UIImage imageNamed:@"cookies.jpg"];
  recipe.directions = directions;
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.viewController = [[PRPViewController alloc]
                         initWithNibName:@"PRPViewController"
                         bundle:nil];
  self.viewController.recipe = recipe;
  self.window.rootViewController = self.viewController;
  [self.window makeKeyAndVisible];
  return YES;
}
//

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
