//
//  ViewController.m
//  Caculator
//
//  Created by bui manh tri on 5/11/16.
//  Copyright © 2016 TriBM. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorModel.h"
@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lblResult;
@property (strong, nonatomic) CaculatorModel *model;
@property (nonatomic)BOOL reset;
@property (nonatomic)BOOL waitNextOperand;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.model = [[CaculatorModel alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)carCalculate:(UIButton *)sender {
    self.model.operation = sender.titleLabel.text;
    self.model.currrendOperand = self.lblResult.text.floatValue;
    if([self.model.operation isEqualToString:@"+/-"]){
        self.model.xyz++;
    }
    self.waitNextOperand = YES;
    self.reset = YES;
}

- (IBAction)One:(UIButton *)sender {
    NSString *value = self.lblResult.text;
    if([value isEqualToString:@"0"] || self.waitNextOperand){
        value = @"";
        self.waitNextOperand = NO;
    }
    value = [value stringByAppendingString:sender.titleLabel.text];
    self.lblResult.text = value;
}

- (IBAction)carEqual:(id)sender {
    if(self.reset == NO){
        self.lblResult.text =@"0";
    }else{
    CGFloat value = [self.model performOperand:self.lblResult.text.floatValue];
    self.lblResult.text = [NSString stringWithFormat:@"%f", value];
    self.model.currrendOperand = value;
    }
}


- (IBAction)carClear:(id)sender {
    self.lblResult.text = @"0";
    self.model.operation = nil;
    self.reset = NO;
}

@end
