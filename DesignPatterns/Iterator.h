//
//  Iterator.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExpressionComponent.h"

@interface Iterator : NSObject {
@private
    ExpressionComponent* root;
}

-(void)traverse:(ExpressionComponent*)e;

@end
