//
//  RootVC.m
//  MiniQuizz
//
//  Created by CTSMacBook on 03/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "RootVC.h"
#import "ViewController.h"

@interface RootVC ()

@end

@implementation RootVC

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
  
    [self performSelector:@selector(gotoQuizz) withObject:nil afterDelay:3];
}

- (void)gotoQuizz
{
    ViewController *vc = [[ViewController alloc]initWithNibName:@"ViewController_iPhone" bundle:nil];
    [self presentModalViewController:vc animated:NO];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
