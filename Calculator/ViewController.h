//
//  ViewController.h
//  InevitableCalculator
//
//  Created by Komari Herring on 7/23/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

int operation;
double displayNumber;
double resultNumber;
BOOL isDecimal;

@interface ViewController : UIViewController
{
    IBOutlet UILabel *result;
    
}
- (void)setResultWithNumber:(int)theNumber;
- (void) operationWithNumber:(int)theNumber;
- (IBAction)zeroTapped:(id)sender;
- (IBAction)decimalTapped:(id)sender;
- (IBAction)oneTapped:(id)sender;
- (IBAction)twoTapped:(id)sender;
- (IBAction)threeTapped:(id)sender;
- (IBAction)fourTapped:(id)sender;
- (IBAction)fiveTapped:(id)sender;
- (IBAction)sixTapped:(id)sender;
- (IBAction)sevenTapped:(id)sender;
- (IBAction)eightTapped:(id)sender;
- (IBAction)nineTapped:(id)sender;
- (IBAction)acTapped:(id)sender;
- (IBAction)plusMinusTapped:(id)sender;
- (IBAction)percentTapped:(id)sender;
- (IBAction)divideTapped:(id)sender;
- (IBAction)multiplyTapped:(id)sender;
- (IBAction)subtractTapped:(id)sender;
- (IBAction)addTapped:(id)sender;
- (IBAction)equalSignTapped:(id)sender;





@end
