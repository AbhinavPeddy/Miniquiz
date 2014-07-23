//
//  NSArray+RandomSelection.m
//  MiniQuizz
//
//  Created by CTSMacBook on 03/10/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

@implementation NSArray (RandomSelection)

- (NSArray *)randomSelectionWithCount:(NSUInteger)count {
    if ([self count] < count) {
        return nil;
    } else if ([self count] == count) {
        return self;
    }
    
    NSMutableSet* selection = [[NSMutableSet alloc] init];
    
    while ([selection count] < count) {
        id randomObject = [self objectAtIndex: arc4random() % [self count]];
        [selection addObject:randomObject];
    }
    
    return [selection allObjects];
}

@end
