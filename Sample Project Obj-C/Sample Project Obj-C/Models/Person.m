//
//  Person.m
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 25.08.2024.
//

#import "Person.h"

@interface Person()

@property (nonatomic, assign) NSInteger age;

@end

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _employed = YES;
    }
    return self;
}

- (NSString *)getOfficialName {
    return [NSString stringWithFormat:@"[%@]", _name];
}

- (NSInteger)getAge {
    return _age;
}

- (void)setAge:(NSInteger)age {
    if (age > 0) {
        _age = age;
    }
}

- (BOOL)isEmployed {
    return _employed;
}

- (void)greet {
    NSLog(@"Hello, my name is %@ and I am %ld years old.", self.name, (long)[self getAge]);
}

@end
