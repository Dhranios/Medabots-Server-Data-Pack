# Attacked by shooting trap
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!strong] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 0 true
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=!strong] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 0 true
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=strong] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute if entity @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=shooting_trap,tag=strong] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 true
execute if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.shooting_trap","with":[{"selector":"@s"},{"selector":"@e[distance=..0.1,type=minecraft:area_effect_cloud,tag=shooting_trap]"}]}
tag @s[scores={Death=1..}] add had_death
playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..0.1,type=minecraft:area_effect_cloud,tag=shooting_trap]