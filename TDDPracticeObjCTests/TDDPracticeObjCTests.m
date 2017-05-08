//
//  TDDPracticeObjCTests.m
//  TDDPracticeObjCTests
//
//  Created by Katherine Owens on 5/8/17.
//  Copyright © 2017 Katherine Owens. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RSAddition.h"

@interface TDDPracticeObjCTests : XCTestCase

@end

@implementation TDDPracticeObjCTests
{
    RSAddition *addition;
}

- (void)setUp {
    [super setUp];
    addition = [[RSAddition alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAdditionClassExists {
    XCTAssertNotNil(addition, @"RSAddition class exists");
}

- (void)testAddTwoPlusTwo {
    NSInteger result = [addition addNumberOne:2 withNumberTwo:2];
    
    XCTAssertEqual(result, 4, @"Addition of 2 + 2 is 4");
}

- (void)testTwoPlusSeven {
    NSInteger result = [addition addNumberOne:2 withNumberTwo:7];
    
    XCTAssertEqual(result, 9, @"Addition of 2 + 7 is 9");
}

@end
