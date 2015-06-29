//
//  Fence.m
//  GroupProject
//
//  Created by Christopher Hoffmann on 5/8/15.
//  Copyright (c) 2015 Front Row Joes Inc. All rights reserved.
//

#import "Fence.h"

@implementation Fence

+ (id)sharedInstance {
    static Fence *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(id)init {
    if (self = [super init]) {
        self.delegate = self;
        self.desiredAccuracy = kCLLocationAccuracyBest;
    }
    return self;
}

#pragma mark CLLocationManager Delegate for geofences
-(void)addGeofenceInRegion:(CLRegion *)region {
    
    [self startMonitoringForRegion:region];
}

-(void)deleteGeoFence:(CLRegion *)region {
    
    [self stopMonitoringForRegion:region];
}

-(void)locationManager:(CLLocationManager *)manager didEnterRegion:(CLRegion *)region{
    NSLog(@"enter region: %@", region.identifier);
    
    
}


-(void)locationManager:(CLLocationManager *)manager didExitRegion:(CLRegion *)region{
    NSLog(@"exit region %@", region.identifier);
    
}
-(void)locationManager:(CLLocationManager *)manager didStartMonitoringForRegion:(CLRegion *)region{
    NSLog(@"monitoring delegate");
    
    [self requestStateForRegion:region];
}

#pragma mark CLLocationManager Delegate
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"%@", error);
    
}

-(void)locationManager:(CLLocationManager *)manager monitoringDidFailForRegion:(CLRegion *)region withError:(NSError *)error{
    
    NSLog(@"er:%@", error);
    
}

-(void)locationManager:(CLLocationManager *)manager didDetermineState:(CLRegionState)state forRegion:(CLRegion *)region{
    if(state==CLRegionStateInside)
        NSLog(@"inside");
    else if(state==CLRegionStateOutside)
        NSLog(@"outside");
    else
        NSLog(@"unknown");
}


@end
