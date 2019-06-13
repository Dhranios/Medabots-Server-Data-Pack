execute if entity @s[scores={Time=20}] run function medabots_server:items/medapart/hammer/20
execute if entity @s[scores={Time=20..22}] run function medabots_server:items/medapart/hammer/20_22
execute if entity @s[scores={Time=60..}] run function medabots_server:items/medapart/hammer/60_

# Increase time by 1
scoreboard players add @s[scores={Hammer=1..}] Time 1

# Allow dealing damage
effect clear @s minecraft:weakness

# Attacked my melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:items/medapart/melee_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:items/medapart/melee_trap/hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:items/medapart/melee_trap/hit