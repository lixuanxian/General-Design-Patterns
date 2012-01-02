//
//  CompositeTopDownDirector.h
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CompositeBuilder;

@interface CompositeTopDownDirector : NSObject 
{
@private
    CompositeBuilder* builder;
}

-(id)initWithBuilder:(CompositeBuilder*)b;
-(void)createComposite:(NSArray*)input;

@end
