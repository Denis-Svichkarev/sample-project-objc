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
#import "Animal.h"

@interface TestViewContoller ()

@end

@implementation TestViewContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testObjectReferences];
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
    Person *person = [[Person alloc] initWithFirstName:@"John" LastName:@"Smith" age:20];
    [person setAge:30];
    [person greet];
    
    if ([person isEmployed]) {
        NSLog(@"%@", [person getFullName]);
    }
}

- (void)testObjectReferences {
    Person *person = [[Person alloc] initWithFirstName:@"John" LastName:@"Smith" age:20];
    Animal *pet = [[Animal alloc] initWithName:@"Charlie" owner:person];
    person.pet = pet;
    person = nil;
        
//    var person: Person? = Person(firstName: "John", lastName: "Smith", age: 20)
//    let pet = Animal(name: "Charlie", owner: person!)
//    person?.pet = pet
//    person = nil
//
//    /// Leads to crash
//    /// print(pet.owner.firstName)
}

@end
