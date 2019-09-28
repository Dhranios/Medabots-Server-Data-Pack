teleport @s ~ ~0.028 ~
data merge entity @s {Air:1}
data merge entity @s {Air:0}
execute as @e[distance=..0.4,tag=ice_block] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=ice_block,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=ice_block,type=minecraft:falling_block] run data merge entity @s {Time:1,DropItem:0b}
execute as @e[distance=..0.4,tag=round_stone] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:shulker] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=round_stone,type=minecraft:falling_block] run data merge entity @s {Time:1,DropItem:0b}

# Model
execute if entity @s[tag=guard] run function medabots_server:animations/guard