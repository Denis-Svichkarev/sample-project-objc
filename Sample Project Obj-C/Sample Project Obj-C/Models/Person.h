//
//  Person.h
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 25.08.2024.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic) NSString *firstName;
@property (nonatomic) NSString *lastName;

@property (nonatomic, getter=isEmployed) BOOL employed;

@property (nonatomic) Animal *pet;

- (instancetype)initWithFirstName:(NSString *)firstName LastName:(NSString *)lastName age:(NSInteger)age;

- (NSInteger)getAge;
- (void)setAge:(NSInteger)age;
- (NSString *)getFullName;

- (void)greet;

@end

NS_ASSUME_NONNULL_END
