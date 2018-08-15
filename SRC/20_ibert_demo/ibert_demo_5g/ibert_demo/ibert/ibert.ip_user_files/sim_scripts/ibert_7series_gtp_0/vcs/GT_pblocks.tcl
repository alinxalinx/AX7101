set GT_CHANNELs [get_cells -hier -filter LIB_CELL=~GT*CHANNEL]
set GT_clockRegions [get_clock_regions -of $GT_CHANNELs]

foreach clockRegion $GT_clockRegions {
    create_pblock pblock_clockregion_$clockRegion
    resize_pblock pblock_clockregion_$clockRegion -add CLOCKREGION_$clockRegion:CLOCKREGION_$clockRegion
}

set i 0; 
foreach channel $GT_CHANNELs {
    set fanin [get_cells -of [get_pins -leaf -of [get_nets -segments -of  [get_pins -of [get_cells $channel] -filter DIRECTION==IN]] -filter DIRECTION==OUT] -filter REF_NAME!~*BUF*&&REF_NAME!~GT*COMMON]
    set fanout [get_cells -of [get_pins -leaf -of [get_nets -segments -of  [get_pins -of [get_cells $channel] -filter DIRECTION==OUT]] -filter DIRECTION==IN&&!IS_CLOCK] -filter REF_NAME!~*BUF*]
    set clockRegion [get_clock_regions -of $channel]
    add_cells_to_pblock pblock_clockregion_$clockRegion $fanin  -clear_locs 
    add_cells_to_pblock pblock_clockregion_$clockRegion $fanout  -clear_locs 
}