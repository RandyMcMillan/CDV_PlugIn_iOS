//
//  MyClass.m
//  
// Created by Nimish Nayak on 08/08/2011. 
// Copyright 2011 Nimish Nayak. All rights reserved.

#import "MyClass.h" 

@implementation MyClass 

@synthesize callbackID;

-(void)print:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options  
{
    // The first argument in the arguments parameter is the callbackID.
    // We use this to send data back to the successCallback or failureCallback
    // through PluginResult.   
    self.callbackID = [arguments pop];

    String args[] = {"","",""};
    List::Program::Main(args);
    
    NSMutableString *stringToReturn = [NSMutableString stringWithString: @"ListOK"];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                      messageAsString: [stringToReturn stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    [self writeJavascript: [pluginResult toSuccessCallbackString:self.callbackID]];
    
    }
@end