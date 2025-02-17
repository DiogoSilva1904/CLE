
#include <iostream>
#include <fstream>
#include <map>
#include <list>


struct WSData{
    float sum = 0.0f;
    float count = 0;
    float min = 100.0f;
    float max = -100.0f;
};

int main(int argc, char* argv[])
{
    // Use default file ...
    const char* file = "measurements.txt";
    if (argc > 1){
        // ... or the first argument.
        file = argv[1];
    }
    std::ifstream fh(file);
    if (not fh.is_open()){
        std::cerr << "Unable to open '" << file << "'" << std::endl;
        return 1;
    }

    std::map<std::string,WSData> stations;

    // Variable to store each line from the file
    std::string line;

    int pos = 0;


    // Read each line from the file and print it
    while (getline(fh, line)) {
        pos = line.find(";");

        std::string city = line.substr(0, pos); // Extract city name
        float temperature = std::stof(line.substr(pos + 1)); // Extract temperature value

        WSData& data = stations[city];
        data.sum += temperature;
        data.count++;
        if (temperature<data.min){
            data.min = temperature;
        }
        if (temperature>data.max){
            data.max = temperature;
        }

    }

    // Always close the file when done
    fh.close();

    for (const auto& entry : stations) {
        const std::string& city = entry.first;
        const WSData& data = entry.second;
        float average = data.sum / data.count;
        std::cout << city << ": avg: " << average 
                  << " min: " << data.min 
                  << " max: " << data.max 
                  << std::endl;
    }

    return 0;
}
