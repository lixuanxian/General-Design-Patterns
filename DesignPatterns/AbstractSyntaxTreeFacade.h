//
//  AbstractSyntaxTreeFacade.h
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ExpressionComponent;

@interface AbstractSyntaxTreeFacade : NSObject 
{
@private
    ExpressionComponent *ast;
}

-(ExpressionComponent*)newObject:(NSArray*)num;
-(double)interpret;
-(NSString*)print;

@end
