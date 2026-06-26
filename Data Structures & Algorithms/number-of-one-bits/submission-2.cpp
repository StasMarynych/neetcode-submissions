class Solution {
public:
    int hammingWeight(uint32_t n) {
        int counter = 0;

        for (uint32_t mask = 0x80000000;  mask;  mask >>= 1) {
            if (n & mask) {
                counter++;
            }
        }

        return counter;
    }
};
