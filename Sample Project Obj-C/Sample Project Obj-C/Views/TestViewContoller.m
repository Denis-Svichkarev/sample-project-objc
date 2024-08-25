//
//  TestViewContoller.m
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 23/08/24.
//

#import "TestViewContoller.h"
#import "MyClass.h"
#import "MyStruct.h"
#import "Person.h"

@interface TestViewContoller ()

@end

@implementation TestViewContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testGettersAndSetters];
}

- (void)testInitializers {
    NSMutableString *sharedName = [NSMutableString stringWithString:@"James"];
    
    MyClass *object = [[MyClass alloc] initWithName:sharedName];
    
    [object test];
    [sharedName setString:@"John"];
    [object test];
    
    MyStruct myStruct = {@"James"};
    NSLog(@"%@", myStruct.name);
}

- (void)testGettersAndSetters {
    Person *person = [[Person alloc] initWithName:@"John" age:20];
    [person setAge:30];
    [person greet];
    
    if ([person isEmployed]) {
        NSLog(@"%@", [person getOfficialName]);
    }
}

@end
