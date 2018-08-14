onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib afifo_64_256_opt

do {wave.do}

view wave
view structure
view signals

do {afifo_64_256.udo}

run -all

quit -force
