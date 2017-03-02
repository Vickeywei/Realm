//
//  ViewController.m
//  Realm
//
//  Created by 魏琦 on 17/1/12.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import "ViewController.h"
#import "WQDataBaseManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    filePath = [filePath stringByAppendingPathComponent:@"first.realm"];
    NSLog(@"%@",filePath);
    [[WQDataBaseManager shareInstance] creatRealmWithFilePath:filePath];
    NSLog(@"%@",[WQDataBaseManager shareInstance].realm);
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
