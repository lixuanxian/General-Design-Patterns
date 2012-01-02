//
//  ExpressionEvaluateIterator.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EvaluateVisitor.h"
#import "Iterator.h"

@interface ExpressionEvaluateIterator : Iterator 
{
@private
    EvaluateVisitor* ev;
}

-(double)traverse:(ExpressionComponent*)e;
-(void)setVisitor:(EvaluateVisitor*)p;

@end
