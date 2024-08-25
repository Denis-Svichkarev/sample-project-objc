//
//  Person.h
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 25.08.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, getter=getOfficialName) NSString *name;
@property (nonatomic, getter=isEmployed) BOOL employed;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

- (NSInteger)getAge;
- (void)setAge:(NSInteger)age;

- (void)greet;

@end

NS_ASSUME_NONNULL_END
