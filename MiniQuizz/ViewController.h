//
//  ViewController.h
//  MiniQuizz
//
//  Created by CTSMacBook on 02/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSArray *questionsArray;
    int score;
    int currentQuestion;
}
@property(nonatomic,retain) IBOutlet UIButton *optionButton1;
@property(nonatomic,retain) IBOutlet UIButton *optionButton2;
@property(nonatomic,retain) IBOutlet UIButton *optionButton3;
@property(nonatomic,retain) IBOutlet UIButton *optionButton4;

@property(nonatomic,retain) IBOutlet UILabel *optionLabel1;
@property(nonatomic,retain) IBOutlet UILabel *optionLabel2;
@property(nonatomic,retain) IBOutlet UILabel *optionLabel3;
@property(nonatomic,retain) IBOutlet UILabel *optionLabel4;

@property(nonatomic,retain) IBOutlet UITextView *questionTextView;
-(IBAction)optionSelected:(UIButton *)radioButton;
-(IBAction)nextButtonTapped:(UIButton *)nextButton;
@end
