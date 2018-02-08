//
//  Message.mm
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "Message+WCTTableCoding.h"
#import "Message.h"
#import <WCDB/WCDB.h>

@implementation Message

WCDB_IMPLEMENTATION(Message)
WCDB_SYNTHESIZE(Message, localId)
WCDB_SYNTHESIZE(Message, content)
WCDB_SYNTHESIZE(Message, createTime)
WCDB_SYNTHESIZE(Message, modifiedTime)

WCDB_PRIMARY_ASC_AUTO_INCREMENT(Message, localId)
WCDB_INDEX(Message, "_index", createTime)
  
@end
