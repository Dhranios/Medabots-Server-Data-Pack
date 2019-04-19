execute if block ~ ~ ~ minecraft:iron_door[facing=west] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block ~ ~ ~ minecraft:iron_door[facing=south] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block ~ ~ ~ minecraft:iron_door[facing=north] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block ~ ~ ~ minecraft:iron_door[facing=east] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[tag=!negative_x,tag=!positive_x,tag=!negative_z,tag=!positive_z] run setblock ~ ~1 ~ minecraft:redstone_block
execute if entity @s[tag=negative_z] run setblock ~ ~ ~-1 minecraft:redstone_block
execute if entity @s[tag=negative_z] if block ~ ~1 ~-1 minecraft:air run setblock ~ ~ ~-1 minecraft:air
execute if entity @s[tag=negative_z] unless block ~ ~1 ~-1 minecraft:air run setblock ~ ~ ~-1 minecraft:barrier
execute if entity @s[tag=positive_z] run setblock ~ ~ ~1 minecraft:redstone_block
execute if entity @s[tag=positive_z] if block ~ ~1 ~1 minecraft:air run setblock ~ ~ ~1 minecraft:air
execute if entity @s[tag=positive_z] unless block ~ ~1 ~1 minecraft:air run setblock ~ ~ ~1 minecraft:barrier
execute if entity @s[tag=negative_x] run setblock ~-1 ~ ~ minecraft:redstone_block
execute if entity @s[tag=negative_x] if block ~-1 ~1 ~ minecraft:air run setblock ~-1 ~ ~ minecraft:air
execute if entity @s[tag=negative_x] unless block ~-1 ~1 ~ minecraft:air run setblock ~-1 ~ ~ minecraft:barrier
execute if entity @s[tag=positive_x] run setblock ~1 ~ ~ minecraft:redstone_block
execute if entity @s[tag=positive_x] if block ~1 ~1 ~ minecraft:air run setblock ~1 ~ ~ minecraft:air
execute if entity @s[tag=positive_x] unless block ~1 ~1 ~ minecraft:air run setblock ~1 ~ ~ minecraft:barrier