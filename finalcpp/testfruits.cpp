#include "C:/Users/18472/385_xilinx_files/Untitled Folder/MicroFlow/MicroFlow.h"
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <fstream>
#include <string.h>

int main() {
	//int topology[] = {100, 100, 50, 25, 9216};
	std::vector<double> weights;
    std::ifstream MyReadFile("C:/Users/18472/385_xilinx_files/Untitled Folder/weights_and_biases_fruit_11_9_23.txt");
    std::string testString;
    char testChar;
    double testDub;
    MyReadFile >> testString >> testChar >> testDub;
    std::cout << weights.size() << std::endl;
    //std::cout << testDub << std::endl;
    weights.push_back(testDub);

    //std::cout << weights.size() << std::endl;
    //MyReadFile >> testChar;
    // if (testChar == ',') {
    //     MyReadFile >> testDub;
    //     weights.push_back(testDub);
    //     MyReadFile >> testChar;
    // }

    // for (int i = 0; i < weights.size(); i++) {
    //     std::cout << weights[i] << std::endl;
    // }
    //std::cout << testString << testChar << testDub << std::endl;
    std::cout << "Hello World" << std::endl;

// 	double biases[] = {-1.4674287, -3.13011, 0.36903697, -0.27291444, 1.5541532};
// 	double inputs[] = {0, 0};
// 	double output[1] = {};
// 	int activations[] = {RELU, RELU, RELU, SOFTMAX}; //Activations for each layer excluding the input layer
// 	int layers = 5;

// 	MicroMLP mlp(layers, topology, weights, biases, SIGMOID); //Create the Multi-Layer Perceptron
//   //MicroMLP mlp(layers, topology, weights, biases, activations); //This is also valid.

// 	mlp.feedforward(inputs, output); //Run a feedforward pass
// 	xil_printf("Inputs: ");
// 	xil_printf("%d", inputs[0]);
// 	xil_printf(", ");
// 	xil_printf("%d\n", inputs[1]);
// 	xil_printf("Neural Network Output: %f\n", (float)output[0]);
// 	if (output[0]>0.5) {
// 		xil_printf("BANANA\n");
// 	} else {
// 		xil_printf("NOT BANANA\n");
// 	}

// 	inputs[0] = 1;
// 	mlp.feedforward(inputs, output);
// 	xil_printf("Inputs: ");
// 	xil_printf("%e", inputs[0]);
// 	xil_printf(", ");
// 	xil_printf("%e\n", inputs[1]);
// 	xil_printf("Neural Network Output: %e\n", output[0]);

// 	inputs[1] = 1;
// 	mlp.feedforward(inputs, output);
// 	xil_printf("Inputs: ");
// 	xil_printf("%f", inputs[0]);
// 	xil_printf(", ");
// 	xil_printf("%f\n", inputs[1]);
// 	xil_printf("Neural Network Output: %f\n", output[0]);

// 	inputs[0] = 0;
// 	mlp.feedforward(inputs, output);
// 	xil_printf("Inputs: ");
// 	xil_printf("%f", inputs[0]);
// 	xil_printf(", ");
// 	xil_printf("%f\n", inputs[1]);
// 	xil_printf("Neural Network Output: %f\n", output[0]);
// 	cleanup_platform();
	return 0;
}