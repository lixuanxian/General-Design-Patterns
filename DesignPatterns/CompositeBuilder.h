//
//  MyClass.h
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractSyntaxTreeBuilder.h"

@class OperationComposite;

@interface CompositeBuilder : AbstractSyntaxTreeBuilder 
{
@private
    OperationComposite* currentNode;
}

-(void)buildSubTree:(OperationComposite*)p leftChild:(OperationComposite*)l rightChild:(OperationComposite*)r;
-(OperationComposite*)getResult;

@end
