//
//  CaculatorModel.h
//  Caculator
//
//  Created by bui manh tri on 5/11/16.
//  Copyright © 2016 TriBM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CaculatorModel : NSObject
@property (copy, nonatomic) NSString *operation;
@property(nonatomic) CGFloat currrendOperand;

-(CGFloat)performOperand: (CGFloat)operand;
@property double abc;
@property int xyz;
@end
