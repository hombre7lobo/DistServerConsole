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
        Server *server = [[Server alloc] init];
        
        theConnection = [NSConnection new];
        //[[NSNotificationCenter defaultCenter]   addObserver:server
        //                                        selector:@selector(connectionDidDie:)
        //                                        name:NSConnectionDidDieNotification
        //                                        object:nil];
        
        [theConnection setRootObject: server];
        
        if ([theConnection registerName:@"server"] == NO) {
            NSLog(@"Impossible to vend this object.");
        } else {
            NSLog(@"Object vended.");
        }
        
        //[[NSRunLoop currentRunLoop] configureAsServer];
        [[NSRunLoop currentRunLoop] run];
        
        
        
    }
    return 0;
}

