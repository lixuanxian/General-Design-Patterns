//
//  CompositeBottomUpDirector.m
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "CompositeBottomUpDirector.h"
#import "CompositeBuilder.h"
#import "OperationComposite.h"

@implementation CompositeBottomUpDirector

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(id)initWithBuilder:(CompositeBuilder*)b
{
    self = [self init];
    builder = b;
    
    return self;
}

-(void)createComposite:(NSArray*)input
{
    for(int i=(int)[input count]-1; i > 0; i--)
    {
        if(i%2)
            [builder buildSubTree:[input objectAtIndex:(i-1)/2] leftChild:[input objectAtIndex:i] rightChild:[input objectAtIndex:i+1]];
    }
}


@end
