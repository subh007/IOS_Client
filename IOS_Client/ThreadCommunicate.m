//
//  ThreadCommunicate.m
//  IOS_Client
//
//  Created by subh on 03/10/12.
//  Copyright (c) 2012 subh. All rights reserved.
//

#import "ThreadCommunicate.h"

@implementation ThreadCommunicate
@synthesize out;
@synthesize in;
@synthesize ip;
@synthesize url;
-(id)initWithURL:(NSString *)_url withIP:(NSString *)_ip withPort:(NSString *)_port{
    self=[super init];
    self.url=_url;
    self.ip=_ip;
    self->port=[_port intValue];
    return self;
}
-(void)initNetworkCommunication{
    NSLog(@"initNetwrok");
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    CFStreamCreatePairWithSocketToHost(NULL, (__bridge CFStringRef)self.ip, port, &readStream, &writeStream);
    self.in=(__bridge NSInputStream*)readStream;
    self.out=(__bridge NSOutputStream*)writeStream;
    [self.in setDelegate:self];
    [self.out setDelegate:self];
    [self.in scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	[self.out scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	[self.in open];
	[self.out open];
    
    NSLog(@"init completed");
    
    
    NSData *data =[[NSData alloc]initWithData:[self.url dataUsingEncoding:NSUTF8StringEncoding]];
    [self.out write:[data bytes] maxLength:data.length];
    NSLog(@"write completed");
}
-(void)stream:(NSStream *)aStream handleEvent:(NSStreamEvent)eventCode{
    switch (eventCode) {
        case NSStreamEventOpenCompleted:
            NSLog(@"successfully opened");
            break;
        case NSStreamEventHasBytesAvailable:
            if (aStream==self.in) {
                uint8_t buffer[1024];
                
                while ([self.in hasBytesAvailable]) {
                    int len= [self.in read:buffer maxLength:sizeof(buffer)];
                    if(len>0){
                        NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
                        
                        if (nil != output) {
                            NSLog(@"server said: %@", output);
                        }

                    }
                }
            }
        case NSStreamEventErrorOccurred:
            NSLog(@"error");
            break;
        default:
            break;
    }
}
@end
