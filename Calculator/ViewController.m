//
//  ViewController.m
//  InevitableCalculator
//
//  Created by Komari Herring on 7/23/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    isDecimal = false;
    resultNumber = 0;
    result.adjustsFontSizeToFitWidth = TRUE;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setResultWithNumber:(int)theNumber {
    if(!isDecimal){
        displayNumber *= 10;
        displayNumber += theNumber;
        result.text = [NSString stringWithFormat:@"%.0f",
                       displayNumber];
    }
    else{
        result.text = [result.text stringByAppendingString:
                       [NSString stringWithFormat:@"%d", theNumber]];
    }
    displayNumber = [result.text floatValue];
}

- (void)operationWithNumber:(int)theNumber{
    isDecimal = false;
    if(resultNumber == 0){
        resultNumber = displayNumber;
    }
    else{
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        switch (operation) {
            case 1:
                resultNumber += displayNumber;
                break;
            case 2:
                resultNumber -= displayNumber;
                break;
            case 3:
                resultNumber *= displayNumber;
                break;
            case 4:
                resultNumber /= displayNumber;
                break;
            default:
                break;
        }
    }
    operation = theNumber;
    displayNumber = 0;
}
- (IBAction)zeroTapped:(id)sender {
    [self setResultWithNumber:0];
}

- (IBAction)decimalTapped:(id)sender {
    isDecimal = true;
    NSRange range = [result.text rangeOfString:@"."];
    if(range.location == NSNotFound){
        result.text = [result.text stringByAppendingString:@"."];
    }
}

- (IBAction)oneTapped:(id)sender {
    [self setResultWithNumber:1];
}

- (IBAction)twoTapped:(id)sender {
    [self setResultWithNumber:2];
}

- (IBAction)threeTapped:(id)sender {
    [self setResultWithNumber:3];
}

- (IBAction)fourTapped:(id)sender {
    [self setResultWithNumber:4];
}

- (IBAction)fiveTapped:(id)sender {
    [self setResultWithNumber:5];
}

- (IBAction)sixTapped:(id)sender {
    [self setResultWithNumber:6];
}

- (IBAction)sevenTapped:(id)sender {
    [self setResultWithNumber:7];
}

- (IBAction)eightTapped:(id)sender {
    [self setResultWithNumber:8];
}

- (IBAction)nineTapped:(id)sender {
    [self setResultWithNumber:9];
}

- (IBAction)acTapped:(id)sender {
    operation = 0;
    resultNumber = 0;
    displayNumber = 0;
    isDecimal = false;
    result.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)plusMinusTapped:(id)sender {
    displayNumber = 0 - displayNumber;
    result.text = [NSString stringWithFormat:@"%.2f",
                   displayNumber];
    
    
    result.text = [NSString stringWithFormat:@"%.0f",
                   displayNumber];
}

- (IBAction)percentTapped:(id)sender {
}

- (IBAction)divideTapped:(id)sender {
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:4];
}

- (IBAction)multiplyTapped:(id)sender {
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:3];
}

- (IBAction)subtractTapped:(id)sender {
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:2];
}

- (IBAction)addTapped:(id)sender {
    if (resultNumber != 0){
        [self operationWithNumber:operation];
        result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
        displayNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumber:1];
}

- (IBAction)equalSignTapped:(id)sender {
    [self operationWithNumber:operation];
    result.text = [NSString stringWithFormat:@"%.2f", resultNumber];
    displayNumber = [result.text floatValue];
    resultNumber = 0;
}

@end
