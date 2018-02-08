//
//  People.h
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject

@property(nonatomic, retain) NSString *name;
@property(nonatomic, assign) NSInteger age;
@property(nonatomic, assign) int profileId;
@property(nonatomic, strong) NSDate *createTime;

@end
