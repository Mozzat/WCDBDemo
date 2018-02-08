//
//  Message+WCTTableCoding.h
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "Message.h"
#import <WCDB/WCDB.h>

@interface Message (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(localId)
WCDB_PROPERTY(content)
WCDB_PROPERTY(createTime)
WCDB_PROPERTY(modifiedTime)


@end
