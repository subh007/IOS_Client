//
//  ViewController.m
//  IOS_Client
//
//  Created by subh on 24/09/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize urlText;
@synthesize ipText;
@synthesize portText;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(UIButton *)sender {
    NSLog(@" url :%@ ",[self.urlText text]);
}

- (IBAction)hideKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}
@end
