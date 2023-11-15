#include "C:/Users/jvask/OneDrive/Desktop/VIVADO/Model/conv/conv.h"
#include <math.h>
#include <string>
#include <vector>
#include <iostream>
#include <fstream>

// Delete once done debugging (and remove the assert lines)
#include <assert.h>

// NOTE: NEED TO FIGURE OUT SOFTMAX ACTUVATION FOR MICROFLOW OR CHANGE THE MODEL

// Function to read weights from text for testing purposes
std::vector<std::vector<std::vector<std::vector<double>>>> readWeights(std::string fp) {
    std::vector<std::vector<std::vector<std::vector<double>>>> weights;
    std::ifstream file(fp);
    std::string testString;
    int shape[4];
    for (std::string line; std::getline(file, line); ) {
        std::cout << line << std::endl;
    }
    return weights;
}

// Max Pooling, third dimension (inner-most vectors) don't change size
std::vector<std::vector<std::vector<double>>> MaxPooling2D(std::vector<std::vector<std::vector<double>>> din) {
    std::vector<std::vector<std::vector<double>>> dout;
    dout.resize(din.size() / 2);
    for (size_t i = 0; i < din.size() / 2; i++) {
        dout[i].resize(din[0].size() / 2);
        for (size_t j = 0; j < din[0].size() / 2; j++) {
            dout[i][j].resize(din[0][0].size());
            for (size_t k = 0; k < din[0][0].size(); k++) {
                dout[i][j][k] = std::max(std::max(std::max(din[2*i][2*j][k], din[2*i][2*j+1][k]), din[2*i+1][2*j][k]), din[2*i+1][2*j+1][k]);
            }
        }
    }
    return dout;
}

// Flattening, FIGURE OUT ORDERING OF DIMENSIONS TO MATCH THE MODEL
std::vector<double> Flatten(std::vector<std::vector<std::vector<double>>> din) {
    std::vector<double> dout;
    for (size_t i = 0; i < din.size(); i++) {
        for (size_t j = 0; j < din[i].size(); j++) {
            for (size_t k = 0; k < din[i][j].size(); k++) {
                dout.push_back(din[i][j][k]);
            }
        }
    }
    return dout;
}

// Apply activation function
// NEED TO IMPLEMENT FOR MORE FUNCTIONS MOTHERFUCKERR
double act(double input, int activation) {
    double out;
    if (activation == SIGMOID_CONV) {
        out = 1 / (1 + exp(-input));
    } else if (activation == TANH_CONV) {
        out = tanh(input);
    } else if (activation == EXPONENTIAL_CONV){
        out = exp(input);
    } else if (activation == SWISH_CONV){
        out = input / (1 + exp(-input));
    } else if (activation == RELU_CONV){
        out = fmax(0, input);
    } else {
        out = input;
    }
    return out;
}

// 2D Convolution
// Weights format: first dimension is the number of layers in the new output, then the kernel in 3x3x(depth) format
// Should theoretically work with sizes other than 3 but what do I know right
// NEED TO CHECK THROUGH THIS THOROUGHLY
std::vector<std::vector<std::vector<double>>> Conv2D(std::vector<std::vector<std::vector<double>>> input, std::vector<std::vector<std::vector<std::vector<double>>>> weights, int activation) {
    std::vector<std::vector<std::vector<double>>> output;
    output.resize(input.size());
    for (size_t layer = 0; layer < weights.size(); layer++) {
        // One layer of the output (a single 2d convolution with one of the weight kernels)
        for (size_t i = 0; i < input.size(); i++) {
            output[i].resize(input[0].size());
            for (size_t j = 0; j < input[0].size(); j++) {
                // Single placement (location to place the kernel relative to the input matrix)
                output[i][j].resize(weights.size());
                output[i][j][layer] = 0;
                for (size_t l = 0; l < weights[layer].size(); l++) {
                    for (size_t m = 0; m < weights[layer][0].size(); m++) {
                        // Input and kernel both have length weights[layer][0][0].size()
                        assert(weights[layer][0][0].size() == input[0][0].size());
                        // xindex and yindex are the x and y position of the current weight column relative to the 0 index of the input vector
                        int xindex = i + l - weights[layer].size() / 2;
                        int yindex = j + m - weights[layer][0].size() / 2;
                        if (xindex < 0 || yindex < 0 || xindex >= (int) input.size() || yindex >= (int) input[0].size()) {
                            continue;
                        }
                        // Input and kernel line up properly with nonzero values
                        for (size_t n = 0; n < weights[layer][0][0].size(); n++) {
                            output[i][j][layer] = output[i][j][layer] + input[xindex][yindex][n] * weights[layer][l][m][n];
                        }
                    }
                }
                output[i][j][layer] = act(output[i][j][layer], activation);
            }
        }
    }
}