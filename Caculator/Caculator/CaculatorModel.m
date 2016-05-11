//
//  CaculatorModel.m
//  Caculator
//
//  Created by bui manh tri on 5/11/16.
//  Copyright © 2016 TriBM. All rights reserved.
//

#import "CaculatorModel.h"

@implementation CaculatorModel

-(CGFloat)performOperand:(CGFloat)operand
{

    CGFloat value = self.currrendOperand;
    if([self.operation isEqualToString:@"x"]){
        self.abc = operand;
        value *= operand;
    }
    else if ([self.operation isEqualToString:@"/"]){
        self.abc = operand;
        value /= operand;
        NSLog(@"%f",self.abc);
    }else if ([self.operation isEqualToString:@"-"]){
        self.abc = operand;
        value -= operand;
    }else if ([self.operation isEqualToString:@"+"]){
        self.abc = operand;
        value += operand;
    }else if([self.operation isEqualToString:@"%"]){
        self.abc = operand;
        value = operand/100;
    }
    else if([self.operation isEqualToString:@"+/-"]){
        if(self.xyz%2==1){
            value -= self.abc;
        }else if(self.xyz%2==0){
            value += self.abc;
        }
        NSLog(@"%i",self.xyz);
        
    }
    return value;
}

@end
