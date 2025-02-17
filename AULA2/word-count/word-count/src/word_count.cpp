
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>

#include "utf-8.h"
#include "word_count.h"

void process_file(const std::string& filename, const WordCountFlags& flags,int& totalLines, int& totalWords, int& totalChars) {
    std::ifstream file(filename);
    if (!file){
        std::cerr<< "Error oppening file" << filename << std::endl;
        return;
    }
    std::string line;
    int lines = 0,words = 0, chars = 0;
    while(std::getline(file,line)){
        lines++;
        chars += line.size();

        std::istringstream iss(line);
        std::string word;
        while (iss >> word) {
            words++;
        }
    }
    file.close();

    totalLines += lines;
    totalWords += words;
    totalChars += chars;

    std::cout << filename << ": ";
    if (flags.lines) std::cout << "Lines=" << lines << " ";
    if (flags.words) std::cout << "Words=" << words << " ";
    if (flags.chars) std::cout << "Chars=" << chars << " ";
    std::cout << std::endl;
}

void process_file_UTF_8(const std::string& filename, const WordCountFlags& flags, int& totalLines, int& totalWords, int& totalChars) {
    std::ifstream file(filename, std::ios::binary);
    if (!file) {
        std::cerr << "Error opening file " << filename << std::endl;
        return;
    }

    std::string line;
    int lines = 0, words = 0, chars = 0;

    while (std::getline(file, line)) {
        lines++;

        // UTF-8 decoding state initialization
        UTF8DecoderState state;
        state.codepoint = 0;
        state.remaining_bytes = 0;
        uint32_t codepoint;
        bool inWord = false;

        for (unsigned char byte : line) {
            chars++; // Count every byte in the line

            // Decode the byte
            if (utf8_decode(state, byte, &codepoint) == 1) { // Valid decoded codepoint
                // Check if the codepoint is a letter
                if (utf8_is_letter(codepoint)) {
                    if (!inWord) {
                        words++; // Start of a new word
                        inWord = true;
                    }
                } else if (utf8_is_space(codepoint)) {
                    inWord = false; // End of the word
                }
            }
        }
    }
    file.close();

    totalLines += lines;
    totalWords += words;
    totalChars += chars;

    std::cout << filename << ": ";
    if (flags.lines) std::cout << "Lines=" << lines << " ";
    if (flags.words) std::cout << "Words=" << words << " ";
    if (flags.chars) std::cout << "Chars=" << chars << " ";
    std::cout << std::endl;
}


void word_count(const WordCountFlags& flags, const std::vector<std::string>& files)
{
    int totalLines = 0, totalWords = 0, totalChars = 0;
    // Make sure to use the flags to determine what to count
    // Enter your code here !!!
    for (auto& file : files){
        //process_file(file, flags,totalLines, totalWords, totalChars);
        process_file_UTF_8(file, flags, totalLines, totalWords, totalChars);
    }

    std::cout << "Total: ";
    if (flags.lines) std::cout << "Lines=" << totalLines << " ";
    if (flags.words) std::cout << "Words=" << totalWords << " ";
    if (flags.chars) std::cout << "Chars=" << totalChars << " ";
    std::cout << std::endl;

}
