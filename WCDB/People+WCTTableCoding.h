//
//  People+WCTTableCoding.h
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "People.h"
#import <WCDB/WCDB.h>

@interface People (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(name)
WCDB_PROPERTY(profileId)
WCDB_PROPERTY(age)
WCDB_PROPERTY(createTime)


@end
