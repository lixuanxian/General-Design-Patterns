//
//  ExpressionVisitor.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#pragma once
#import <Foundation/Foundation.h>
#import "OperationComposite.h"
#import "LiteralLeaf.h"
#import "Iterator.h"

@interface ExpressionVisitor : NSObject {
@private
    
}

-(void)visitAddOperation:(OperationComposite*)op;
-(void)visitSubOperation:(OperationComposite*)op;
-(void)visitMultOperation:(OperationComposite*)op;
-(void)visitLiteral:(LiteralLeaf*)op;
-(Iterator*)iterator;

@end
