//
//  MyClass.m
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "CompositeBuilder.h"
#import "OperationComposite.h"

@implementation CompositeBuilder

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)buildSubTree:(OperationComposite*)p leftChild:(OperationComposite*)l rightChild:(OperationComposite*)r
{
    if( l != nil ) [l setParent:p];
    if( r != nil ) [r setParent:p];
    [p setLeft:l];
    [p setRight:r];
    
    currentNode = p;
}

-(OperationComposite*)getResult
{
    while([currentNode getParent] != nil)
    {
        currentNode = (OperationComposite*)[currentNode getParent];
    }
    return currentNode;
}


@end
