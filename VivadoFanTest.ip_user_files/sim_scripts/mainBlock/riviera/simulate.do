onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mainBlock -L xil_defaultlib -L secureip -O5 xil_defaultlib.mainBlock

do {wave.do}

view wave
view structure

do {mainBlock.udo}

run -all

endsim

quit -force
