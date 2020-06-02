execute as @e[tag=medabot,tag=!dying] if score @s Stage = #temp Stage run tag @s add potential_target
execute as @e[tag=last_known_location,type=minecraft:armor_stand] if score @s Stage = #temp Stage run tag @s add potential_target
execute if entity @s[tag=enemy_medabot] run tag @e[tag=potential_target,tag=enemy_medabot] remove potential_target
execute if entity @s[tag=ally_medabot] run tag @e[tag=potential_target,tag=ally_medabot] remove potential_target
tag @e[tag=potential_target,limit=1,sort=nearest,tag=!was_hidden] add target
execute if entity @e[tag=target,limit=1] run tag @s add changed_target