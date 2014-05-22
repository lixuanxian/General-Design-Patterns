//
//  ExpressionVisitor.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "ExpressionVisitor.h"


@implementation ExpressionVisitor

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)visitAddOperation:(OperationComposite*)op
{
    
}

-(void)visitSubOperation:(OperationComposite*)op
{
    
}

-(void)visitMultOperation:(OperationComposite*)op
{
    
}

-(void)visitLiteral:(LiteralLeaf*)op
{
    
}

-(Iterator*)iterator
{
    // Abstract class methods shouldn't be used
    return nil;
}


@end
