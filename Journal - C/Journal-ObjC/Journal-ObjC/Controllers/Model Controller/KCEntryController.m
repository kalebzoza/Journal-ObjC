//
//  KCEntryController.m
//  Journal-ObjC
//
//  Created by Kaleb  Carrizoza on 9/28/20.
//

#import "KCEntryController.h"
#import "KCEntry.h"

@implementation KCEntryController

+ (KCEntryController *)shared
{
    static KCEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [KCEntryController new];
    });
    return shared;
}

//source of truth
- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}


-(void)addEntry:(NSString *)title
                bodyText:(NSString *)bodyText;
{
    if (!_entries)
    {
        _entries = [NSMutableArray new ];
    }
    NSMutableArray *entry = [[NSMutableArray alloc] init];
    KCEntry *newEntry = [[KCEntry alloc] initWithTitle:title bodyText:bodyText timestamp:[NSDate now]];
    [entry addObject: newEntry];
    
}


-(void)removeEntry:(KCEntry *)entry;
{
    
}

-(void)updateEntry:(KCEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timestamp = [NSDate now];
}



@end

