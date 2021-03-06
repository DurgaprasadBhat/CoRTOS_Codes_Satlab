
// NOTE:
// All symbols for internal cortos' use are prefixed with `__`.
// The declarations in this header is only for cortos' internal use.

#ifndef CORTOS_INTERNAL_H
#define CORTOS_INTERNAL_H

#include "cortos.h"

////////////////////////////////////////////////////////////////////////////////
// BLOCK START: cortos_memory_layout
////////////////////////////////////////////////////////////////////////////////

// All these memory layout macros (without the leading '__')
// are also defined in the cortos.h header file.

// First Address 0x0:
// Few instruction to start the bootup initializtion.

// Memory region reserved for cortos' misc internal use.
#define __RESERVED_MEM_START_ADDR 56
#define __RESERVED_MEM_END_ADDR 311

// Details related to the user scratch space.
#define __SCRATCH_SPACE_START_ADDR 312
#define __SCRATCH_SPACE_END_ADDR 1335
#define __TOTAL_SCRATCH_SPACE_IN_BYTES 1024

// Details of the cortos reserved lock vars (not available to the user)
#define __RES_LOCK_VARS_START_ADDR 1336
#define __RES_LOCK_VARS_END_ADDR 1463
#define __MAX_RES_LOCK_VARS 32

// Details of the lock vars available to the user.
#define __LOCK_VARS_START_ADDR 1464
#define __LOCK_VARS_END_ADDR 1591
#define __MAX_LOCK_VARS 32

// Details of the lock vars available to the user.
#define __Q_LOCK_VARS_START_ADDR 1592
#define __Q_LOCK_VARS_END_ADDR 1719
#define __MAX_Q_LOCK_VARS 32

// Details of the queue header array (one queue header per queue).
#define __Q_HEADERS_START_ADDR 1720
#define __Q_HEADERS_END_ADDR 2231
#define __MAX_Q_HEADERS 32

// Queues available to the user (all the queues sit here).
#define __QUEUE_START_ADDR 2232
#define __QUEUE_END_ADDR 34999
#define __MAX_QUEUES 32
#define __QUEUE_MSG_SIZE_IN_BYTES 32
#define __MAX_ELEMENTS_PER_QUEUE 32
#define __MAX_QUEUE_SIZE_IN_BYTES (MAX_ELEMENTS_PER_QUEUE * QUEUE_MSG_SIZE_IN_BYTES)

// Total heap space available in bytes.
#define __HEAP_START_ADDR 35000
#define __HEAP_END_ADDR 137399
#define __TOTAL_HEAP_SIZE_IN_BYTES 102400

// ALL INSTRUCTIONS start after 137399:
// 1. Logic to start all the threads.
// 2. All user program instructions sit here.

// All program stacks sit here.
#define __PROG_0_STACK_START_ADDR 3153920
#define __PROG_0_STACK_SIZE 8192

////////////////////////////////////////////////////////////////////////////////
// BLOCK END  : cortos_memory_layout
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
// BLOCK START: cortos_locking_declarations
////////////////////////////////////////////////////////////////////////////////

int __cortos_lock_acquire_buzy(int index);
int __cortos_lock_acquire(int index);
void __cortos_lock_release(int index);

#define __RES_LOCK_INDEX_BGET 0
#define __RES_LOCK_INDEX_PRINTF 1
#define __RES_LOCK_GET_Q_ID 2
#define __RES_LOCK_GET_LOCK_ID 3

////////////////////////////////////////////////////////////////////////////////
// BLOCK END  : cortos_locking_declarations
////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////
// BLOCK START: cortos_message_queues_declarations
////////////////////////////////////////////////////////////////////////////////

int __cortos_q_lock_acquire_buzy(int index);
int __cortos_q_lock_acquire(int index);
void __cortos_q_lock_release(int index);


typedef struct _CortosQueueHeader {
  int totalMsgs; // current total messages
  int readIndex;
  int writeIndex;
  int __; // to pad 4 bytes to make it 16 bytes.
} __CortosQueueHeader;


#define __Q_START_INDEX 0
#define __AJIT_Q_BASE 2232
#define __AJIT_Q_LEN 32
#define __AJIT_Q_MSG_SIZE 32

#define __AJIT_Q_HEADER_BASE 1720
#define __AJIT_Q_HEADER_SIZE 16

#define __GET_MSG_ADDR(_BASE, _INDEX) \
((_BASE) + ((_INDEX) * (__AJIT_Q_MSG_SIZE)))

#define __INCREMENT_INDEX(_INDEX) \
(((((_INDEX)+1) % __AJIT_Q_LEN)) ? \
((((_INDEX)+1) % __AJIT_Q_LEN)) : __Q_START_INDEX)

/*
This computes the base address of the queue with id `queueId`.
*/
#define __GET_Q_ADDR(_Q_ID) \
((__AJIT_Q_BASE) + \
((__AJIT_Q_MSG_SIZE) * (__AJIT_Q_LEN) * (_Q_ID)));

/*
This computes the base address of the queue header with id `queueId`.
*/
#define __GET_Q_HEADER_ADDR(_Q_ID) \
((__AJIT_Q_HEADER_BASE) + \
((__AJIT_Q_HEADER_SIZE) * (_Q_ID)));

////////////////////////////////////////////////////////////////////////////////
// BLOCK END  : cortos_message_queues_declarations
////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////
// BLOCK START: cortos_bget_declarations
////////////////////////////////////////////////////////////////////////////////

// This function is called only once by AjitCoRTOS.
void __cortos_bpool(void);

////////////////////////////////////////////////////////////////////////////////
// BLOCK END  : cortos_bget_declarations
////////////////////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////////////////////////////
// BLOCK START: cortos_debug_routines
////////////////////////////////////////////////////////////////////////////////

// Enable serial device to use printf etc.
// This function is automatically called by cortos in `init_00.s`.
void __cortos_enable_serial();

// specially defined for logging purposes
int __cortos_log_printf(const char *level, const char *fileName,
  const char *funcName, int lineNum, const char *fmt, ...);

////////////////////////////////////////////////////////////////////////////////
// BLOCK END  : cortos_debug_routines
////////////////////////////////////////////////////////////////////////////////


#endif
