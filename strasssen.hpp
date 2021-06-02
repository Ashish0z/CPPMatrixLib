#include "matrix.hpp"

template <typename T>
matrix<T> strassen_mult (const matrix<T> &A, const matrix<T> &B, int n) {
    if (n == 2){
        matrix<T> ans = {{(A(0,0) * B(0,0)) + (A(0,1) * B(1,0)), (A(0,0) * B(0,1)) + (A(0,1) * B(1,1))},
                         {(A(1,0) * B(0,0)) + (A(1,1) * B(1,0)), (A(1,0) * B(0,1)) + (A(1,1) * B(1,1))}};
        return ans;                 
    }
    else {
        matrix<T> A1 = strassen_mult(A(span(0, (n / 2) - 1), span(0 , (n / 2) - 1)), B(span(0, (n / 2) - 1), span(0 , (n / 2) - 1)), n / 2)
                     + strassen_mult(A(span(0, (n / 2) - 1), span(n / 2 , n - 1)), B(span(n / 2, n - 1), span(0 , (n / 2) - 1)), n / 2);
        matrix<T> A2 = strassen_mult(A(span(0, (n / 2) - 1), span(0 , (n / 2) - 1)), B(span(0, (n / 2) - 1), span(n / 2 , n - 1)), n / 2)
                     + strassen_mult(A(span(0, (n / 2) - 1), span(n / 2 , n - 1)), B(span(n / 2, n - 1), span(n / 2 , n - 1)), n / 2);
        matrix<T> B1 = strassen_mult(A(span(n / 2, n - 1), span(0 , (n / 2) - 1)), B(span(0, (n / 2) - 1), span(0 , (n / 2) - 1)), n / 2)
                     + strassen_mult(A(span(n / 2, n - 1), span(n / 2 , n - 1)), B(span(n / 2, n - 1), span(0 , (n / 2) - 1)), n / 2);
        matrix<T> B2 = strassen_mult(A(span(n / 2, n - 1), span(0 , (n / 2) - 1)), B(span(0, (n / 2) - 1), span(n / 2 , n - 1)), n / 2)
                     + strassen_mult(A(span(n / 2, n - 1), span(n / 2 , n - 1)), B(span(n / 2, n - 1), span(n / 2 , n - 1)), n / 2);
        matrix<T> ans(n, n, 0);
        for (int i = 0; i < n / 2; i++) {
            for (int j = 0; j < n / 2; j++) {
                ans(i, j) = A1(i, j);
                ans(i, j + (n / 2)) = A2(i, j);
                ans(i + (n / 2), j) = B1(i, j);
                ans(i + (n / 2), j + (n / 2)) = B2(i, j);
            }
        }
        return ans;
    }
}

bool comp(int a, int b) {
    return (a < b);
}

namespace strassen {
    template <typename T>
    matrix<T> operator* (const matrix<T> &A, const matrix<T> &B) {
        int a_r = A.size().first, a_c = A.size().second, b_r = B.size().first, b_c = B.size().second; 
        assert(a_c = b_r);
        int p = 2, temp = std::max({a_r, a_c, b_r, b_c}, comp);
        while (temp > 1) {
            p *= 2;
            temp /= 2;
        }
        matrix<T> a(p, p, 0), b(p, p, 0);
        for (int i = 0; i < a_r; i++) 
            for (int j = 0; j < a_c; j++)
                a(i, j) = A(i, j);
        for (int i = 0; i < b_r; i++) 
            for (int j = 0; j < b_c; j++)
                b(i, j) = B(i, j);
        
        matrix<T> ans1 = strassen_mult(a, b, p);
        matrix<T> ans(a_r, b_c, 0);
        for (int i = 0; i < a_r; i++)
            for (int j = 0; j < b_c; j++)
                ans(i, j) = ans1(i, j);
        return ans;
    }
}