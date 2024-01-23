//
//  FastText.cpp
//  
//
//  Created by Noah Little on 22/1/2024.
//

#ifdef __cplusplus

#include <stdio.h>
#include "include/FastText.h"

using namespace fasttext;

fasttext::FastText * fastTextMain;

void fastTextInit(const std::string& model_path) {
    if (fastTextMain == NULL) {
        fastTextMain = new FastText();
        fastTextMain->loadModel(model_path);
    }
}

void fasttextGetNearByWords(const char* word,
                            std::vector<std::pair<real, std::string>> &nearestNeighbours) {
    nearestNeighbours = fastTextMain->getNN(word, 10);
}

#endif
