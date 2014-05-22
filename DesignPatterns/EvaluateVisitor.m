//
//  EvaluateVisitor.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "EvaluateVisitor.h"
#import "ExpressionEvaluateIterator.h"

@implementation EvaluateVisitor

- (id)init
{
    self = [super init];
    if (self) 
    {
        s = [[NSMutableArray alloc] init];
        result = 0;
    }
    
    return self;
}

-(void)visitAddOperation:(OperationComposite *)op
{
    double l, r;
    if( [op visitCount] == 2)
    {
        if([op parent] != nil)
        {
            r = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            l = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            [s addObject:[NSNumber numberWithDouble:l+r]];
        } else 
        {
            r = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            l = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            result = l + r;
        }
    }
    [op incrementVisitCount];
}

-(void)visitSubOperation:(OperationComposite *)op
{
    double l, r;
    if( [op visitCount] == 2)
    {
        if([op parent] != nil)
        {
            r = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            l = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            [s addObject:[NSNumber numberWithDouble:l-r]];
        } else 
        {
            r = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            l = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            result = l - r;
        }
    }
    [op incrementVisitCount];
}

-(void)visitMultOperation:(OperationComposite *)op
{
    double l, r;
    if( [op visitCount] == 2)
    {
        if([op parent] != nil)
        {
            r = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            l = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            [s addObject:[NSNumber numberWithDouble:l*r]];
        } else 
        {
            r = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            l = [(NSNumber*)[s lastObject] doubleValue];
            [s removeLastObject];
            result = l * r;
        }
    }
    [op incrementVisitCount];
}

-(void)visitLiteral:(LiteralLeaf *)lf
{
    [s addObject:[NSNumber numberWithDouble:[lf value]]];
}

-(double)result
{
    return result;
}

-(ExpressionEvaluateIterator*)iterator
{
    ExpressionEvaluateIterator* i = [[ExpressionEvaluateIterator alloc] init];
    [i setVisitor:self];
    return i;
}


@end
