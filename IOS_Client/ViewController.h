//
//  ViewController.h
//  IOS_Client
//
//  Created by subh on 24/09/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *urlText;
@property (weak, nonatomic) IBOutlet UITextField *ipText;
@property (weak, nonatomic) IBOutlet UITextField *portText;
- (IBAction)submit:(UIButton *)sender;
- (IBAction)hideKeyboard:(UITextField *)sender;

@end
