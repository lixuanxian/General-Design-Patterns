//
//  DesignPatternsAppDelegate.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface DesignPatternsAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    NSTextView *textField;
    NSButton *runButton;
    NSTextField *aVal, *bVal, *cVal, *dVal, *eval;
}

@property(nonatomic,retain)  IBOutlet NSWindow *window;
@property(nonatomic,retain)  IBOutlet NSButton *runButton;
@property(nonatomic,retain)  IBOutlet NSTextField *aVal;
@property(nonatomic,retain)  IBOutlet NSTextField *bVal;
@property(nonatomic,retain)  IBOutlet NSTextField *cVal;
@property(nonatomic,retain)  IBOutlet NSTextField *dVal;
@property(nonatomic,retain)  IBOutlet NSTextField *eval;
@property(nonatomic,retain)  IBOutlet NSTextView *textField;

-(IBAction)run:(id)sender;

@end
