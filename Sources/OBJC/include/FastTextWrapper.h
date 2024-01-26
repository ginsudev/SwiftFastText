//
//  FastTextWrapper.h
//
//
//  Created by Noah Little on 22/1/2024.
//

#ifndef FastTextWrapper_h
#define FastTextWrapper_h

#import <Foundation/Foundation.h>
#include "FastText.h"

@interface FastTextResult : NSObject
@property (nonatomic, readonly) NSString *word;
@property (nonatomic, readonly) float distance;
- (instancetype)initWithWord:(NSString *)word distance:(float)distance;
@end

@interface FastTextWrapper : NSObject
- (instancetype)initWithModel:(NSURL *)modelPath;
- (void)nearbyWords:(NSMutableArray *)words forWord:(NSString *)word;
@end

#endif /* FastTextWrapper_h */
