# CPP Matrix Library



### Feature List
* [main](https://github.com/Ashish0z/CPPMatrixLib/tree/main) branch contains the base for matrix library.
Our project build upon it and adds varioud features. 
* [develop](https://github.com/Ashish0z/CPPMatrixLib/tree/develop) branch contains all the code combined along with tests and cmake files.
* [feature/gauss_elim](https://github.com/Ashish0z/CPPMatrixLib/tree/feature/gauss_elim) branch contains the first code that we wrote for this project. It was a part of profeciency test and contains a function to that gives row echleon form of a matrix using gauss elimination.
* [feature/strassen](https://github.com/Ashish0z/CPPMatrixLib/tree/feature/strassen) branch contains the implementation of matrix multiplication using strassen's algorithm in its own namespace as an overloaded operator. Although theoretically it should be faster than naive method but this implementation is much slower due to recursion overhead.
* [feature/LU](https://github.com/Ashish0z/CPPMatrixLib/tree/feature/LU) branch contains a function for LU decomposition.
* [feature/1D-Vector](https://github.com/Ashish0z/CPPMatrixLib/tree/feature/1D-Vector) branch uses the column major implementation of the matrix (proviously it was a 2d vector).
* [feature/Modint](https://github.com/Ashish0z/CPPMatrixLib/tree/feature/Modint) branch contains the modint library with various operations for modular arithmetcs including factorial and nCr in a mod field.
* [tests](https://github.com/Ashish0z/CPPMatrixLib/tree/tests) branch contains the first tests we wrote using cmake and gtest for the matrix library.
### Timeline
**Week 1**: We went throug the base code and also learned about basic sorting and divide and conques algos algorithms

**Week 2**: Implemented strassen which is basically a divide and conquer algorithm. Learned about writing tests.

**Week 3**: Wrote tests. Learned about leniar recurrences, gaussian XORs and tried out a few methods to calculate determinats faster.

**Week 4**: Learned about modular arithmetics. Added a base class for modint.

**Week 5**: Added more features to modint including factorial using Wilson.s theorem and nCr function. Learned about github actions, workflows and pipelins.

**Week 6**: Learned about FFT and NTT. Improved structure of the github repo and added tests to modint.