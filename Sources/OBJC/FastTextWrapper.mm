//
//  FastTextWrapper.mm
//
//
//  Created by Noah Little on 22/1/2024.
//

#include "include/FastTextWrapper.h"

# pragma mark - FastTextWrapper

@implementation FastTextWrapper

- (instancetype)initWithModel:(NSURL *)modelPath {
    self = [super init];
    if (self) {
        const char *path = [[modelPath path] UTF8String];
        fastTextInit(path);
    }
    return self;
}

- (void)nearbyWords:(NSMutableArray *)words forWord:(NSString *)word {
    const char* inputWord = [word UTF8String];

    std::vector<std::pair<fasttext::real, std::string>> neighbours;
    for (int i = 0; i < [words count];i++) {
        neighbours.push_back(neighbours[i]);
    }
    fasttextGetNearByWords(inputWord, neighbours);
    
    [words removeAllObjects];
    
    std::for_each(neighbours.begin(), neighbours.end(), [&words](std::pair<fasttext::real, std::string> pair) {
        id word = [NSString stringWithUTF8String:pair.second.c_str()];
        float distance = pair.first;
        FastTextResult *result = [[FastTextResult alloc] initWithWord:word distance:distance];
        [words addObject:result];
    });
}

@end

# pragma mark - FastTextResult

@implementation FastTextResult

- (instancetype)initWithWord:(NSString *)word distance:(float)distance {
    self = [super init];
    if (self) {
        _word = word;
        _distance = distance;
    }
    return self;
}

@end
