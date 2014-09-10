//
//  main.m
//  DistClient
//
//  Created by Robert Scherbarth on 29.06.14.
//  Copyright (c) 2014 Robert Scherbarth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MessageProtocol.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSConnection *theConnection;
        id server;
        
        NSSocketPort *sockPort = [[NSSocketPort alloc]  initRemoteWithTCPPort: 1234
                                                        host: @"pip09.inf.fh-koeln.de"];
        
        theConnection = [NSConnection  connectionWithReceivePort: nil
                                       sendPort: sockPort];
        
        
        server = [[theConnection rootProxy] self];
        

        [server setProtocolForProxy:@protocol(MessageProtocol)];

        [server addClient];
        [server message];
        NSLog(@"Work finished.");
        [server removeClient];
        
    }
    return 0;
}

