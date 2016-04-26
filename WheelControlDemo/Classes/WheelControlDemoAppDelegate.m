/*
 
 Disclaimer: IMPORTANT:  This Walnut Labs software is supplied to you by Walnut Labs. 
 ("Walnut Labs") in consideration of your agreement to the following
 terms, and your use, installation, modification or redistribution of
 this Walnut Labs software constitutes acceptance of these terms.  If you do
 not agree with these terms, please do not use, install, modify or
 redistribute this Walnut Labs software.
 
 In consideration of your agreement to abide by the following terms, and
 subject to these terms, Walnut Labs grants you a personal, non-exclusive
 license, under Walnut Labs's copyrights in this original Walnut Labs software (the
 "Walnut Labs Software"), to use, reproduce, modify and redistribute the Walnut Labs
 Software, with or without modifications, in source and/or binary forms;
 provided that if you redistribute the Walnut Labs Software in its entirety and
 without modifications, you must retain this notice and the following
 text and disclaimers in all such redistributions of the Walnut Labs Software.
 Neither the name, trademarks, service marks or logos of Walnut Labs Inc. may
 be used to endorse or promote products derived from the Walnut Labs Software
 without specific prior written permission from Walnut Labs.  Except as
 expressly stated in this notice, no other rights or licenses, express or
 implied, are granted by Walnut Labs herein, including but not limited to any
 patent rights that may be infringed by your derivative works or by other
 works in which the Walnut Labs Software may be incorporated.
 
 The Walnut Labs Software is provided by Walnut Labs on an "AS IS" basis.  Walnut Labs
 MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION
 THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS
 FOR A PARTICULAR PURPOSE, REGARDING THE WALNUT LABS SOFTWARE OR ITS USE AND
 OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS.
 
 IN NO EVENT SHALL WALNUT LABS BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL
 OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION,
 MODIFICATION AND/OR DISTRIBUTION OF THE WALNUT LABS SOFTWARE, HOWEVER CAUSED
 AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE),
 STRICT LIABILITY OR OTHERWISE, EVEN IF WALNUT LABS HAS BEEN ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
 
 Copyright (C) 2010 Walnut Labs. All Rights Reserved.
 
 */


#import "WheelControlDemoAppDelegate.h"
#import "WheelControlDemoViewController.h"

@implementation WheelControlDemoAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.

    // Add the view controller's view to the window and display.
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
