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

//@property (strong, nonatomic) GMSMapView *mapView;

//@property (strong, nonatomic) NSURLSession *markerSession;

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

    self.view = mapView_;
    mapView_.settings.myLocationButton = YES;
    mapView_.settings.compassButton = YES;
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-23.5740406
                                                            longitude:-46.623408917
                                                                 zoom:17];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    mapView_.delegate = self;
//
//    // get the users location
    mapView_.myLocationEnabled = YES;
//
//    // show accessibility items on map
//    mapView_.accessibilityElementsHidden = NO;
    NSLog(@"User's location: %@", mapView_.myLocation);
//
//    
//    
//    
    // Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-23.5740406, -46.623408917);
    marker.title = @"Sydney";
//    marker.snippet = @"Australia";

    marker.appearAnimation = kGMSMarkerAnimationPop;
    marker.map = mapView_;
    
    
    GMSMarker *marker2 = [[GMSMarker alloc] init];
    marker2.position = CLLocationCoordinate2DMake(-23.5742042, -46.623517218);
    
    marker2.appearAnimation = kGMSMarkerAnimationPop;
    marker2.map = mapView_;
    
    GMSMarker *marker3 = [[GMSMarker alloc] init];
    marker3.position = CLLocationCoordinate2DMake(-23.5733956, -46.622544718);
    
    marker3.appearAnimation = kGMSMarkerAnimationPop;
    marker3.map = mapView_;
    
//    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
//    
//    config.URLCache = [[NSURLCache alloc] initWithMemoryCapacity: 2 * 1024 *1024
//                                        diskCapacity:10 * 1024 * 1024
//                                                        diskPath:@"Marker Data"];
//    
//    self.markerSession = [NSURLSession sessionWithConfiguration: config];
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    // center the screen to the current user location
- (void) mapView: (GMSMapView *) mapView  idleAtCameraPosition: (GMSCameraPosition *)camera{}

- (BOOL)prefersStatusBarHidden {
    return YES ;
}

//- (void)viewWillLayoutSubviews {
//    [super viewWillLayoutSubviews];
//    
//    self.mapView.padding =
//    UIEdgeInsetsMake(self.topLayoutGuide.length + 5, 0, self.bottomLayoutGuide.length + 5, 0 );
//
//}

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
