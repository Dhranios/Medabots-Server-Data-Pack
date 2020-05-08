# Attacked by shooting trap
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!strong] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!strong] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=melee_trap,tag=strong] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=melee_trap,tag=strong] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 true
tag @s add hit_by_melee_trap
playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
tag @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=melee_trap] add dead