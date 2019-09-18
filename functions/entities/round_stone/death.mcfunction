execute at @s run tag @e[distance=..0.4,tag=round_stone] add dead
tag @e[distance=..0.4,tag=round_stone] add dead
execute at @s run teleport @e[distance=..0.4,tag=round_stone] ~ -1000 ~
teleport @s ~ ~ ~
teleport @e[distance=..0.4,tag=round_stone] ~ -1000 ~
fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:black_stained_glass
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[scores={ActionFloorNr=0..}] run function medabots_server:blocks/action_floor/reenable_spawning