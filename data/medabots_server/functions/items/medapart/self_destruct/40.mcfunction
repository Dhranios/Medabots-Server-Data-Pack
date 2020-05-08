# Explode
execute if entity @s[tag=hostile] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CustomName:'{"translate":"medabots_server:medabots_server:move.self_destruct"}',ExplosionRadius:3b}
execute if entity @s[tag=hostile] run function medabots_server:other/death/self_destruct

# Finish the move
scoreboard players reset @s SelfDestruct
scoreboard players reset @s SelfDestructTime