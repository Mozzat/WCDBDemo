//
//  ViewController.m
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"
#import "WCDBManager.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createDatabase:(UIButton *)sender {
    
    [[WCDBManager shareIntance] createWcdb];
    
}
- (IBAction)addData:(UIButton *)sender {
    
    [[WCDBManager shareIntance] insertData:nil WithTableName:@"Message"];
    
}
- (IBAction)delData:(UIButton *)sender {
    
    [[WCDBManager shareIntance] deleteData];
    
}

- (IBAction)changeData:(UIButton *)sender {
    
    [[WCDBManager shareIntance] changeName];
    
}
- (IBAction)selectData:(UIButton *)sender {
    
    [[WCDBManager shareIntance] select];
    
}
@end
