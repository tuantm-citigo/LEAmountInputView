//
//  ViewController.m
//  LEAmountInputViewDemo
//
//  Created by Lasha Efremidze on 5/3/15.
//  Copyright (c) 2015 Lasha Efremidze. All rights reserved.
//

#import "ViewController.h"
#import "LEAmountInputView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setup];
}

#pragma mark - LEAmountInputView

- (void)setup
{
    LEAmountInputView *amountInputView = [[LEAmountInputView alloc] initWithFrame:CGRectZero numberStyle:NSNumberFormatterCurrencyStyle];
    amountInputView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:amountInputView];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(amountInputView);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[amountInputView]-10-|" options:0 metrics:0 views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[amountInputView]-10-|" options:0 metrics:0 views:views]];
}

@end
