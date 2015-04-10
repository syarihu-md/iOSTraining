//
//  TestStack.m
//  BasicObjectiveC
//
//  Created by 佐藤 太一 on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestStack.h"

@interface TestStack()
    // タスク
    @property (nonatomic) NSMutableArray *stack;
@end

@implementation TestStack
// コンストラクタ
- (id)init
{
    if (self = [super init]) {
        // キューを初期化
        _stack = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object
{
    [_stack insertObject:object atIndex:0];
}

- (id)pop
{
    NSString *obj = [_stack objectAtIndex: 0];
    [_stack removeObjectAtIndex: 0];
    
    return obj;
}

- (NSInteger) size
{
    return _stack.count;
}
@end
