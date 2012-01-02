//
//  ExpressionComponent.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExpressionComponent : NSObject 
{
@private
    ExpressionComponent* parent;
}

-(void)setParent:(ExpressionComponent*)p;
-(ExpressionComponent*)getParent;

@end
