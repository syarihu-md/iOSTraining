//
//  TestQueue.h
//  BasicObjectiveC
//
//  Created by 佐藤 太一 on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

- (void)push:(id)object;
- (id)pop;
- (NSInteger)size;

@end
