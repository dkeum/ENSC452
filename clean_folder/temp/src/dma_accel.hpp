#include <stdlib.h>
#include "xaxidma.h"
#include "xscugic.h"


//#####################################################################################

// Hardware-specific parameters
#define DMA_ACCEL_IS_CACHE_COHERENT 0 // Set to 1 to avoid overhead of software cache flushes if going through the ACP

// Return types
#define DMA_ACCEL_SUCCESS           0
#define DMA_ACCEL_DMA_INIT_FAIL    -1
#define DMA_ACCEL_INTC_INIT_FAIL   -2
#define DMA_ACCEL_XFER_FAIL        -3

// Object forward declaration
typedef struct dma_accel dma_accel_t;


dma_accel_t* dma_accel_create(int dma_device_id, int intc_device_id, int s2mm_intr_id,
		                      int mm2s_intr_id, int sample_size_bytes);

void dma_accel_destroy(dma_accel_t* p_dma_accel_inst);
void dma_accel_set_stim_buf(dma_accel_t* p_dma_accel_inst, void* p_stim_buf);
void* dma_accel_get_stim_buf(dma_accel_t* p_dma_accel_inst);
void dma_accel_set_result_buf(dma_accel_t* p_dma_accel_inst, void* p_result_buf);
void* dma_accel_get_result_buf(dma_accel_t* p_dma_accel_inst);
void dma_accel_set_buf_length(dma_accel_t* p_dma_accel_inst, int buf_length);
int dma_accel_get_buf_length(dma_accel_t* p_dma_accel_inst);
void dma_accel_set_sample_size_bytes(dma_accel_t* p_dma_accel_inst, int sample_size_bytes);
int dma_accel_get_sample_size_bytes(dma_accel_t* p_dma_accel_inst);
int dma_accel_xfer(dma_accel_t* p_dma_accel_inst);

