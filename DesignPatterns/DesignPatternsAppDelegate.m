//
//  DesignPatternsAppDelegate.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "DesignPatternsAppDelegate.h"
#import "AbstractSyntaxTreeFacade.h"

@implementation DesignPatternsAppDelegate

@synthesize window,runButton,aVal,bVal,cVal,dVal,textField,eval;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

-(IBAction)run:(id)sender
{
    // (((a+b)*(a-c))+((b*d)-a))
    AbstractSyntaxTreeFacade* af = [[AbstractSyntaxTreeFacade alloc] init];
    
    [textField setString:@""];
    [eval setStringValue:@""];
    
    NSMutableArray* numbers = [[NSMutableArray alloc] init];
    [numbers addObject:[NSNumber numberWithDouble:[aVal doubleValue]]];
    [numbers addObject:[NSNumber numberWithDouble:[bVal doubleValue]]];
    [numbers addObject:[NSNumber numberWithDouble:[cVal doubleValue]]];
    [numbers addObject:[NSNumber numberWithDouble:[dVal doubleValue]]];
    
    [af newObject:numbers];
    
    [eval setStringValue:[[NSNumber numberWithDouble:[af interpret]] stringValue]];
    [textField setString:[[textField string] stringByAppendingString:[af print]]];
    
}

@end
