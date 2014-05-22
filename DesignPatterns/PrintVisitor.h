//
//  PrintVisitor.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExpressionVisitor.h"

@class ExpressionPrintIterator;

@interface PrintVisitor : ExpressionVisitor 
{
@private
    NSString *expression;
}

-(void)visitAddOperation:(OperationComposite *)op;
-(void)visitSubOperation:(OperationComposite *)op;
-(void)visitMultOperation:(OperationComposite *)op;
-(void)visitLiteral:(LiteralLeaf *)lf;
-(NSString*)expression;
-(ExpressionPrintIterator*)iterator;

@end
