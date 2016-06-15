//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Max Tkach on 6/15/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()
@property (weak, nonatomic) IBOutlet UILabel *epochTimeLabel;

@end

@implementation FISEpochViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)epochTimeButton:(UIButton *)sender {
    self.epochTimeLabel.text = [NSString stringWithFormat:@"%f", [self epochMethod]];
}

- (CGFloat)epochMethod {
    return [[NSDate date] timeIntervalSince1970];
}

@end
