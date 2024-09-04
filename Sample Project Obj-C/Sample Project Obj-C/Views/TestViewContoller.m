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
    
    [self testXcodeInstruments];
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
    [person addObserver:self
             forKeyPath:@"age"
                options:NSKeyValueObservingOptionNew
                context:nil];
    
    Animal *pet = [[Animal alloc] initWithName:@"Charlie" owner:person];
    person.pet = pet;
    
    [person setAge:30];
    [person walkTheDog];
    [person setAge:31];
    
    [person removeObserver:self forKeyPath:@"age"];
    
    person = nil;
    pet = nil;
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSKeyValueChangeKey, id> *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:@"age"]) {
        NSLog(@"Person's age changed to %@", change[NSKeyValueChangeNewKey]);
    }
}

- (void)testXcodeInstruments {
    Person *person = [[Person alloc] initWithFirstName:@"John" LastName:@"Smith" age:20];
    Person *person2 = [[Person alloc] initWithFirstName:@"Jane" LastName:@"Smith" age:25];
    
    [person addFriend:person2];
    [person2 addFriend:person];
    [person2 addFriend:person];
    
    [person2 methodWithMistake];
}

@end
