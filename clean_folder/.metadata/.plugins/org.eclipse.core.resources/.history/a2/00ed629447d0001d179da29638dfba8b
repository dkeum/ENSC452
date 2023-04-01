#ifndef IP_FUNCTIONS_H_
#define IP_FUNCTIONS_H_
#include "audio.hpp"
#include "xaxidma.h"
#include "cplx_data.hpp"
#include "fft.hpp"
#include "math.h"

void sample_audio_stream(cplx_data_t * data_buff, int sample_points);
int detect_freq(cplx_data_t * tx_buff, cplx_data_t * rx_buff, int sample_points, fft_t * fft_inst);
void generate_PRNG(XAxiDma * myDma,unsigned long long int time_elapsed, int fft_bin);

#define prng_output        (int*)(0xFFFF0080) // will hold at most 20 int values
#define FREQ_OUT_ADDR (int*)(0xFFFF2000)

#endif //IP_FUNCTIONS_H_
