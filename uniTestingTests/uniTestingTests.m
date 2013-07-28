//
//  uniTestingTests.m
//  uniTestingTests
//
//  Created by infinity AR on 7/28/13.
//  Copyright (c) 2013 infinity AR. All rights reserved.
//

#import "uniTestingTests.h"
#import "AppDelegate.h"


@implementation uniTestingTests

- (void)setUp
{
    [super setUp];
    
    UIApplication *application = [UIApplication sharedApplication];
    AppDelegate *delegate = [application delegate];
    UIWindow *window = [delegate window];
    self.vc = (ViewController*)[window rootViewController];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
    self.vc = nil;
}

- (void)testViewControllerIsNotNil
{
    STAssertNotNil(self.vc, @"vc is nil");
}

- (void)testmapViewIsNotNil
{
    STAssertTrue([[self.vc mapView]showsUserLocation] == YES, @"map View user location is hidden");
}

@end
