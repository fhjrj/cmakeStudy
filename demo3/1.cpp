#include <iostream>
#define MUTX 3

int main(){
    int a=10;
    #ifdef DEBUGG
    std::cout<<"haha\n";
    #endif
    for(int i=0;i<5;i++){
    #ifdef HAA
    std::cout<<"66\n";
    #endif
        std::cout<<"jj\n";
    }
}