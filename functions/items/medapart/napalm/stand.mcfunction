# Explode if it's in the ground or at an enemy
tag @s remove in_ground
execute if entity @s[tag=!ally_team,tag=!enemy_team] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile] run tag @s add in_ground
execute if entity @s[tag=!ally_team,tag=!enemy_team] if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile] run tag @s add in_ground
execute if entity @s[tag=ally_team] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile,tag=!ally_medabot] run tag @s add in_ground
execute if entity @s[tag=ally_team] if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile,tag=!ally_medabot] run tag @s add in_ground
execute if entity @s[tag=enemy_team] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile,tag=!enemy_medabot] run tag @s add in_ground
execute if entity @s[tag=enemy_team] if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3,tag=hostile,tag=!enemy_medabot] run tag @s add in_ground

execute if entity @s[tag=in_ground] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.napalm"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Tags:["napalm","life_time"]}