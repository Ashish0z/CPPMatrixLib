#ifndef _GAUSS_ELIM_H_
#define _GAUSS_ELIM_H_

#include "matrix.hpp"
#include "matrix_utility.hpp"

template <typename T>
void gauss_elim(matrix<T> &A) {
    const int s_r = A.size().first, s_c = A.size().second;
    matrix<T> zero_c(s_r, 1, 0);
    for (int r = 0; r < s_r - 1; r++) {
        zero_c.resize(s_r - r, 1, 0);
        for (int i = r; i < s_c; i++) {
            //std::cout << A(span(r, s_r - 1), span(i, i)) << "\n\n"; 
            if (A(span(r, s_r - 1), span(i, i)) == zero_c) continue;
            for (int j = r; j < s_r; j++) {
                if (A(j, i) == 0) continue;
                else {
                    for (int k = 0; k < s_c; k++) {
                        T temp = A(j, k);
                        A(j, k) = A(r, k);
                        A(r, k) = temp;
                    }
                    //std::cout << A ;
                    break;
                }
            }
            for (int j = r + 1; j < s_r; j++) {
                if (A(r, i) == 0) break;
                if (A(j, i) == 0) continue;
                double q = A(j, i) / A(r, i);
                for (int k = 0; k < s_c; k++) 
                    A(j, k) -= T(q * A(r, k)); 
                //std::cout << A;
            }
            break;
        }
    }
    //cleaning the matrix
    for (int i = 0; i < s_r * s_c; i++)
        if (fabs(A[i]) < 1e-5) A[i] = 0;
}

#endif