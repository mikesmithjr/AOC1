//
//  ViewController.m
//  AOCWeek4
//
//  Created by Michael Smith on 11/14/12.
//  Copyright (c) 2012 Michael Smith. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Background Color
    self.view.backgroundColor = [UIColor colorWithRed:0.165 green:0.478 blue:0.549 alpha:1];
    
    //Username Label
    userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 85.0f, 20.0f)];
    if (userName != nil)
    {
        userName.backgroundColor = [UIColor colorWithRed:0.165 green:0.478 blue:0.549 alpha:1];
        userName.text = @"Username:";
        userName
        .textColor = [UIColor whiteColor];
        
    }
    [self.view addSubview:userName];
    
    //Username Text Field
    userNameField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 215.0f, 25.0f)];
    if (userNameField != nil)
    {
        userNameField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userNameField];
    }
    
    
    //Login Button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.tag = BUTTON_ZERO;
        loginButton.frame = CGRectMake(224.0f, 40.0f, 90.0f, 20.0f);
        loginButton.tintColor = [UIColor colorWithRed:0.024 green:0.208 blue:0.251 alpha:1];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    
    //Login Info Text Label
    loginInfoText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f, 40.0f)];
    if (loginInfoText != nil)
    {
        loginInfoText.backgroundColor = [UIColor colorWithRed:1 green:0.918 blue:0.655 alpha:1];
        loginInfoText.text = @"Please Enter Username";
        loginInfoText.textColor = [UIColor colorWithRed:0.329 green:0.192 blue:0.133 alpha:1];
        loginInfoText.textAlignment = NSTextAlignmentCenter;
    }
    [self.view addSubview:loginInfoText];
    
    //Show Date Button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.tag = BUTTON_ONE;
        dateButton.frame = CGRectMake(10.0f, 180.0f, 90.0f, 40.0f);
        dateButton.tintColor = [UIColor colorWithRed:0.624 green:0.769 blue:0.624 alpha:1];
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    
    //Get Date with NSDate
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    if (dateFormat != nil)
    {
        [dateFormat setDateFormat:@"EEE MMM d, yyyy, h:mm a, vvvv"];
        dateString = [dateFormat stringFromDate:date];
        dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message:dateString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    }
    
    //Information Button
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
        infoButton.tag = BUTTON_TWO;
        infoButton.frame = CGRectMake(10.0f, 400.0f, 25.0f, 25.0f);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:infoButton];
    }
    
    //Created by Info
    createdByText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 435.0f, 300.0f, 60.0f)];
    if (createdByText != nil)
    {
        createdByText.backgroundColor = [UIColor colorWithRed:0.216 green:0.651 blue:0.608 alpha:1];
        createdByText.textColor = [UIColor colorWithRed:0.612 green:0 blue:0.102 alpha:1];
        createdByText.text = @"This application was created by: Michael Smith.";
        createdByText.numberOfLines = 2;
    }
}

-(void)onClick:(UIButton*)button
{
    
    switch (button.tag)
    {
        case 0:
        {
            NSString *userNameText = [userNameField text];
            if (userNameText.length < 1 )
            {
                loginInfoText.text = @"Username cannot be empty.";
                loginInfoText.backgroundColor = [UIColor colorWithRed:0.624 green:0.224 blue:0.102 alpha:1];
                loginInfoText.textColor = [UIColor colorWithRed:0.851 green:0.533 blue:0.416 alpha:1];
                
            }else if (userNameText.length > 1)
            {
                NSString *userLoggedIn = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", userNameText];
                loginInfoText.text = userLoggedIn;
                loginInfoText.backgroundColor = [UIColor colorWithRed:0.251 green:0.239 blue:0.227 alpha:1];
                loginInfoText.textColor = [UIColor colorWithRed:0.965 green:0.678 blue:0.102 alpha:1];
            }
        }
        break;
        
        case 1:
        {
            if (dateAlert != nil)
            {
                [dateAlert show];
            }
            
        }
        break;
        
        case 2:
        {
            [self.view addSubview:createdByText];
        }
        break;
            
        default:
            break;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
