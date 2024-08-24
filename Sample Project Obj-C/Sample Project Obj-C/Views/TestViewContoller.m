//
//  TestViewContoller.m
//  Sample Project Obj-C
//
//  Created by Denis Svichkarev on 23/08/24.
//

#import "TestViewContoller.h"
#import "MyClass.h"

@interface TestViewContoller ()

@end

@implementation TestViewContoller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyClass *class = [[MyClass alloc] initWithName:@"James"];
    [class print];
}


@end
