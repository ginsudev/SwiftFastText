//
//  FastText.h
//
//
//  Created by Noah Little on 22/1/2024.
//

#ifndef FastText_h
#define FastText_h

#ifdef __cplusplus

#include <stdio.h>

#include "../cppFastText/fasttext.h"
#include <vector>
#include <string>

extern fasttext::FastText * fastTextMain;

void fastTextInit(const std::string& model_path);

void fasttextGetNearByWords(const char* word,
                            std::vector<std::pair<fasttext::real, std::string>> &nearest_neighbours);


#endif

#endif /* FastText_h */
