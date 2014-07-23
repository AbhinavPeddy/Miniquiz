
#import "ViewController.h"
#import "AppDelegate.h"
#import "DisplayMesgVc.h"
#import "NSArray+RandomSelection.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize questionTextView=_questionTextView;
@synthesize optionLabel1=_optionLabel1;
@synthesize optionLabel2=_optionLabel2;
@synthesize optionLabel3=_optionLabel3;
@synthesize optionLabel4=_optionLabel4;
@synthesize optionButton1=_optionButton1;
@synthesize optionButton2=_optionButton2;
@synthesize optionButton3=_optionButton3;
@synthesize optionButton4=_optionButton4;

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    [self initializeTest];
}

-(void)fillDataWithDictionary:(NSDictionary *)questionDic{
    NSString *question=[NSString stringWithFormat:@"%d.%@",currentQuestion+1,[questionDic objectForKey:@"question"]];
    _questionTextView.text = question;
    _optionLabel1.text = [questionDic objectForKey:@"option1"];
    _optionLabel2.text = [questionDic objectForKey:@"option2"];
    _optionLabel3.text = [questionDic objectForKey:@"option3"];
    _optionLabel4.text = [questionDic objectForKey:@"option4"];
}
-(IBAction)nextButtonTapped:(UIButton *)nextButton{
    if (!_optionButton1.selected&&!_optionButton2.selected&&!_optionButton3.selected&&!_optionButton4.selected)
    {
        UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:@"Mini Quiz" message:@"Select an option..." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alerView show];
    }
    else {
        if (currentQuestion < 5) {
            if ([self isCurrectAnswer]) {
                score++;
            }
            if (currentQuestion == 4) {
                currentQuestion ++;
                [self displayScore];
                return;
            }
            currentQuestion ++;
            [self fillDataWithDictionary:[questionsArray objectAtIndex:currentQuestion]];
            
            [self clearAllRadioButtons];
        }
        else{
            [self displayScore];
        }
        NSLog(@"score %d",score);  
    }
}
-(void)displayScore{
    DisplayMesgVc *vc=[[DisplayMesgVc alloc]initWithNibName:@"DisplayMesgVc" bundle:nil];
    vc.Mesg=[self message];
    [self dismissModalViewControllerAnimated:NO];
    [AppDelegate SwitchVC:vc];
}
-(void)initializeTest{
    score = 0;
    currentQuestion = 0;
    [self clearAllRadioButtons];
    questionsArray = [[AppDelegate fillData] randomSelectionWithCount:5];
    [self fillDataWithDictionary:[questionsArray objectAtIndex:0]];
}
-(NSString *)message{
    
    if (score <= 2) {
        return @"Please try again!";
    }
    else if (score <= 3) {
        return @"Good job!";
    }
    
    else if (score == 4) {
        return @"Excellent work!";
    }
    
    else if (score == 5) {
        return @"You are a genius!";
    }
    return @"You are a genius!";
}

-(BOOL)isCurrectAnswer{
    NSDictionary *currentQuestionDic = [questionsArray objectAtIndex:currentQuestion];
    NSString *answer = nil;
    if (_optionButton1.selected) {
        answer = @"1";
    }
    if (_optionButton2.selected) {
        answer = @"2";
    }
    if (_optionButton3.selected) {
        answer = @"3";
    }
    if (_optionButton4.selected) {
        answer = @"4";
    }
    NSLog(@"%@",[currentQuestionDic objectForKey:@"answer"]);
    return [[currentQuestionDic objectForKey:@"answer"] isEqualToString:answer];
}
-(UIButton *)getNetRadioButtonWithYvalue:(int)yValue{
    UIButton *radioButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [radioButton addTarget:self action:@selector(optionSelected:) forControlEvents:UIControlEventTouchUpInside];
    [radioButton setFrame:CGRectMake(10, yValue, 30, 30)];
    return radioButton;
}
-(UILabel *)getNewOptionLableWithYvalue:(int)yValue{
    UILabel *optionLable = [[UILabel alloc] initWithFrame:CGRectMake(50, yValue-3, 250, 30)];
    ;
    optionLable.backgroundColor=[UIColor clearColor];
    optionLable.textColor=[UIColor whiteColor];
    return optionLable;
}
-(IBAction)optionSelected:(UIButton *)radioButton{
    [self clearAllRadioButtons];
    [radioButton setImage:[UIImage imageNamed:@"check"] forState:UIControlStateNormal];
    [radioButton setSelected:YES];
}
-(void)clearAllRadioButtons{
    [_optionButton1 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_optionButton2 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_optionButton3 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    [_optionButton4 setImage:[UIImage imageNamed:@"uncheck"] forState:UIControlStateNormal];
    
    [_optionButton1 setSelected:NO];
    [_optionButton2 setSelected:NO];
    [_optionButton3 setSelected:NO];
    [_optionButton4 setSelected:NO];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
