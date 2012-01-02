//
//  ExpressionPrintIterator.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExpressionComponent.h"
#import "OperationComposite.h"
#import "Iterator.h"
#import "PrintVisitor.h"

@interface ExpressionPrintIterator : Iterator 
{
@private
    PrintVisitor *pv;
}

-(NSString*)traverse:(ExpressionComponent*)e;
-(void)setVisitor:(PrintVisitor*)p;

@end
