//
//  OperationComposite.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ExpressionVisitor;
#import "ExpressionComponent.h"

@interface OperationComposite : ExpressionComponent 
{
@private
    ExpressionComponent* left, *right;
    NSString* operatorSymbol;
    int visitCount;
}

-(id)initWithExpressionComponents:(ExpressionComponent*)e1 secondComponent:(ExpressionComponent*)e2;
-(int)visitCount;
-(void)incrementVisitCount;
-(void)setLeft:(ExpressionComponent*)l;
-(ExpressionComponent*)left;
-(void)setRight:(ExpressionComponent*)r;
-(ExpressionComponent*)right;
-(void)addComponent:(ExpressionComponent*)c;
-(NSString*)operatorSymbol;
-(void)accept:(ExpressionVisitor*)ov;

@end
