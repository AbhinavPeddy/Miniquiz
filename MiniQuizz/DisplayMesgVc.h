//
//  DisplayMesgVc.h
//  MiniQuizz
//
//  Created by CTSMacBook on 03/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisplayMesgVc : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblMesg;
@property (retain, nonatomic) NSString *Mesg;
- (IBAction)gotoQuizz:(id)sender;

@end
