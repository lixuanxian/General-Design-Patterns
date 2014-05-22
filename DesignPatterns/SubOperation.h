//
//  SubOperation.h
//  DesignPatterns
//
//  Created by Heiko Witte on 09.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationComposite.h"
#import "ExpressionVisitor.h"


@interface SubOperation : OperationComposite {
@private
    
}

-(double) operation:(double)e1 secondValue:(double)e2;
-(NSString*)operatorSymbol;
-(void)accept:(ExpressionVisitor*)ov;

@end
