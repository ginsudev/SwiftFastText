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

@interface FastTextWrapper : NSObject
- (instancetype)initWithModel:(NSURL *)modelPath;
- (void)nearbyWords:(NSMutableArray *)words forWord:(NSString *)word;
@end

#endif /* FastTextWrapper_h */
