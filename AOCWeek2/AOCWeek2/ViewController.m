//
//  ViewController.m
//  AOCWeek2
//
//  Created by Michael Smith on 11/1/12.
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
    
    //Background Color
    self.view.backgroundColor = [UIColor colorWithRed:0.165 green:0.478 blue:0.549 alpha:1];
    
    //Book Title
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 20.0f)];
    if (label1 != nil)
    {
        label1.backgroundColor = [UIColor colorWithRed:0.09 green:0.384 blue:0.451 alpha:1];
        label1.text = @"Hunger Games";
        label1.textAlignment = NSTextAlignmentCenter;
    }
    [self.view addSubview:label1];
    
    //Author
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 35.0f, 100.0f, 20.0f)];
    if (label2 != nil)
    {
        label2.backgroundColor = [UIColor colorWithRed:0.024 green:0.208 blue:0.251 alpha:1];
        label2.text = @"Author:";
        label2.textAlignment = NSTextAlignmentRight;
        label2.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:label2];
    
    //Author Name
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 35.0f, 190.0f, 20.0f)];
    if (label3 != nil)
    {
        label3.backgroundColor = [UIColor colorWithRed:0.898 green:0.851 blue:0.812 alpha:1];
        label3.text = @"Suzanne Collins";
        label3.textAlignment = NSTextAlignmentLeft;
        label3.textColor = [UIColor colorWithRed:0.443 green:0.549 blue:0.416 alpha:1];
    }
    [self.view addSubview:label3];
    
    //Published
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 65.0f, 100.0f, 20.0f)];
    if (label4 != nil)
    {
        label4.backgroundColor = [UIColor colorWithRed:0.251 green:0.239 blue:0.227 alpha:1];
        label4.text = @"Published:";
        label4.textAlignment = NSTextAlignmentRight;
        label4.textColor = [UIColor colorWithRed:0.965 green:0.678 blue:0.102 alpha:1];
    }
    [self.view addSubview:label4];
    
    //Published Date
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(120.0f, 65.0f, 190.0f, 20.0f)];
    if (label5 != nil)
    {
        label5.backgroundColor = [UIColor colorWithRed:1 green:0.918 blue:0.655 alpha:1];
        label5.text = @"September 14, 2008";
        label5.textAlignment = NSTextAlignmentLeft;
        label5.textColor = [UIColor colorWithRed:0.329 green:0.192 blue:0.133 alpha:1];
    }
    [self.view addSubview:label5];
    
    //Summary
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 95.0f, 100.0f, 20.0f)];
    if (label6 != nil)
    {
        label6.backgroundColor = [UIColor colorWithRed:0.851 green:0.839 blue:0.592 alpha:1];
        label6.text = @"Summary";
        label6.textAlignment = NSTextAlignmentLeft;
        label6.textColor = [UIColor colorWithRed:0.486 green:0.263 blue:0 alpha:1];
    }
    [self.view addSubview:label6];
    
    //Summary Text
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 115.0f, 300.0f, 200.0f)];
    if (label7 != nil)
    {
        label7.backgroundColor = [UIColor colorWithRed:0.624 green:0.769 blue:0.624 alpha:1];
        label7.text = @"The Hunger Games is a novel about two friends who are placed in a fight till the death match with other kids from different areas of the country.  They are expected to either die or survive, when put in that situation they realize they care for each other.";
        label7.textAlignment = NSTextAlignmentCenter;
        label7.textColor = [UIColor whiteColor];
        label7.numberOfLines = 7;
    }
    [self.view addSubview:label7];
    
    //List of Items
    label8 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 325.0f, 100.0f, 20.0f)];
    if (label8 != nil)
    {
        label8.backgroundColor = [UIColor colorWithRed:0.624 green:0.224 blue:0.102 alpha:1];
        label8.text = @"List of Items";
        label8.textAlignment = NSTextAlignmentLeft;
        label8.textColor = [UIColor colorWithRed:0.851 green:0.533 blue:0.416 alpha:1];
    }
    [self.view addSubview:label8];
    
    //Item List
    label9 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 345.0f, 300.0f, 100.0f)];
    if (label9 != nil)
    {
        NSArray *itemList = [[NSArray alloc] initWithObjects:@"War, ", @"Food, ", @"Mines, ", @"Weapons, ", @"Love, ", nil];
        NSMutableString *list = [[NSMutableString alloc] initWithString:@""];
        for (int i=0; i<[itemList count]; i++)
        {
            [list insertString:(@"%@", [itemList objectAtIndex:i])  atIndex:0];
        }
        label9.backgroundColor = [UIColor colorWithRed:0.216 green:0.651 blue:0.608 alpha:1];
        label9.text = (@"%@", list);
        label9.textAlignment = NSTextAlignmentCenter;
        label9.textColor = [UIColor colorWithRed:0.612 green:0 blue:0.102 alpha:1];
        label9.numberOfLines = 2;
    }
    [self.view addSubview:label9];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
