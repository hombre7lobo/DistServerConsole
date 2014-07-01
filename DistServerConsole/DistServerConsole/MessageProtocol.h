//
//  MessageProtocol.h
//  DistServerConsole
//
//  Created by elwoodb on 29.06.14.
//  Copyright (c) 2014 Robert Scherbarth. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MessageProtocol

- (void)message;

- (void)addClient;
- (BOOL)removeClient;

@end
