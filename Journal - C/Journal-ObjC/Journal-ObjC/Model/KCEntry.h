//
//  KCEntry.h
//  Journal-ObjC
//
//  Created by Kaleb  Carrizoza on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KCEntry : NSObject

@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *bodyText;
@property (nonatomic, copy, readonly) NSString *timestamp;


@end

NS_ASSUME_NONNULL_END
