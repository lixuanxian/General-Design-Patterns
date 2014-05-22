//
//  OperationComposite.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "OperationComposite.h"
#import "ExpressionVisitor.h"

@implementation OperationComposite

- (id)init
{
    self = [super init];
    if (self) {
        [self setParent:nil];
    }
    
    return self;
}

-(id)initWithExpressionComponents:(ExpressionComponent*)l secondComponent:(ExpressionComponent*)r
{
    self = [self init];
    visitCount = 0;
    left = l;
    right = r;
    [left setParent:self];
    [right setParent:self];
    
    return self;
}

-(int)visitCount
{
    return visitCount;
}

-(void)incrementVisitCount
{
    if( visitCount >= 2) visitCount = -1;
    visitCount++;
}

-(void)setLeft:(ExpressionComponent*)l
{
    left = l;
}

-(ExpressionComponent*)left
{
    return left;
}

-(void)setRight:(ExpressionComponent*)r
{
    right = r;
}

-(ExpressionComponent*)right
{
    return right;
}

-(void)addComponent:(ExpressionComponent*)e
{
    if(left == nil) 
    {
        left = e;
        [e setParent:self];
    }
    else if(right == nil)
    {
        right = e;
        [e setParent:self];
    }
}

-(NSString*)operatorSymbol
{
    return @"";
}

-(void)accept:(ExpressionVisitor*)ov
{
    
}


@end
