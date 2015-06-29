//
//  Appearance.m
//  AnxietyTracker
//
//  Created by Dalton on 6/12/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "Appearance.h"
#import "RequestReturnViewController.h"
#import "RequestReturn2ViewController.h"
#import "DriverDashboardTableViewController.h"
#import "OrderDetailsViewController.h"


@implementation Appearance

+ (void)initializeAppearanceDefaults {
    
    [[UINavigationBar appearance] setBackgroundColor:[UIColor colorWithRed:141/255.0 green:148/255.0 blue:211/255.0 alpha:1]];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:141/255.0 green:148/255.0 blue:211/255.0 alpha:1]];
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    [[UINavigationBar appearance] setTranslucent:NO];
    
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
                                                           [UIColor whiteColor],
                                                           NSForegroundColorAttributeName,
                                                           nil]];
    [[UILabel appearance]setTextColor:[UIColor grayColor]];
    
//    [[UIView appearance] setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"candles.jpg"]]];
    

}

@end
