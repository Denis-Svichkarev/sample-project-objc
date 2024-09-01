//
//  Animal.m
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 26.08.2024.
//

#import "Animal.h"
#import "Person.h"

@implementation Animal

- (instancetype)initWithName:(NSString *)name owner:(Person *)owner {
    self = [super init];
    if (self) {
        _name = name;
        _owner = owner;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"%@ is being deinitialized", self.name);
}

@end
