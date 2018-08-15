onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+sys_pll -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sys_pll xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sys_pll.udo}

run -all

endsim

quit -force
