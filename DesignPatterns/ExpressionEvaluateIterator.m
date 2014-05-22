//
//  ExpressionEvaluateIterator.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "ExpressionEvaluateIterator.h"


@implementation ExpressionEvaluateIterator

- (id)init
{
    self = [super init];
    if (self) 
    {
        ev = [[EvaluateVisitor alloc] init];
    }
    
    return self;
}

-(double)traverse:(ExpressionComponent*)e
{
    if( ![e isKindOfClass:[LiteralLeaf class]] )
    {
        OperationComposite* c = (OperationComposite*) e;
        
        [c accept:ev];
        [self traverse:[c left]];
        [c accept:ev];
        [self traverse:[c right]];
        [c accept:ev];
        
    } else [(LiteralLeaf*)e accept:ev];
    
    return [ev result];
}

-(void)setVisitor:(EvaluateVisitor*)p
{
    ev = p;
}


@end
