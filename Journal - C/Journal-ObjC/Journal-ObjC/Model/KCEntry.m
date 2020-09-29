//
//  KCEntry.m
//  Journal-ObjC
//
//  Created by Kaleb  Carrizoza on 9/28/20.
//

#import "KCEntry.h"

@implementation KCEntry

- (instancetype)initWithTitle:(NSString *)title
                         text:(NSString *)bodyText
                    timestamp:(NSDate *)timestamp

{
    self = [super init];
    
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [NSDate now];
    }
    return self;
}


@end
