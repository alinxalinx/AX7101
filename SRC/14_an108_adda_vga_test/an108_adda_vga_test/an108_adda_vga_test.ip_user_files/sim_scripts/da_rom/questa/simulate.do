onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib da_rom_opt

do {wave.do}

view wave
view structure
view signals

do {da_rom.udo}

run -all

quit -force
