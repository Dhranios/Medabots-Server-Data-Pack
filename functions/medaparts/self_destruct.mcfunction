# Start the timer
scoreboard players add @s[scores={SelfDestruct=1..,Battle=1}] SelfDestructTime 1

# Explode
execute if entity @s[scores={SelfDestructTime=20},tag=hostile] run summon minecraft:creeper ~ ~ ~ {Fuse:0s,CustomName:'{"translate":"medabots_server:medabots_server:move.self_destruct"}',ExplosionRadius:3b}
execute if entity @s[scores={SelfDestructTime=20},tag=hostile,type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.self_destruct.me","with":[{"selector":"@s"}]}
tag @s[scores={SelfDestructTime=20},tag=hostile] add had_death
kill @s[scores={SelfDestructTime=20},tag=hostile]

# Finish the move
scoreboard players reset @s[scores={SelfDestructTime=20..}] SelfDestruct
scoreboard players reset @s[scores={Battle=2}] SelfDestruct
scoreboard players reset @s[scores={SelfDestructTime=20..}] SelfDestructTime