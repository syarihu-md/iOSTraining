//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    NSDictionary *my_dict1 = @{
            @"domain" : @"mixi.jp" ,
            @"entry" : @[@"list_voice.pl", @"list_diary.pl", @"list_mymail_item.pl"]
    };
    NSDictionary *my_dict2 = @{
            @"domain" : @"mmail.jp",
            @"entry" : @{
                    @"path":@"add_diary.pl",
                    @"query": @{@"tag_id" : @"7"}
            }
    };
    NSDictionary *my_dict3 = @{@"domain" : @"itunes.apple.com"};
    
    NSArray *my_array = @[my_dict1, my_dict2, my_dict3];
    
    NSLog(@"%@", [my_array description]);
    
    TestQueue *queue = [[TestQueue alloc]init];
    
    for (int i = 0; i < 10; i++) {
        [queue push: [NSString stringWithFormat:@"queue %d", i]];
    }
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    
    TestStack *stack = [[TestStack alloc]init];
    
    for (int i = 0; i < 10; i++) {
        [stack push: [NSString stringWithFormat:@"stack %d", i]];
    }
    NSLog(@"%@", [stack pop]);
    NSLog(@"%@", [stack pop]);
    NSLog(@"%@", [stack pop]);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
