//
//  AppDelegate.m
//  AOCWeek1
//
//  Created by Michael Smith on 10/24/12.
//  Copyright (c) 2012 Michael Smith. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //My Custom Code
    int maxFlightQtyPerPilot = 3;
    NSString *pilotName = @"Jack";
    NSString *planeName = @"Beast";
    BOOL isSunUp = YES;
    BOOL goodWeather = YES;
    BOOL planeLanded = YES;
    BOOL batteryCharged = NO;
    BOOL planeLoadedStatus = YES;
    float timePerFlight = 5.5f;
    float timePerPilot = (float)maxFlightQtyPerPilot * timePerFlight;
    
    //AND Comparison
    //Checking weather conditions and sun status
    if (isSunUp == YES && goodWeather == YES) {
        NSLog(@"The sun is up and the weather is good lets go flying");
    }
    
    //If statement
    //Checking plane loaded status
    if (planeLoadedStatus == YES) {
        NSLog(@"The plane is in the truck lets go to the flying field");
    }
    else {
        NSLog(@"Time to load the plane.");
    }
    
    //Float Casting
    //Calculating maximum flight time per pilot
    NSLog(@"%@ can fly %@ for %i minutes today.", pilotName, planeName, (int)timePerPilot);
    
    //For loop
    //Pilot flight countdown
    for (int i = timePerFlight ; i > 0; i--) {
        NSLog(@"%@ has %d minutes remaining in this flight.", pilotName, i);
        if (i == 2) {
            NSLog(@"%@ you need to land the %@ or you will crash you only less than %d minutes of battery left!", pilotName, planeName, i);
            break;
        }
    }
    
    //Nested loop
    //Time to charge the battery
    if (batteryCharged == NO) {
        NSLog(@"It's time to charge the battery in the plane");
        int batteryLevel = 0;
        for (int i = batteryLevel; i < 5; i++) {
            NSLog(@"Battery is at level %d it will be full at level 5", i);
            if (i == 4) {
                NSLog(@"Battery is full time for more flying.");
            }
        }
    }
    
    //While Loop
    //Number of flights for the Pilot
    while (maxFlightQtyPerPilot > 0) {
        NSLog(@"%@ can fly %d more times today", pilotName, maxFlightQtyPerPilot);
        maxFlightQtyPerPilot--;
    }
    
    //If, AND, Else If statements and conditional
    //Did the plane land safely
    if (planeLanded == YES && timePerPilot == 0) {
        NSLog(@"The plane landed safe and %@ is done flying for today", pilotName);
    }
    else if (planeLanded == NO && timePerPilot == 0) {
        NSLog(@"%@ crashed %@ and is done flying for a while", pilotName, planeName);
    }
    
    //If, OR, Else statements and conditional
    //Is it time to go home?
    if (timePerPilot == 0 || isSunUp == NO) {
        NSLog(@"Time to go home");
    }
    else {
        NSLog(@"Keep Flying!!");
    }
    int stop = 0;
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
