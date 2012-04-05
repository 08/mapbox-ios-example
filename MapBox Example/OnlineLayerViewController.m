//
//  OnlineLayerViewController.m
//  MapBox Example
//
//  Created by Justin Miller on 3/27/12.
//  Copyright (c) 2012 MapBox / Development Seed. All rights reserved.
//

#import "OnlineLayerViewController.h"

#import "RMMapView.h"
#import "RMMapBoxSource.h"

@implementation OnlineLayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Online Layer" image:[UIImage imageNamed:@"online.png"] tag:0];
    
    RMMapBoxSource *onlineSource = [[RMMapBoxSource alloc] initWithReferenceURL:[NSURL URLWithString:@"http://a.tiles.mapbox.com/v3/mapbox.mapbox-streets.json"]];

    RMMapView *mapView = [[RMMapView alloc] initWithFrame:self.view.bounds andTilesource:onlineSource];
    
    mapView.zoom = 2;
    
    mapView.backgroundColor = [UIColor darkGrayColor];
    
    mapView.decelerationMode = RMMapDecelerationFast;

    mapView.adjustTilesForRetinaDisplay = YES;
    
    [self.view addSubview:mapView];
}

@end