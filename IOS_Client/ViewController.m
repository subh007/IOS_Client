//
//  ViewController.m
//  IOS_Client
//
//  Created by subh on 24/09/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import "ViewController.h"
#include "ThreadCommunicate.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize urlText;
@synthesize ipText;
@synthesize portText;
@synthesize  thread;

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
/* initialize the newtwork */
-(void)initializeNetwork{
    /* obtain the NSOutput and NSInputStream */
}

- (IBAction)submit:(UIButton *)sender {
    NSLog(@" url :%@  IP : %@   port: %@",[self.urlText text],[self.ipText text],[self.portText text]);
    thread=[[ThreadCommunicate alloc]initWithURL:[self.urlText text] withIP:[self.ipText text] withPort:[self.portText text]];
    [thread initNetworkCommunication];
}




/* hide keyboard */

- (IBAction)hideKeyboard:(UITextField *)sender {
    [sender resignFirstResponder];
}
@end
