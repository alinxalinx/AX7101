onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib adda_pll_opt

do {wave.do}

view wave
view structure
view signals

do {adda_pll.udo}

run -all

quit -force
