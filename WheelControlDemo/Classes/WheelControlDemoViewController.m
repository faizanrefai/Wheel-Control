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


#import "WheelControlDemoViewController.h"

@implementation WheelControlDemoViewController

@synthesize statusLabel;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	colorNames = [[NSArray alloc] initWithObjects:
				  @"Red", 
				  @"Red Violet",
				  @"Violet",
				  @"Blue Violet",
				  @"Blue",
				  @"Blue Green",
				  @"Green",
				  @"Yellow Green",
				  @"Yellow",
				  @"Yellow Orange",
				  @"Orange",
				  @"Red Orange",
				  nil];
	
	WheelControl *wheelControl = [[WheelControl alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
	wheelControl.image = [UIImage imageNamed:@"color_wheel.gif"];
	wheelControl.center = self.view.center;
	wheelControl.refPoint = CGPointMake(298, 136);
	wheelControl.delegate = self;
	[wheelControl calculateMarkersWithCenter:CGPointMake(150, 150) arcCount:[colorNames count] startPoint:CGPointMake(148, 2)];
	[self.view addSubview:wheelControl];
	
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

#pragma mark -
#pragma mark WheelControlDelegate methods

-(void) movedWithInitialAngularVelocity:(float)initialVelocity {
	
}

-(void) didRotate:(float)radians {
	
}

-(void) interruptedAfterRotation:(float)radians {
	
}

-(void) rotationDidEnd:(float) radians {
	
}

-(void) nearestIndexAfterRotationEnded:(int)index {
	NSLog(@"Selected Color is: %@", [colorNames objectAtIndex:index]);
	statusLabel.text = [NSString stringWithFormat:@"Selected Color is: %@", [colorNames objectAtIndex:index]];
}


- (void)dealloc {
	[statusLabel release];
	[colorNames release];
    [super dealloc];
}

@end
