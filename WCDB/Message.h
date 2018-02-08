//
//  Message.h
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject

@property int localId;
@property (retain)     NSString   *content;
@property (retain)     NSDate    *createTime;
@property (retain)     NSDate    *modifiedTime;
@end
