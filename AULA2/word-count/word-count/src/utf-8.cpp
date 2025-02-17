
#include "utf-8.h"

int utf8_decode(UTF8DecoderState& state, uint16_t byte, uint32_t* codepoint) {
    // Single-byte character (ASCII range)
    if (byte <= 0x7F) {
        *codepoint = byte;
        state.number_bytes = 1; // 1 byte used for ASCII characters
        state.remaining_bytes = 0;
        return 1;
    } 
    // 2-byte character (UTF-8 encoding: 110xxxxx 10xxxxxx)
    else if ((byte & 0xE0) == 0xC0) {
        state.codepoint = byte & 0x1F;
        state.remaining_bytes = 1;
        state.number_bytes = 1; // 1 byte processed so far
        return 0; // More bytes needed to complete the character
    } 
    // 3-byte character (UTF-8 encoding: 1110xxxx 10xxxxxx 10xxxxxx)
    else if ((byte & 0xF0) == 0xE0) {
        state.codepoint = byte & 0x0F;
        state.remaining_bytes = 2;
        state.number_bytes = 1; // 1 byte processed so far
        return 0; // More bytes needed to complete the character
    } 
    // 4-byte character (UTF-8 encoding: 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx)
    else if ((byte & 0xF8) == 0xF0) {
        state.codepoint = byte & 0x07;
        state.remaining_bytes = 3;
        state.number_bytes = 1; // 1 byte processed so far
        return 0; // More bytes needed to complete the character
    } 
    // Continuation byte (all multi-byte sequences use these)
    else if ((byte & 0xC0) == 0x80) {
        // Handle continuation bytes (10xxxxxx)
        if (state.remaining_bytes > 0) {
            state.codepoint = (state.codepoint << 6) | (byte & 0x3F);
            state.remaining_bytes--;
            state.number_bytes++; // Increment the byte count as we're processing another byte
            if (state.remaining_bytes == 0) {
                *codepoint = state.codepoint; // Finalize the codepoint
                return 1; // Character successfully decoded
            }
        }
        return -1; // Invalid continuation byte if remaining bytes is 0
    }

    return -1; // Invalid byte sequence
}


bool utf8_is_letter(uint32_t codepoint) {
    return 
        // Basic Latin (A-Z, a-z)
        (codepoint >= 0x41 && codepoint <= 0x5A) || 
        (codepoint >= 0x61 && codepoint <= 0x7A) ||

        // Latin-1 Supplement (À-ÿ)
        (codepoint >= 0xC0 && codepoint <= 0xFF) ||

        // Latin Extended-A
        (codepoint >= 0x100 && codepoint <= 0x17F) ||

        // Latin Extended-B
        (codepoint >= 0x180 && codepoint <= 0x24F) ||

        // IPA Extensions
        (codepoint >= 0x250 && codepoint <= 0x2AF) ||

        // Greek and Coptic
        (codepoint >= 0x370 && codepoint <= 0x3FF) ||

        // Cyrillic and Cyrillic Supplement
        (codepoint >= 0x400 && codepoint <= 0x52F) ||

        // Letterlike Symbols
        (codepoint >= 0x2100 && codepoint <= 0x214F) ||

        // CJK Unified Ideographs
        (codepoint >= 0x4E00 && codepoint <= 0x9FFF);
}


bool utf8_is_space(uint32_t codepoint) {
    return 
        // ASCII spaces
        (codepoint == 0x0009) || // Horizontal Tab (\t)
        (codepoint == 0x000A) || // Line Feed (\n)
        (codepoint == 0x000B) || // Vertical Tab (\v)
        (codepoint == 0x000C) || // Form Feed (\f)
        (codepoint == 0x000D) || // Carriage Return (\r)
        (codepoint == 0x0020) || // Space

        // Unicode spaces
        (codepoint == 0x00A0) || // No-Break Space
        (codepoint == 0x2007) || // Figure Space
        (codepoint == 0x202F) || // Narrow No-Break Space
        (codepoint == 0x2060);   // Word Joiner
}
