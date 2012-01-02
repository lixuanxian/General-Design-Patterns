//
//  AbstractSyntaxTreeBuilder.h
//  DesignPatterns
//
//  Created by Heiko Witte on 07.07.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//


@interface AbstractSyntaxTreeBuilder : NSObject
{
}

-(void)buildSubTree:(id)p leftChild:(id)l rightChild:(id)r;
-(id)getResult;

@end
