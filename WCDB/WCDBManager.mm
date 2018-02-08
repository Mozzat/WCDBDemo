//
//  WCDBManager.m
//  WCDBText
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "WCDBManager.h"
#import <WCDB/WCDB.h>
#import "Message.h"
#import "Message+WCTTableCoding.h"
#import "People.h"
#import "People+WCTTableCoding.h"

@interface WCDBManager()

@property (nonatomic, strong) WCTDatabase   *database;
@property (nonatomic, assign) int           count;

@end


static WCDBManager *wcdbManager = nil;
@implementation WCDBManager

+ (instancetype)shareIntance{
    
    if (!wcdbManager) {
        
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            wcdbManager = [[WCDBManager alloc]init];
            
            
        });
        
    }
    return wcdbManager;
    
}

///创建数据库
- (void)createWcdb{
    
    self.count = 0;
    //获取沙盒根目录
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    
    // 文件路径
    NSString *filePath = [documentsPath stringByAppendingPathComponent:@"model.sqlite"];
    NSLog(@"path = %@",filePath);
    
    self.database = [[WCTDatabase alloc]initWithPath:filePath];
    // 数据库加密
//    NSData *password = [@"123456" dataUsingEncoding:NSASCIIStringEncoding];
//    [self.database setCipherKey:password];
    //测试数据库是否能够打开
    if ([self.database canOpen]) {
        
        // WCDB大量使用延迟初始化（Lazy initialization）的方式管理对象，因此SQLite连接会在第一次被访问时被打开。开发者不需要手动打开数据库。
        // 先判断表是不是已经存在
        if ([self.database isOpened]) {
            
            if ([self.database isTableExists:@"Message"]) {
                
                NSLog(@"表已经存在");
                
            }else {
                [self.database createTableAndIndexesOfName:@"Message" withClass:Message.class];
            }
            
            if ([self.database isTableExists:@"People"]) {
                
                NSLog(@"表已经存在");
                
            } else {
                
                [self.database createTableAndIndexesOfName:@"People" withClass:People.class];
                
            }
        }
    }
    
}


//插入单条数据
- (void)insertData:(id)model WithTableName:(NSString *)tableName{
    
//    [self.database insertObject:model into:tableName];
    
//    Message *message = [[Message alloc]init];
//    message.localId = 2;
//    message.content = @"你好，腾讯大傻逼";
//    message.createTime = [NSDate date];
//    message.modifiedTime = [NSDate date];
//
//    [self.database insertObject:message into:@"Message"];
    
    self.count ++ ;
    People *people = [[People alloc]init];
    people.profileId = self.count;
    people.age = 18;
    people.createTime = [NSDate date];
    people.name = @"陶醉";
    [self.database insertObject:people into:@"people"];
    
    
}

//插入多条数据

///删除数据
- (void)deleteData{
    
    [self.database deleteObjectsFromTable:@"People" where:People.profileId == self.count];
    if (self.count > 0) {
        self.count --;
    }
    
}

- (void)deleteAllData{
    
    [self.database deleteAllObjectsFromTable:@"People"];
    NSLog(@"删除成功");
    
}

- (void)changeName{
    
    People *people = [[People alloc]init];
    people.name = @"你大爷";
    
    [self.database updateAllRowsInTable:@"People" onProperty:People.name withObject:people];
}

- (void)select{
    
    NSArray *peopleArr =  [self.database getObjectsOfClass:People.class fromTable:@"People" limit:People.profileId == 10];
    
    NSLog(@"%@",peopleArr);
    
}

@end
    
    
