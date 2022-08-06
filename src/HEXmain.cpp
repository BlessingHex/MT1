#include <iostream>
#include "./install/include/mavsdk/mavsdk.h"

//#define _ITERATOR_DEBUG_LEVEL 0
// The mavsdk.lib that i copied over is in release mode, I need to get one that is in debug mode

int main(int argc, char** argv) {
    mavsdk::Mavsdk mavsdk;

    mavsdk::ConnectionResult connection_result = mavsdk.add_any_connection("localhost");

    if (connection_result != mavsdk::ConnectionResult::Success) {
        std::cerr << "Connection failed: " << connection_result << '\n';
        return 1;
    }

    std::cout << "Hello World!" << std::endl;

    return 0;
}
