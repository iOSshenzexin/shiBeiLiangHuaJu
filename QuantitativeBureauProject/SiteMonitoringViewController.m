//
//  SiteMonitoringViewController.m
//  QuantitativeBureauProject
//
//  Created by 杨晓婧 on 16/3/17.
//  Copyright © 2016年 shangtong. All rights reserved.
//

#import "SiteMonitoringViewController.h"
#import <MAMapKit/MAMapKit.h>

@interface SiteMonitoringViewController ()<MAMapViewDelegate>{
    MAMapView *_mapView;
}

@end

@implementation SiteMonitoringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [MAMapServices sharedServices].apiKey = @"0a2d473e0d005aa5ec0fac6a83bb0935";
    _mapView = [[MAMapView alloc] initWithFrame:self.viewMap.frame];
    _mapView.delegate = self;
    _mapView.showsUserLocation = YES;
    [_mapView setUserTrackingMode: MAUserTrackingModeFollow animated:YES];
    //_mapView.customizeUserLocationAccuracyCircleRepresentation= YES;
    [_mapView setZoomLevel:16.1 animated:YES];
    //_mapView.userTrackingMode = MAUserTrackingModeFollow;
    [self.view addSubview:_mapView];
}



@end
