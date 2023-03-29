#ifndef IP_FUNCTIONS_H_
#define IP_FUNCTIONS_H_
#include "fft.h"
#include "cplx_data.h"
#include "xaxidma.h"
#include "audio.h"
#include "math.h"

void sample_audio_stream(cplx_data_t * data_buff, int sample_points);
int detect_freq(cplx_data_t * tx_buff, cplx_data_t * rx_buff, int sample_points, fft_t * fft_inst);
void generate_PRNG(XAxiDma * myDma,unsigned long long int time_elapsed);

#define prng_output        (int*)(0xFFFF0080) // will hold at most 20 int values

#endif //IP_FUNCTIONS_H_
