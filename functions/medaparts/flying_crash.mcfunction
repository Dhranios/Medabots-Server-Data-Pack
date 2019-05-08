# Blow up crashing fliers
execute as @a[dy=7,scores={LegsArmor=..0,Fly=1}] at @s run summon minecraft:creeper ~ ~-1 ~ {Fuse:0s,CustomName:'{"translate":"medabots_server:entity.flying_crash"}',Tags:["flying_crash"]}
execute as @a[dy=7,scores={LegsArmor=..0,Fly=1},tag=!had_death] run tellraw @a {"translate":"medabots_server:death.crash","with":[{"selector":"@s"}]}
tag @a[dy=7,scores={LegsArmor=..0,Fly=1}] add dying
tag @a[dy=7,scores={LegsArmor=..0,Fly=1}] add crushed
tag @a[dy=7,scores={LegsArmor=..0,Fly=1}] add had_death

# remove the flying crash checker
tag @s add dead