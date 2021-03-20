#include "matrix.hpp"
#include "matrix_utility.hpp"
#include "my_LU.cpp"

int main() {
    // Initialisation of a 3*3 matrix with base value 2
    matrix<int> B(3, 3, 2);

    // Exponentiation
    matrix<int> M = pow(B, 3);

    // edit single element
    M(1, 0) = 1;

    // M.t() = transpose of M (ie M')
    matrix<int> X = -2*M.t();
    // Print matrix
    std::cout << X << std::endl;

    // Similar to X(1:2, 0:2)
    matrix<int> y = X({1, 2}, {0, 2});
    std::cout << y << std::endl;

    matrix<double> D = {{65, 77, 69, 75, 69},
                        {61, 74, 70, 66, 68},
                        {81, 80, 71, 74, 79}};

    // Calculate norm
    std::cout << norm(D, "L1") << std::endl;

    // Print the range of values (max - min) stored in either column (1) or row (2)
    // std::cout << range(D, 2) << std::endl;

    // Python like range functioning
    std::cout << range<int>(0, -10, -1) << range<int>(0, 10, 3) << std::endl;

    // Matrix rows
    matrix<double> c1 = D.column(4);
    std::cout << c1 << std::endl;

    // Matrix columns
    matrix<double> r1 = D.row(0);
    std::cout << r1 << std::endl;

    // Test QR decomposition:

    // Method 1:
    // matrix<int> q(3, 5), r(5, 5);
    // std::tie(q, r) = qr(D);

    // Method 2:
    std::tuple<matrix<double>, matrix<double>> qr_tuple= qr(D);
    matrix<double> q = std::get<0>(qr_tuple), r = std::get<1>(qr_tuple);

    std::cout << D << std::endl;
    std::cout << q*r << std::endl;
    if (q*r == D) {
        std::cout << "QR Decomposition Works :)" << std::endl;
    }
    else {
        std::cout << "QR Decomposition Failed :(" << std::endl;
    }

    //To Show that LU Decomposition works (Predefined Matrix D as example)

    matrix<double> test={{1,2,4},
                         {3,8,14},
                         {2,6,13}};

    matrix<double> test2={{1,2},
                          {3,8}};
    
    matrix<double> test3={{2,4,1,3},
                          {2,5,4,7},
                          {4,9,6,13},
                          {6,13,8,21}};

    std::pair<matrix<double>,matrix<double> > ans;

    std::cout<<"Test 1: "<<"\n";
    ans=mylu(test);

    std::cout<<test<<"\n";
    std::cout<<ans.first<<"\n";
    std::cout<<ans.second<<"\n";

    std::cout<<"Test 2: "<<"\n";
    ans=mylu(test2);

    std::cout<<test2<<"\n";
    std::cout<<ans.first<<"\n";
    std::cout<<ans.second<<"\n";

    std::cout<<"Test #: "<<"\n";
    ans=mylu(test3);

    std::cout<<test3<<"\n";
    std::cout<<ans.first<<"\n";
    std::cout<<ans.second<<"\n";


}