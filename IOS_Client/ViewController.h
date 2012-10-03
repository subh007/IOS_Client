//
//  ViewController.h
//  IOS_Client
//
//  Created by subh on 24/09/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThreadCommunicate.h"
@interface ViewController : UIViewController{
    ThreadCommunicate *thread;
}
@property (weak, nonatomic) IBOutlet UITextField *urlText;
@property (weak, nonatomic) IBOutlet UITextField *ipText;
@property (weak, nonatomic) IBOutlet UITextField *portText;
@property(retain,nonatomic) ThreadCommunicate *thread;
- (IBAction)submit:(UIButton *)sender;
- (IBAction)hideKeyboard:(UITextField *)sender;

@end
