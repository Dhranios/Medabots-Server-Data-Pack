summon minecraft:tnt ~ ~ ~ {Fuse:20s,Tags:["hostile","bomb_explosion"],NoGravity:1b}
execute if entity @s[scores={ActionFloorNr=0..}] run scoreboard players operation @e[distance=..0.7,tag=bomb_explosion] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={ActionFloorNr=0..}] run function medabots_server:blocks/action_floor/reenable_spawning
tag @s add dead