//
//  LiteralLeaf.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "LiteralLeaf.h"
#import "ExpressionVisitor.h"

@implementation LiteralLeaf

- (id)init
{
    self = [super init];
    if (self) 
    {
        // Initialization code here.
    }
    
    return self;
}

-(id)initWithValue:(double)v
{
    self = [self init];
    value = v;
    
    return self;
}

-(double)value
{
    return value;
}

-(void)accept:(ExpressionVisitor*)ev
{
    [ev visitLiteral:self];
}


@end
