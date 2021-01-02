execute as @e[distance=..2.5,tag=balloon_bomb,tag=!action_floor] at @s run function medabots_server:entities/balloon_bomb/burst
tag @e[distance=..2.5,tag=pot] add broken
tag @e[distance=..2.5,tag=ice_block] add melting
summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"block.minecraft.tnt"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b}
execute if entity @s[scores={ActionFloorNr=0..}] run scoreboard players operation @e[distance=..0.7,tag=bomb_explosion,type=minecraft:tnt] ActionFloorNr = @s ActionFloorNr
tag @s add dead