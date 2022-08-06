#include <iostream>
#include "./install/include/mavsdk/mavsdk.h"

int main(int argc, char** argv){
    mavsdk::Mavsdk mavsdk;

     mavsdk::ConnectionResult connection_result = mavsdk.add_any_connection(argv[1]);

    if (connection_result != mavsdk::ConnectionResult::Success) {
        std::cerr << "Connection failed: " << connection_result << '\n';
        return 1;
    }

    std::cout << "Hello World!" << std::endl;

  return 0;
}
