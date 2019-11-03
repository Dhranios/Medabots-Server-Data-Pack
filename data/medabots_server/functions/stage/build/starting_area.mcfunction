execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=starting_area] if score @s Stage = #temp Stage run tag @s add dead
scoreboard players reset #temp Stage

function medabots_server:set_blocks/starting_area
tag @e[distance=..0.7,tag=starting_area] add no_ticking