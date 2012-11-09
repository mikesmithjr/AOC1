//
//  ViewController.h
//  AOCWeek3
//
//  Created by Michael Smith on 11/5/12.
//  Copyright (c) 2012 Michael Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (int)add: (NSInteger)num1 num2: (NSInteger)num2;
- (BOOL)compare: (NSInteger)int1 int2: (NSInteger)int2;
- (NSString*)append: (NSString*)string1 string2: (NSString*)string2;
- (NSString*)displayAlertWithString: (NSString*)string;
- (NSString*) nsNumberToNSString: (NSNumber*)additionResult;
@end
