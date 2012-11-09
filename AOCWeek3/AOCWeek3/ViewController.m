//
//  ViewController.m
//  AOCWeek3
//
//  Created by Michael Smith on 11/5/12.
//  Copyright (c) 2012 Michael Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Addition Call
    int num1 = 5;
    int num2 = 10;
    NSInteger addition = [self add:num1 num2:num2];
    //Converting the Integer into a NSNumber
    NSNumber *displayAddResults = [[NSNumber alloc] initWithInt:addition];
    //Converting the NSNumber into a NSString
    NSString *resultString = [self nsNumberToNSString:displayAddResults];
    [self displayAlertWithString:resultString];
    
    //Compare Call
    int int1 = 15;
    int int2 = 15;
    [self compare:int1 int2:int2];
    
    
    //Append String Call
    NSString *mutableString = [self append:@"Objective-C" string2:@" Rocks!!!"];
    [self displayAlertWithString:mutableString];
    
}

//Addition Function
- (int)add: (NSInteger)num1 num2: (NSInteger)num2
{
    int total = num1 + num2;
    
    return total;
}

//Addition Result NSNumber to NSString
- (NSString*) nsNumberToNSString: (NSNumber*)additionResult
{
    NSInteger result = [ additionResult integerValue];
    NSString *resultString = [[NSString alloc] initWithFormat:@"The resulting number is %d", result];
    return resultString;
}

//Compare Function
- (BOOL)compare: (NSInteger)int1 int2: (NSInteger)int2
{
    if (int1 == int2)
    {
        NSString *boolTrue = [[NSString alloc] initWithFormat:@"The two numbers %d and %d are equal.", int1, int2];
        [self displayAlertWithString:boolTrue];
        return YES;
    }else{
        NSString *boolFalse = [[NSString alloc] initWithFormat:@"The two numbers %d and %d are not equal.", int1, int2];
        [self displayAlertWithString:boolFalse];
        return NO;
    }
}

//String Combination function
- (NSString*)append: (NSString*)string1 string2: (NSString*)string2
{
    NSMutableString *appededString = [[NSMutableString alloc] initWithString:string1];
    if (appededString != nil)
    {
        [appededString appendString: string2];
    };
    return appededString;
}

//Display Alert With String Function
- (NSString*)displayAlertWithString: (NSString*)string
{
    UIAlertView *stringAlert = [[UIAlertView alloc] initWithTitle:@"Alert" message: string delegate:nil cancelButtonTitle:@"Ok"otherButtonTitles:nil];
    if (stringAlert != nil)
    {
        [stringAlert show];
    }
    return @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
