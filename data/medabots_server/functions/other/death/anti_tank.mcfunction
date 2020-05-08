execute if entity @s[tag=medabot] run execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,tag=killerable] if score @s Stage = #temp Stage run tag @s add this_robattle
tag @s add me
execute if entity @s[tag=medabot] run tellraw @a[tag=this_robattle] {"translate":"medabots_server:death.anti_tank","with":[{"selector":"@s"},{"selector":"@e[distance=..3,type=minecraft:area_effect_cloud,tag=detected,tag=anti_tank]"}]}
tag @s add had_death
tag @s add dying
execute if entity @s[tag=medabot,tag=!ally_medabot,tag=!enemy_medabot] run scoreboard players add @e[tag=!me,limit=1,sort=nearest,tag=this_robattle] Killer 1
execute if entity @s[tag=medabot,tag=ally_medabot] run scoreboard players add @e[tag=!me,limit=1,sort=nearest,tag=this_robattle,tag=!ally_medabot] Killer 1
execute if entity @s[tag=medabot,tag=enemy_medabot] run scoreboard players add @e[tag=!me,limit=1,sort=nearest,tag=this_robattle,tag=!enemy_medabot] Killer 1
tag @s remove me
scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle