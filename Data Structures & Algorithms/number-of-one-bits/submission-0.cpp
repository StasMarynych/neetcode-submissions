class Solution {
public:
    int hammingWeight(uint32_t n) {
        uint32_t counter = 0;

        for (uint32_t mask = 0x80000000;  mask;  mask >>= 1) {
            bool bit_is_set = n & mask;

            if (bit_is_set) {
                counter++;
            }
        }

        return counter;
    }
};
