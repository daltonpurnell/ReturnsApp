//
//  RequestReturn2ViewController.h
//  Returnity
//
//  Created by Dalton on 6/29/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pin.h"

@import MapKit;
@import CoreLocation;


@interface RequestReturn2ViewController : UIViewController <UITextFieldDelegate, MKMapViewDelegate, CLLocationManagerDelegate> {
    
    CLLocationManager *locationManager;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITextField *itemTextField;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property(nonatomic,retain)MKAnnotationView *annotationView;
@property(strong, nonatomic)NSMutableArray *matchingItems;
@end
