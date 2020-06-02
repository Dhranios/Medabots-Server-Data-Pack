execute as @e[tag=goal_area] if score @s Stage = #temp Stage run tag @s add target
execute as @e[tag=robattle] if score @s Stage = #temp Stage run tag @s add target
execute if entity @e[tag=target,limit=1] run tag @s add changed_target