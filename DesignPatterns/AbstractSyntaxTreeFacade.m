//
//  AbstractSyntaxTreeFacade.m
//  DesignPatterns
//
//  Created by Heiko Witte on 16.05.11.
//  Copyright 2011 Heiko Witte. All rights reserved.
//

#import "AbstractSyntaxTreeFacade.h"
#import "AddOperation.h"
#import "SubOperation.h"
#import "MultOperation.h"
#import "ExpressionPrintIterator.h"
#import "ExpressionEvaluateIterator.h"
#import "ExpressionPolishNotationIterator.h"
#import "CompositeBuilder.h"
#import "CompositeTopDownDirector.h"
#import "CompositeBottomUpDirector.h"

@implementation AbstractSyntaxTreeFacade

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

-(ExpressionComponent*)newObject:(NSArray*)num;
{
    LiteralLeaf *a = [[LiteralLeaf alloc] initWithValue:[[num objectAtIndex:0] doubleValue]];
    LiteralLeaf *b = [[LiteralLeaf alloc] initWithValue:[[num objectAtIndex:1] doubleValue]];
    LiteralLeaf *c = [[LiteralLeaf alloc] initWithValue:[[num objectAtIndex:2] doubleValue]];
    LiteralLeaf *d = [[LiteralLeaf alloc] initWithValue:[[num objectAtIndex:3] doubleValue]];
    // l = a ; r = b
    AddOperation* one = [[AddOperation alloc] 
                          init];
    // l = a ; r = c
    SubOperation* two = [[SubOperation alloc] 
                          init];
    // l = b ; r = d
    MultOperation* three = [[MultOperation alloc] 
                             init];
    // l = one ; r = two
    MultOperation* four = [[MultOperation alloc] 
                            init];
    // l = three ; r = a
    SubOperation* five = [[SubOperation alloc] 
                           init];
    // l = four ; r = five
    AddOperation* all = [[AddOperation alloc] 
                          init];
    
    NSMutableArray* flatTree = [[NSMutableArray alloc] init];
    
    [flatTree addObject:all];
    [flatTree addObject:four];
    [flatTree addObject:five];
    [flatTree addObject:one];
    [flatTree addObject:two];
    [flatTree addObject:three];
    [flatTree addObject:a];
    [flatTree addObject:a];
    [flatTree addObject:b];
    [flatTree addObject:a];
    [flatTree addObject:c];
    [flatTree addObject:b];
    [flatTree addObject:d];
    
    CompositeBuilder* builder = [[CompositeBuilder alloc] init];
    CompositeTopDownDirector* director = [[CompositeTopDownDirector alloc] initWithBuilder:builder];
    [director createComposite:flatTree];
    
    ast = [builder getResult];
    
    
    return ast;
}

-(double)interpret
{
    EvaluateVisitor* ev = [[EvaluateVisitor alloc] init];
    ExpressionEvaluateIterator* i2 = [ev getIterator];
    return [i2 traverse:ast];
}

-(NSString*)print
{
    PrintVisitor *pv = [[PrintVisitor alloc] init];
    ExpressionPrintIterator *i3 = [pv getIterator];
    /*ExpressionPolishNotationIterator* i = [[ExpressionPolishNotationIterator alloc] init];*/
    NSString* res = [i3 traverse:ast];
    return res;
}


@end
