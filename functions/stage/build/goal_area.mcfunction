execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=goal_area] if score @s Stage = #temp Stage run tag @s add dead
scoreboard players reset #temp Stage

function medabots_server:set_blocks/goal_area
tag @e[distance=..0.7,tag=goal_area] add no_ticking