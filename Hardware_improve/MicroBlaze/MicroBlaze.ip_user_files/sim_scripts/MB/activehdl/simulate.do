transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+MB  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.MB xil_defaultlib.glbl

do {MB.udo}

run 1000ns

endsim

quit -force
