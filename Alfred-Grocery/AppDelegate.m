//
//  AppDelegate.m
//  Alfred-Grocery
//
//  Created by Daniela Postigo on 9/3/15.
//  Copyright (c) 2015 Daniela Postigo. All rights reserved.
//

#import "AppDelegate.h"
#import "QuickModel.h"

@interface AppDelegate ()

@property(nonatomic, strong) QuickModel *model;
@end

@implementation AppDelegate


- (BOOL) application: (UIApplication *)application didFinishLaunchingWithOptions: (NSDictionary *)launchOptions {
    // Override point for customization after application launch

//    NSArray *items = @[
//            [ALGroceryItem itemWithName: @"Blue tortilla chips" extendedName: @"Garden of Eatin' Organic Blue Corn Tortilla Chips" quantity: 1 occurrence: ALItemTypeRepeatForever],
//            [ALGroceryItem itemWithName: @"Milk" extendedName: @"Organic Valley 2% Milk" quantity: 1 occurrence: ALItemTypeRepeatForever],
//            [ALGroceryItem itemWithName: @"Soy creamer" extendedName: @"Organic Valley Original Organic Soy Creamer" quantity: 1 occurrence: ALItemTypeRepeatForever],
//            [ALGroceryItem itemWithName: @"Hummus" extendedName: @"Tribe brand" quantity: 1 occurrence: ALItemTypeRepeatForever],
//            [ALGroceryItem itemWithName: @"Clif Apricot Bar" extendedName: @"Clif Apricot Bar" quantity: 1 occurrence: ALItemTypeRepeatForever],
//            [ALGroceryItem itemWithName: @"Avocados" extendedName: @"extended" quantity: 3 occurrence: ALItemTypeRepeatForever],
//            [ALGroceryItem itemWithName: @"Milk" extendedName: @"extended" quantity: 1 occurrence: ALItemTypeRepeatForever]
//    ];


    self.model = [QuickModel sharedModel];
//    self.model.items = items;

    self.model.data = @{
            @"items" : @[
                    @{
                            @"title" : @"Organic Valley 2% Milk",
                            @"name" : @"Milk"
                    },
                    @{
                            @"name" : @"Soy creamer",
                            @"title" : @"Organic Valley Original Organic Soy Creamer"
                    },
                    @{
                            @"name" : @"Hummus",
                            @"title" : @"Tribe brand",
                    },
                    @{
                            @"name" : @"Clif Apricot Bar",
                            @"title" : @"Clif Apricot Bar"
                    },
                    @{
                            @"name" : @"Clif Blueberry Bar",
                            @"title" : @"Snacks"
                    },
                    @{
                            @"name" : @"Avocados",
                            @"quantity" : @3,
                    },
                    @{
                            @"name" : @"Blue tortilla chips",
                            @"title" : @"Garden of Eatin' Organic Blue Corn Tortilla Chips"
                    }

            ],
            @"aisles" : @[
                    @{
                            @"name" : @"dairy"
                    },
                    @{
                            @"name" : @"fruits"
                    },
                    @{
                            @"name" : @"veggies"
                    },
                    @{
                            @"name" : @"meat"
                    },
                    @{
                            @"name" : @"deli"
                    },
                    @{
                            @"name" : @"pantry"
                    },
                    @{
                            @"name" : @"drinks"
                    },
                    @{
                            @"name" : @"frozen"
                    },
                    @{
                            @"name" : @"pets"
                    },
                    @{
                            @"name" : @"household"
                    }

            ]
    };


    [[UIBarButtonItem appearance] setTitleTextAttributes: @{
//                    NSFontAttributeName : [UIFont boldSystemFontOfSize: 11.0]

                    NSFontAttributeName : [UIFont fontWithName: @"OpenSans-Semibold" size: 12.0],
                    NSForegroundColorAttributeName : [UIColor colorWithWhite: 0.1 alpha: 1.0],
                    NSKernAttributeName : @1

            }
                                                forState: UIControlStateNormal];

    [[UINavigationBar appearance] setTitleTextAttributes: @{
            NSFontAttributeName : [UIFont fontWithName: @"OpenSans-Semibold" size: 13.0],
            NSForegroundColorAttributeName : [UIColor colorWithWhite: 0.1 alpha: 1.0],
    }];
    return YES;
}

- (void) applicationWillResignActive: (UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void) applicationDidEnterBackground: (UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void) applicationWillEnterForeground: (UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void) applicationDidBecomeActive: (UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void) applicationWillTerminate: (UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
