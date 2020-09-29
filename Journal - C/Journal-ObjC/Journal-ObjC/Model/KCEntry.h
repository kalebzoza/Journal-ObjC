//
//  KCEntry.h
//  Journal-ObjC
//
//  Created by Kaleb  Carrizoza on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KCEntry : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *bodyText;
@property (nonatomic, copy) NSDate *timestamp;

- (instancetype)initWithTitle:(NSString *)title
                         bodyText:(NSString *)bodyText
                    timestamp:(NSDate *)timestamp;


@end

NS_ASSUME_NONNULL_END
