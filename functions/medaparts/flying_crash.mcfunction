# Blow up crashing fliers
execute positioned ~-1 ~ ~-1 as @a[dx=2,dy=6,dz=2,scores={LegsArmor=..0,Fly=1}] at @s run summon minecraft:creeper ~ ~-1 ~ {Fuse:0s,CustomName:"{\"translate\":\"medabots_server:entity.flying_crash\"}",Tags:["flying_crash"]}
execute positioned ~-1 ~ ~-1 as @a[dx=2,dy=7,dz=2,scores={LegsArmor=..0,Fly=1}] run tellraw @a {"translate":"medabots_server:death.crash","with":[{"selector":"@s"}]}
execute positioned ~-1 ~ ~-1 run tag @a[dx=2,dy=7,dz=2,scores={LegsArmor=..0,Fly=1}] add had_death
execute positioned ~-1 ~ ~-1 run kill @a[dx=2,dy=7,dz=2,scores={LegsArmor=..0,Fly=1}]

# remove the flying crash checker
kill @s