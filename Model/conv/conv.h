#include <vector>
#include <string>

/*--------------------------------------------------------------------------------
MAKE SURE THE HEADER IS UPDATED TO MATCH THE CPP FILE MOTHERFUCKERRRR
--------------------------------------------------------------------------------*/

static const int SIGMOID_CONV = 0;
static const int TANH_CONV = 1;
static const int RELU_CONV = 2;
static const int EXPONENTIAL_CONV = 3;
static const int SWISH_CONV = 4;
static const int LINEAR_CONV = -1;

std::vector<std::vector<std::vector<std::vector<double>>>> readWeights(std::string fp);

std::vector<std::vector<std::vector<double>>> MaxPooling2D(std::vector<std::vector<std::vector<double>>> din);

std::vector<double> Flatten(std::vector<std::vector<std::vector<double>>> din);

double act(double input, int activation);

std::vector<std::vector<std::vector<double>>> Conv2D(std::vector<std::vector<std::vector<double>>> input, std::vector<std::vector<std::vector<std::vector<double>>>> weights, int activation);