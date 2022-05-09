#include <stdio.h>

int branch(int cond) {
    int i = -1;
    if (cond == 0) {
        i = 0;
    } else {
        i = 1;
    }
    return i;
}

int main(int argc, char** argv) {
    int initial = 1;
    int val = branch(initial);

    printf("%d\n", val);
    return 0;
}