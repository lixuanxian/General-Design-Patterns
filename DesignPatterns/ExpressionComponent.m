//
//  ExpressionComponent.m
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "ExpressionComponent.h"


@implementation ExpressionComponent

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(void)setParent:(ExpressionComponent*)p
{
    parent = p;
}

-(ExpressionComponent*)parent
{
    return parent;
}


@end
