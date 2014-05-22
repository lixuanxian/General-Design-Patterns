//
//  LiteralLeaf.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ExpressionVisitor;
#import "OperationComposite.h"

@interface LiteralLeaf : OperationComposite 
{
@private
    double value;
}

-(id)initWithValue:(double)v;
-(double)value;
-(void)accept:(ExpressionVisitor*)ev;

@end
