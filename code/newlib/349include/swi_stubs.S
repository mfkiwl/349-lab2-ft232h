/**
 * @file   swi_stubs.S
 *
 * @brief  Stub functions for newlib and 349libc syscalls
 *
 * @date   Mar.4th,2018
 * @author David Dong <haochend@andrew.cmu.edu>
 */

.section ".text"

#include <swi_num.h>

.global _sbrk
_sbrk:
  swi SWI_SBRK
  bx  lr

.global _write
_write:
  swi SWI_WRITE
  bx  lr

.global _close
_close:
  swi SWI_CLOSE
  bx  lr

.global _fstat
_fstat:
  swi SWI_FSTAT
  bx  lr

.global _isatty
_isatty:
  swi SWI_ISATTY
  bx  lr

.global _lseek
_lseek:
  swi SWI_LSEEK
  bx  lr

.global _read
_read:
  swi SWI_READ
  bx  lr

.global _exit
_exit:
  swi SWI_EXIT
  bx  lr

.global sample_adc_start
sample_adc_start:
  swi SWI_ADC_START
  bx  lr

.global sample_adc_stop
sample_adc_stop:
  swi SWI_ADC_STOP
  bx  lr

.global thread_init
thread_init:
  swi SWI_THR_INIT
  bx  lr

.global thread_create
thread_create:
  swi SWI_THR_CREATE
  bx  lr

.global mutex_init
mutex_init:
  swi SWI_MUT_INIT
  bx  lr

.global mutex_lock
mutex_lock:
  swi SWI_MUT_LOK
  bx  lr

.global mutex_unlock
mutex_unlock:
  swi SWI_MUT_ULK
  bx  lr

.global wait_until_next_period
wait_until_next_period:
  swi SWI_WAIT
  bx  lr

.global get_time
get_time:
  swi SWI_TIME
  bx  lr

.global scheduler_start
scheduler_start:
  swi SWI_SCHD_START
  bx  lr

.global servo_enable
servo_enable:
  swi SWI_SERVO_ENABLE
  bx lr

.global servo_set
servo_set:
  swi SWI_SERVO_SET
  bx lr
