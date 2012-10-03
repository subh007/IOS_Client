//
//  ThreadCommunicate.h
//  IOS_Client
//
//  Created by subh on 03/10/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThreadCommunicate : NSObject<NSStreamDelegate>{
    NSInputStream *in;
    NSOutputStream *out;
    NSString *url;
    NSString *ip;
    int port;
    
}
@property(retain,nonatomic)NSOutputStream *out;
@property(retain,nonatomic)NSInputStream *in;
@property(retain,nonatomic)NSString *url;
@property(retain,nonatomic)NSString *ip;

-(id)initWithURL:(NSString *)_url withIP:(NSString *)_ip withPort:(NSString *)port;
-(void)initNetworkCommunication;
@end
