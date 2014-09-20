//
//  HFViewController.m
//  KylesFirstTime
//
//  Created by Harrison Ferrone on 9/13/14.
//  Copyright (c) 2014 nexTIER Games. All rights reserved.
//

#import "HFViewController.h"

@interface HFViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnwser;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;

@end

@implementation HFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onCalculatebuttonpressed:(id)sender
{
    int myNumberInt = [self.myNumber.text intValue];

    int myMultiplierInt = [self.myMultiplier.text intValue];

    int intAnwser = myNumberInt * myMultiplierInt;

    self.myAnwser.text = [NSString stringWithFormat:@"%d", intAnwser];

    if (intAnwser > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
}

@end
