//
//  main.m
//  DistServerConsole
//
//  Created by Robert Scherbarth on 29.06.14.
//  Copyright (c) 2014 Robert Scherbarth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Server.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSConnection *theConnection;
        NSSocketPort *sockPort;
        
        Server *server = [[Server alloc] init];
        
        /*
         * Create a new socket port for your connection.
         */
        sockPort = [[NSSocketPort alloc] initWithTCPPort:1234];
        
        theConnection = [NSConnection new];
        theConnection = [NSConnection connectionWithReceivePort:sockPort sendPort:sockPort];
        
        
        [theConnection setRootObject: server];
        
        if ([theConnection registerName:@"server" withNameServer: [NSSocketPortNameServer sharedInstance]] == NO) {
            NSLog(@"Impossible to vend this object.");
            exit(1);
        } else {
            NSLog(@"Object vended.");
        }
        
        [[NSRunLoop currentRunLoop] run];
        
        NSHost *host;
        
        host = [NSHost currentHost];
        [host name];
        
        NSString *localHostname = (NSString *) host;
        NSLog(localHostname);
        
        
    }
    return 0;
}

