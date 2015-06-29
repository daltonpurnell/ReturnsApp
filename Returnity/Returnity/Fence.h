//
//  Fence.h
//  GroupProject
//
//  Created by Christopher Hoffmann on 5/8/15.
//  Copyright (c) 2015 Front Row Joes Inc. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface Fence : CLLocationManager<CLLocationManagerDelegate>

+ (id)sharedInstance;
-(void)addGeofenceInRegion:(CLRegion *)region;
-(void)deleteGeoFence:(CLRegion *)region;

@end
