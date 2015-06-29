//
//  Pin.h
//  GroupProject
//
//  Created by Christopher Hoffmann on 5/8/15.
//  Copyright (c) 2015 Front Row Joes Inc. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface Pin : MKAnnotationView<MKAnnotation>{
    
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    
}
@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy)NSString *title;
@property (nonatomic, copy)NSString *subtitle;

@end
