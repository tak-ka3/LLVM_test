# LLVM

## LLVMIRでの大まかな区分
- Module: ソースコードなどの大きな枠組みでリンク。Functionを複数持つ。
- Function: LLVM IRでの関数。BasicBlockを複数持つ。
- BasicBlock: ラベルごとに分けられる小さな枠組み。Instructionを複数持つ。
- Instruction: LLVMIR内での一つの命令。


## 参照URL
- [こわくないLLVM入門](https://qiita.com/Anko_9801/items/df4475fecbddd0d91ccc#if%E6%96%87%E3%81%AEllvm-ir%E3%82%92%E7%90%86%E8%A7%A3%E3%81%97%E3%81%A6%E3%81%BF%E3%82%8B)
- 