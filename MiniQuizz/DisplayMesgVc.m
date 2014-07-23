//
//  DisplayMesgVc.m
//  MiniQuizz
//
//  Created by CTSMacBook on 03/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "DisplayMesgVc.h"
#import "ViewController.h"
#import "AppDelegate.h"

@interface DisplayMesgVc ()

@end

@implementation DisplayMesgVc
@synthesize lblMesg,Mesg;

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
    // Do any additional setup after loading the view from its nib.
    self.lblMesg.text=self.Mesg;
}

- (void)viewDidUnload
{
    [self setLblMesg:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)gotoQuizz:(id)sender {
    ViewController *vc=[[ViewController alloc]initWithNibName:@"ViewController_iPhone" bundle:nil];
    [self dismissModalViewControllerAnimated:NO];
    [AppDelegate SwitchVC:vc];
}
@end
