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
    String args[] = {"","",""};
    List::Program::Main(args);
    
    /*
    // The first argument in the arguments parameter is the callbackID.
    // We use this to send data back to the successCallback or failureCallback
    // through PluginResult.   
    self.callbackID = [arguments pop];
    
    // Get the string that javascript sent us 
    NSString *stringObtainedFromJavascript = [arguments objectAtIndex:0];                 
    
    // Create the Message that we wish to send to the Javascript
    NSMutableString *stringToReturn = [NSMutableString stringWithString: @"StringReceived:"];
    
    // Append the received string to the string we plan to send out        
    [stringToReturn appendString: stringObtainedFromJavascript];
    
    // Create Plugin Result 
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                      messageAsString: [stringToReturn stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    // Checking if the string received is HelloWorld or not
    if ([stringObtainedFromJavascript isEqualToString:@"HelloWorld"]==YES)
    {
        // Call  the Success Javascript function
        [self writeJavascript: [pluginResult toSuccessCallbackString:self.callbackID]];
    } else
    {    
        // Call  the Failure Javascript function
        [self writeJavascript: [pluginResult toErrorCallbackString:self.callbackID]];
    }
     */
}
@end