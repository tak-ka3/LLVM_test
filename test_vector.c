int main(int argc, char **argv) {
    int hoge = 0;
    int A[10000];
    for (int i = 0; i < 10000; i++) {
        A[i] = i * 2;
    }
    for (int i = 0; i < 10000; i++) {
        hoge += A[i] * i + 5;
    }
    return hoge;
}