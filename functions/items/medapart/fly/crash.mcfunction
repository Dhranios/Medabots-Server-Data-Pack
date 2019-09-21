# Blow up crashing fliers
summon minecraft:creeper ~ ~-1 ~ {Fuse:0s,CustomName:'{"translate":"medabots_server:entity.flying_crash"}',Tags:["flying_crash"]}
execute as @s[tag=!had_death,type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.crash","with":[{"selector":"@s"}]}
tag @s add dying
tag @s add crushed
tag @s[type=minecraft:player] add had_death
execute if entity @e[distance=0.1..4,tag=hostile,tag=enemy_medabot] run advancement grant @s only medabots_server:main/kamikaze_bomber
execute if entity @a[distance=0.1..4,tag=hostile] run advancement grant @s only medabots_server:main/kamikaze_bomber

execute at @a[distance=0.1..4,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.crashed_on","with":[{"selector":"@a[distance=..0.1,tag=hostile,tag=!had_death,limit=1]"},{"selector":"@s"}]}
tag @e[distance=0.1..4,tag=hostile] add dying
tag @a[distance=0.1..4,tag=hostile,tag=!had_death] add had_death