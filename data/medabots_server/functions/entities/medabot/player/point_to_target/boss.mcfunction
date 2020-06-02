execute as @e[tag=boss,tag=!dying] if score @s Stage = #temp Stage run tag @s add potential_target
tag @e[tag=potential_target,limit=1,sort=nearest] add target
execute if entity @e[tag=target,limit=1] run tag @s add changed_target