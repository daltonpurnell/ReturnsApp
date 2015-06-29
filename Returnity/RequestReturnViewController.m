//
//  RequestReturnViewController.m
//  Returnity
//
//  Created by Dalton on 6/29/15.
//  Copyright (c) 2015 Dalton. All rights reserved.
//

#import "RequestReturnViewController.h"

@interface RequestReturnViewController () {
    
    MKLocalSearch *localSearch;
    MKLocalSearchResponse *results;
    
}

@end

@implementation RequestReturnViewController
@synthesize matchingItems;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.mapView.showsUserLocation = YES;
    self.mapView.showsPointsOfInterest = YES;
    self.mapView.delegate = self;
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
    }
    [locationManager startUpdatingLocation];
    
    MKUserLocation *userLocation = self.mapView.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate, 20000, 20000);
    
    [self.mapView setRegion:region animated:YES];
    
}

- (IBAction)setDeadlineButtonTapped:(id)sender {
    
    
}

- (IBAction)useCurrentLocationButtonTapped:(id)sender {
    
    
}

- (IBAction)searchButtonTapped:(id)sender {
    [self getLocalSearchResults];
}


#pragma mark - Search methods

- (void)getLocalSearchResults{
    
    
    self.annotationView = [[MKAnnotationView alloc] init];
    
    // This cancels any previous searches
    [localSearch cancel];
    
    // This is to perform a new search
    MKLocalSearchRequest *request = [MKLocalSearchRequest new];
    request.naturalLanguageQuery = self.searchTextField.text;
    request.region = self.mapView.region;
    
    if (!matchingItems)
        matchingItems = [[NSMutableArray alloc]init];
    else{
        [matchingItems removeAllObjects];
        [self.mapView removeAnnotations:self.mapView.annotations];
    }
    
    
    // Not sure exactly what this does
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    localSearch = [[MKLocalSearch alloc] initWithRequest:request];
    
    [localSearch startWithCompletionHandler:^(MKLocalSearchResponse *response, NSError *error) {
        
        if (response.mapItems.count == 0)
            NSLog(@"No Matches");
        else
            for (MKMapItem *item in response.mapItems)
            {
                //                NSLog(@"name = %@", item.placemark.addressDictionary);
                //                [matchingItems addObject:item];
                
                Pin *annotation = [[Pin alloc]init];
                annotation.coordinate = item.placemark.coordinate;
                annotation.title = item.name;
                NSString *address = [item.placemark.addressDictionary objectForKey:@"Street"];
                NSString *neighborhood = [item.placemark.addressDictionary objectForKey:@"SubLocality"];
                annotation.subtitle = [NSString stringWithFormat:@"%@ - %@", address, neighborhood];
                [self.mapView addAnnotation:annotation];
            }
        
    }];
    
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    
    self.mapView.centerCoordinate = userLocation.location.coordinate;
    
}

-(BOOL)textFieldShouldReturn:(UITextField*)textfield{
    
    [self getLocalSearchResults];
    
    [textfield resignFirstResponder];
    
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
