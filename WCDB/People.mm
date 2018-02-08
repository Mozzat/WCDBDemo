//
//  People.mm
//  WCDB
//
//  Created by ebadu on 2018/2/7.
//  Copyright © 2018年 ebadu. All rights reserved.
//

#import "People+WCTTableCoding.h"
#import "People.h"
#import <WCDB/WCDB.h>

@implementation People

WCDB_IMPLEMENTATION(People)
WCDB_SYNTHESIZE(People, name)
WCDB_SYNTHESIZE(People, profileId)
WCDB_SYNTHESIZE(People, age)
WCDB_SYNTHESIZE(People, createTime)


WCDB_PRIMARY_ASC_AUTO_INCREMENT(People, profileId)
WCDB_UNIQUE(People, profileId)
WCDB_NOT_NULL(People, profileId)
  
@end
