//
//  Server.m
//  DistServerConsole
//
//  Created by elwoodb on 29.06.14.
//  Copyright (c) 2014 Robert Scherbarth. All rights reserved.
//

#import "Server.h"

@implementation Server

- (void) message {
    NSLog(@"do something : ");
    for(int i = 0; i < 5; i++) {
        NSLog(@".");
        [NSThread sleepForTimeInterval:1.0];
    }
    NSLog(@"end ...");
}

- (void)addClient
{
    _numberOfClients++;
    NSLog(@"Added client");
}

- (BOOL)removeClient
{
    _numberOfClients--;
    NSLog(@"Removed client");
    
    return YES;
}


@end
