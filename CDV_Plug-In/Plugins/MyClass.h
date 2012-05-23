//
//  MyClass.h
//
//  Created by Nimish Nayak on 08/08/2011. 
//  Copyright 2011 Nimish Nayak. All rights reserved.
#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import "List/Program.h"
#import "List/System/StringLib.h"

@interface MyClass : CDVPlugin {
    
    NSString* callbackID;
}

@property (nonatomic, copy) NSString* callbackID;

// Instance Method  
- (void) print:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end
