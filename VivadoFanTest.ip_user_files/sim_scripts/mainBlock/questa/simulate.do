onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mainBlock_opt

do {wave.do}

view wave
view structure
view signals

do {mainBlock.udo}

run -all

quit -force
