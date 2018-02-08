//
//  WCDBManager.h
//  WCDBText
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface WCDBManager : NSObject

- (void)createWcdb;

+ (instancetype)shareIntance;

///增
- (void)insertData:(id)model WithTableName:(NSString *)tableName;

///删
- (void)deleteData;

- (void)deleteAllData;

///改
- (void)changeName;

///查
- (void)select;



@end
