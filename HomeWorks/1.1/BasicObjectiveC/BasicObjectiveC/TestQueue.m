//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by 佐藤 太一 on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"

@interface TestQueue()
    // キュー
    @property (nonatomic) NSMutableArray *queue;
@end

@implementation TestQueue

// コンストラクタ
- (id)init
{
    if (self = [super init]) {
        // キューを初期化
        _queue = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object
{
    [_queue insertObject:object atIndex: 0];
}

- (id)pop
{
    NSString *obj = [_queue objectAtIndex: _queue.count - 1];
    [_queue removeObjectAtIndex: _queue.count - 1];
    
    return obj;
}

- (NSInteger) size
{
    return _queue.count;
}
@end

