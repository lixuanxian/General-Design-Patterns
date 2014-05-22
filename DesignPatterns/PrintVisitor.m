//
//  PrintVisitor.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "PrintVisitor.h"
#import "ExpressionPrintIterator.h"

@implementation PrintVisitor

- (id)init
{
    self = [super init];
    if (self) 
    {
        expression = @"";
    }
    
    return self;
}

-(NSString*)expression
{
    return expression;
}

-(void)visitAddOperation:(OperationComposite *)op
{
    int t = [op visitCount];
    if(t == 0) expression = [expression stringByAppendingString:@"("];
    else if( t == 1 ) expression = [expression stringByAppendingString:[op operatorSymbol]];
    else if( t == 2 ) 
    {
        expression = [expression stringByAppendingString:@")"];
    }
    
    [op incrementVisitCount];
}

-(void)visitSubOperation:(OperationComposite *)op
{
    int t = [op visitCount];
    if(t == 0) expression = [expression stringByAppendingString:@"("];
    else if( t == 1 ) expression = [expression stringByAppendingString:[op operatorSymbol]];
    else if( t == 2 ) 
    {
        expression = [expression stringByAppendingString:@")"];
    }
    
    [op incrementVisitCount];
}

-(void)visitMultOperation:(OperationComposite *)op
{
    int t = [op visitCount];
    if(t == 0) expression = [expression stringByAppendingString:@"("];
    else if( t == 1 ) expression = [expression stringByAppendingString:[op operatorSymbol]];
    else if( t == 2 ) 
    {
        expression = [expression stringByAppendingString:@")"];
    }
    
    [op incrementVisitCount];
}

-(void)visitLiteral:(LiteralLeaf *)lf
{
    NSNumber *n = [NSNumber numberWithDouble:[lf value]];
    expression = [expression stringByAppendingString:[n stringValue]];
}

-(ExpressionPrintIterator*)iterator
{
    ExpressionPrintIterator* i = [[ExpressionPrintIterator alloc] init];
    [i setVisitor:self];
    return i;
}


@end
