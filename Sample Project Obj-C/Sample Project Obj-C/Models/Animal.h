//
//  Animal.h
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 26.08.2024.
//

#import <Foundation/Foundation.h>

@class Person;

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, weak) Person *owner;

- (instancetype)initWithName:(NSString *)name owner:(Person *)owner;

@end

NS_ASSUME_NONNULL_END
