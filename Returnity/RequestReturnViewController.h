//
//  RequestReturnViewController.h
//  Returnity
//
//  Created by Dalton on 6/29/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MapKit;
@import CoreLocation;


@interface RequestReturnViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;

@end
