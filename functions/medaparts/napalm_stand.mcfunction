# Explode if it's in the ground or at an enemy
tag @s[tag=napalm] remove in_ground
execute if entity @s[tag=napalm] positioned ~ ~1 ~ if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3] run tag @s add in_ground
execute if entity @s[tag=napalm] if entity @e[type=!minecraft:arrow,tag=!napalm,distance=..3] run tag @s add in_ground
execute if entity @s[tag=napalm,tag=in_ground] run summon minecraft:creeper ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.napalm\"}",Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Tags:["napalm","life_time"]}