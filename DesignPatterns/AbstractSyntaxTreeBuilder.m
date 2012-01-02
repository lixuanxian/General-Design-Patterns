//
//  AbstractSyntaxTreeBuilder.m
//  DesignPatterns
//
//  Created by Heiko Witte on 07.07.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "AbstractSyntaxTreeBuilder.h"

@implementation AbstractSyntaxTreeBuilder

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}


-(void)buildSubTree:(id)p leftChild:(id)l rightChild:(id)r
{
	
}
-(id)getResult
{
	return NULL;
}

@end
