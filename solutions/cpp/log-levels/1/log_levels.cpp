#include <string>

namespace log_line {

    std::string delimiter = ": ";

    std::string message(std::string log_line){
        return log_line.substr(log_line.find(delimiter) + 2);
    }

    std::string log_level(std::string log_line){
        return log_line.substr(1, log_line.find(delimiter) - 2);
    }

    std::string reformat(std::string log_line){
        return message(log_line) + " (" + log_level(log_line) + ")";
    }
}
