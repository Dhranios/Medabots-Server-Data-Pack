# Explode
execute if entity @s[tag=hostile] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CustomName:'{"translate":"medabots_server:medabots_server:move.self_destruct"}',ExplosionRadius:3b}
execute if entity @s[tag=hostile,type=minecraft:player,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.self_destruct.me","with":[{"selector":"@s"}]}
tag @s[tag=hostile] add had_death
tag @s[tag=hostile] add dying

# Finish the move
scoreboard players reset @s SelfDestruct
scoreboard players reset @s SelfDestructTime