//
//  MyClass.m
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 24.08.2024.
//

#import "MyClass.h"

@interface MyClass()

@property (nonatomic, strong) NSString *name;

@end

@implementation MyClass

- (instancetype)init {
    return [self initWithName:@"John"];
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)print {
    NSLog(@"Hello %@!", self.name);
}

@end
