//
//  CompositeTopDownDirector.m
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "CompositeTopDownDirector.h"
#import "CompositeBuilder.h"
#import "OperationComposite.h"

@implementation CompositeTopDownDirector

- (id)init
{
    self = [super init];
    if (self) 
    {
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
    int lastElement = (int)([input count]-1)/2;
    for(int i=0; i < lastElement; i++)
    {
        if( 2*i >= [input count] )
            [builder buildSubTree:[input objectAtIndex:i] leftChild:nil rightChild:nil];
        else 
            [builder buildSubTree:[input objectAtIndex:i] leftChild:[input objectAtIndex:(2*(i+1))-1] rightChild:[input objectAtIndex:(2*(i+1)+1)-1]];
    }
}


@end
