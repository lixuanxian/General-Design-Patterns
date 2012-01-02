//
//  MultOperation.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "MultOperation.h"


@implementation MultOperation

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(id)initWithExpressionComponents:(ExpressionComponent*)e1 secondComponent:(ExpressionComponent*)e2
{
    self = [self init];
    self = [super initWithExpressionComponents:e1 secondComponent:e2];
    
    return self;
}

-(double) operation:(double)e1 secondValue:(double)e2
{
    return e1*e2;
}

-(NSString*)getOperatorSymbol
{
    return @"*";
}

-(void)accept:(ExpressionVisitor*)ov
{
    [ov visitMultOperation:self];
}


@end
