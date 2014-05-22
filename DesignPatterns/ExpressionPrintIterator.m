//
//  ExpressionPrintIterator.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "ExpressionPrintIterator.h"


@implementation ExpressionPrintIterator

- (id)init
{
    self = [super init];
    if (self) 
    {
        pv = [[PrintVisitor alloc] init];
    }
    
    return self;
}

-(NSString*)traverse:(ExpressionComponent*)e
{
    if( ![e isKindOfClass:[LiteralLeaf class]] )
    {
        OperationComposite* c = (OperationComposite*) e;
        
        [c accept:pv];
        [self traverse:[c left]];
        [c accept:pv];
        [self traverse:[c right]];
        [c accept:pv];
        
    } else 
    {
        [(LiteralLeaf*)e accept:pv];
    }
    
    return [pv expression];
}

-(void)setVisitor:(PrintVisitor*)p
{
    pv = p;
}


@end
