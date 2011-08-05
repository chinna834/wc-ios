
//
//  Map.m
//  Wheaton App
//
//  Created by support on 7/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Map.h"
#import "MapKit/MapKit.h"


@implementation Map

@synthesize mapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [mapView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.mapView.mapType = MKMapTypeHybrid;
    CLLocationCoordinate2D coords;
    coords.latitude = 41.870024;
    coords.longitude = -88.098384;
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(coords, 
                                                                       150,
                                                                       150);
    MKCoordinateRegion adjustedRegion = [mapView regionThatFits:viewRegion];
    [mapView setRegion:adjustedRegion];
    
    
    coords.latitude = 41.868334;
    coords.longitude = -88.094650;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                title:@"Corinthian Co-op"]];
    
    coords.latitude = 41.870643;
    coords.longitude = -88.096887;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Sports & Recreation Complex"]];
    
    coords.latitude = 41.872681;
    coords.longitude = -88.096774;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Fischer Hall"]];

    coords.latitude = 41.875281;
    coords.longitude = -88.098137;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Lawson Field"]];
    coords.latitude = 41.870120;
    coords.longitude = -88.099526;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Buswell Memorial Library"]];
    
    coords.latitude = 41.870707;
    coords.longitude = -88.094805;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Smith/Traber Halls"]];
    
    coords.latitude = 41.871774;
    coords.longitude = -88.098899;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Hearth House"]];    
    coords.latitude = 41.871436;
    coords.longitude = -88.098936;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Phoenix House"]];    
    
    coords.latitude = 41.871253;
    coords.longitude = -88.098917;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Irving House"]];
    
    coords.latitude = 41.871073;
    coords.longitude = -88.098917;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Hunter House"]];
    
    coords.latitude = 41.871097;
    coords.longitude = -88.098542;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Fine Arts House"]];
    
    coords.latitude = 41.871448;
    coords.longitude = -88.095245;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"LeBar House"]];
    
    coords.latitude = 41.871265;
    coords.longitude = -88.095259;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Country House"]];
    
    coords.latitude = 41.870909;
    coords.longitude = -88.095852;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"International House"]];
    
    coords.latitude = 41.870685;
    coords.longitude = -88.095860;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Kay House"]];
    
    coords.latitude = 41.870518;
    coords.longitude = -88.095862;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Fellowship House"]];
    
    coords.latitude = 41.870364;
    coords.longitude = -88.095892;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Mathetai House"]];
    
    coords.latitude = 41.868790;
    coords.longitude = -88.094875;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"White House"]];
    
    coords.latitude = 41.868263;
    coords.longitude = -88.096831;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Chase House"]];
    
    coords.latitude = 41.866892;
    coords.longitude = -88.100932;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Graham House"]];
    
    coords.latitude = 41.870026;
    coords.longitude = -88.101527;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Harbor House"]];
    
    coords.latitude = 41.870849;
    coords.longitude = -88.101111;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Teresa House"]];
    
    coords.latitude = 41.871085;
    coords.longitude = -88.101135;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Kilby House"]];
    
    coords.latitude = 41.869888;
    coords.longitude = -88.100621;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Edman Memorial Chapel"]];
    
    coords.latitude = 41.869053;
    coords.longitude = -88.100626;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Pierce Memorial Chapel"]];
    
    coords.latitude = 41.868746;
    coords.longitude = -88.100669;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"McAlister Conservatory"]];
    
    coords.latitude = 41.869173;
    coords.longitude = -88.099875;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Adams Hall"]];
    
    coords.latitude = 41.868498;
    coords.longitude = -88.099617;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Blanchard Hall"]];
    
    coords.latitude = 41.869145;
    coords.longitude = -88.098738;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Memorial Student Center"]];
    
    coords.latitude = 41.868966;
    coords.longitude = -88.098196;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Williston Hall"]];
    
    coords.latitude = 41.868890;
    coords.longitude = -88.097933;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Student Service Building"]];
    
    coords.latitude = 41.869685;
    coords.longitude = -88.098952;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Schell Hall"]];
    
    coords.latitude = 41.870056;
    coords.longitude = -88.098877;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Wyngarden Health Center"]];
    
    coords.latitude = 41.870611;
    coords.longitude = -88.098453;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Armerding Hall"]];
    
    coords.latitude = 41.870212;
    coords.longitude = -88.097890;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Evans Hall"]];
    
    coords.latitude = 41.869848;
    coords.longitude = -88.097895;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"McManis Hall"]];
    
    coords.latitude = 41.869165;
    coords.longitude = -88.097139;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Todd M. Beamer Student Center"]];
    
    coords.latitude = 41.869733;
    coords.longitude = -88.096152;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Wheaton Science Center"]];
    
    coords.latitude = 41.869577;
    coords.longitude = -88.095192;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Jenks Hall"]];
    
    coords.latitude = 41.869653;
    coords.longitude = -88.094607;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Arena Theater"]];
    
    coords.latitude = 41.866737;
    coords.longitude = -88.099376;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Billy Graham Center"]];
    
    coords.latitude = 41.867404;
    coords.longitude = -88.096002;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"McCully Stadium"]];
    
    coords.latitude = 41.867659;
    coords.longitude = -88.094092;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Bean Stadium"]];
    
    coords.latitude = 41.867787;
    coords.longitude = -88.092837;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Chase Service Center"]];
    
    coords.latitude = 41.870617;
    coords.longitude = -88.101181;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Marion E. Wade Center"]];
    
    coords.latitude = 41.868298;
    coords.longitude = -88.101487;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Westgate"]];
    
    coords.latitude = 41.866175;
    coords.longitude = -88.099907;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Campus Utility"]];
    
    coords.latitude = 41.866065;
    coords.longitude = -88.095873;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Crescent Apartments"]];
    
    coords.latitude = 41.865826;
    coords.longitude = -88.095916;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Michigan Apartments"]];
    
    coords.latitude = 41.869729;
    coords.longitude = -88.092306;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Saint & Elliot Residential Complex"]];
    
    coords.latitude = 41.869573;
    coords.longitude = -88.089978;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"Terrace Apartments"]];
    
    coords.latitude = 41.868239;
    coords.longitude = -88.097155;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"602 Chase"]];
    
    coords.latitude = 41.868203;
    coords.longitude = -88.095401;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"802 College"]];
    
    coords.latitude = 41.868243;
    coords.longitude = -88.094881;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"814 College"]];
    
    coords.latitude = 41.868271;
    coords.longitude = -88.094628;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"818 College"]];
    
    coords.latitude = 41.868422;
    coords.longitude = -88.093566;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"904 College"]];
    
    coords.latitude = 41.868466;
    coords.longitude = -88.093293;
    [mapView addAnnotation:[[PinAnnotation alloc] initWithCoordinate:coords 
                                                               title:@"916 College"]];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end