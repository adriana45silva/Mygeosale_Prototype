//
//  GoogleMapsTestViewController.m
//  mygeosale
//
//  Created by Adriana Silva on 9/29/14.
//  Copyright (c) 2014 mygeosale. All rights reserved.
//

#import "GoogleMapsTestViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import "PrincipalAppDelegate.h"

@interface GoogleMapsTestViewController () <GMSMapViewDelegate>

@end

@implementation GoogleMapsTestViewController {
    //implementation for the init of GM
    
    GMSMapView *mapView_;
//  GMSGeocoder *geoCoder_;

}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-23.5748192
                                                            longitude:-46.659218
                                                                 zoom:17];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];

    // get the users location
    mapView_.myLocationEnabled = YES;
    
    // show accessibility items on map
    mapView_.accessibilityElementsHidden = NO;
    NSLog(@"User's location: %@", mapView_.myLocation);
    self.view = mapView_;
    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-23.5748192, -46.659218);
//    marker.title = @"Sydney";
//    marker.snippet = @"Australia";
    marker.map = mapView_;
    
    [mapView_ addObserver:self
               forKeyPath:@"myLocation"
                  options:NSKeyValueObservingOptionNew
                  context:NULL];
    // Ask for My Location data after the map has already been added to the UI.
    dispatch_async(dispatch_get_main_queue(), ^{
        mapView_.myLocationEnabled = YES;
    });

    
    }



//- (void)observeValueForKeyPath:(NSString *)keyPath {
//        ofObject:(id)object
//        change:(NSDictionary *)change
//        context:(void *)context {
//    if (!firstLocationUpdate_) {
//        // If the first location update has not yet been recieved, then jump to that
//        // location.
//        firstLocationUpdate_ = YES;
//        CLLocation *location = [change objectForKey:NSKeyValueChangeNewKey];
//        mapView_.camera = [GMSCameraPosition cameraWithTarget:location.coordinate
//                                                         zoom:14];
//    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
