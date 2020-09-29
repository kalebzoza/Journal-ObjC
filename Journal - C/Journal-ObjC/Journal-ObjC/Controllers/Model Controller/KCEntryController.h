//
//  KCEntryController.h
//  Journal-ObjC
//
//  Created by Kaleb  Carrizoza on 9/28/20.
//

#import <Foundation/Foundation.h>
#import "KCEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface KCEntryController : NSObject

+(KCEntryController *) shared;

//source of truth
@property(nonatomic, strong) NSArray *entries;

-(void)addEntry:(NSString *)title
                bodyText:(NSString *)bodyText;


-(void)removeEntry:(KCEntry *)entry;

-(void)updateEntry:(KCEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
