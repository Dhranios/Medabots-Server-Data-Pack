# Tags new action floors with what block they'll replace
execute unless entity @s[scores={Time=-100..}] run function medabots_server:blocks/action_floor/scores

# Only activate when nothing's on top, and the current entity's gone
execute store result score #temp Stage run scoreboard players get @s Stage
execute store result score #temp ActionFloorNr run scoreboard players get @s ActionFloorNr
execute at @a[scores={Battle=2}] if score @s Stage = #temp Stage run tag @s add no_spawning
execute as @e[tag=!action_floor] if score @s ActionFloorNr = #temp ActionFloorNr run scoreboard players set @e[distance=..0.1,tag=action_floor,limit=1,scores={Time=0},tag=enabled] Time -1
execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s[scores={Time=0}] Time -1
execute if entity @e[distance=..0.7,tag=!action_floor,type=!minecraft:item] run scoreboard players set @s[scores={Time=0}] Time -1
scoreboard players set @s[scores={Time=0},tag=!enabled] Time -1
scoreboard players set @s[scores={Time=0},tag=no_spawning] Time -1
scoreboard players add @s[scores={Time=0..}] Time 1
scoreboard players add @s[scores={Time=..-1},tag=!no_spawning] Time 1
tag @s[tag=no_spawning] remove no_spawning
scoreboard players reset #temp Stage
scoreboard players reset #temp ActionFloorNr

# Sound!
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.action_floor block @a ~ ~ ~ 1

# Show a glow
execute if entity @s[scores={Time=1}] run setblock ~ ~ ~ minecraft:snow[layers=4]
execute if entity @s[scores={Time=1}] run setblock ~ ~1 ~ minecraft:barrier

# Guard
execute if entity @s[scores={Time=50},tag=guard] run function medabots_server:blocks/action_floor/guard
execute if entity @s[scores={Time=100},tag=guard] as @e[distance=..0.7,type=minecraft:creeper,tag=guard] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={Time=100},tag=guard] run scoreboard players operation @e[distance=..0.7,type=minecraft:creeper,tag=guard] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=guard] run tag @e[distance=..0.7,type=minecraft:creeper,tag=guard] remove no_processing

# Cannon
execute if entity @s[scores={Time=50},tag=cannon] run function medabots_server:blocks/action_floor/cannon
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~ ~ minecraft:iron_block
execute if entity @s[scores={Time=72},tag=cannon] run setblock ~ ~2 ~ minecraft:barrier
execute if entity @s[scores={Time=100},tag=cannon] as @e[distance=..0.7,type=minecraft:zombie,tag=cannon] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={Time=100},tag=cannon] run scoreboard players operation @e[distance=..0.7,type=minecraft:zombie,tag=cannon] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_1] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_1
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_2] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_2
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_3] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_3
execute if entity @s[scores={Time=100},tag=cannon,tag=delay_4] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add delay_4
execute if entity @s[scores={Time=100},tag=cannon,tag=detect] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] add detect
execute if entity @s[scores={Time=100},tag=cannon] run tag @e[distance=..0.7,type=minecraft:zombie,tag=cannon] remove no_processing

# Ice Block
execute if entity @s[scores={Time=50},tag=ice_block] run summon minecraft:area_effect_cloud ~ ~-1.77 ~ {CustomName:'{"translate":"medabots_server:entity.ice_block"}',Tags:["ice_block","hostile","killerable","no_processing"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:ice"},NoGravity:1b,Tags:["ice_block","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["ice_block","hostile","killerable"]}]}
execute if entity @s[scores={Time=100},tag=ice_block] run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=ice_block,tag=!moving_1,tag=!moving_2,tag=!moving_3,tag=!moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 0
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_1] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 1
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_2] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 2
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_3] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 3
execute if entity @s[scores={Time=100},tag=ice_block,tag=moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] Moving 4
execute if entity @s[scores={Time=100},tag=ice_block] run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=ice_block] remove no_processing

# Round Stone
execute if entity @s[scores={Time=50},tag=round_stone] run summon minecraft:area_effect_cloud ~ ~-1.77 ~ {CustomName:'{"translate":"medabots_server:entity.round_stone"}',Tags:["round_stone","hostile","killerable","no_processing"],Duration:2147483647,Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:diorite"},NoGravity:1b,Tags:["round_stone","hostile","killerable"]},{id:"minecraft:shulker",Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Tags:["round_stone","hostile","killerable"]}]}
execute if entity @s[scores={Time=100},tag=round_stone] run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=round_stone,tag=!moving_1,tag=!moving_2,tag=!moving_3,tag=!moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 0
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_1] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 1
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_2] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 2
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_3] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 3
execute if entity @s[scores={Time=100},tag=round_stone,tag=moving_4] run scoreboard players set @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] Moving 4
execute if entity @s[scores={Time=100},tag=round_stone] run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=round_stone] remove no_processing

# Balloon Bomb
execute if entity @s[scores={Time=100},tag=balloon_bomb] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.balloon_bomb"}',Tags:["balloon_bomb","no_processing"],Duration:2147483647}
execute if entity @s[scores={Time=70},tag=balloon_bomb] run setblock ~ ~ ~ minecraft:sponge
execute if entity @s[scores={Time=100},tag=balloon_bomb] run setblock ~ ~ ~ minecraft:air
execute if entity @s[scores={Time=100},tag=balloon_bomb] run scoreboard players operation @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=balloon_bomb] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=balloon_bomb] run tag @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=balloon_bomb] remove no_processing

# Bomb
execute if entity @s[scores={Time=100},tag=bomb] run summon minecraft:tnt ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.bomb"}',Fuse:600s,Tags:["bomb","hostile","killerable","no_processing"]}
execute if entity @s[scores={Time=70},tag=bomb] run setblock ~ ~ ~ minecraft:tnt
execute if entity @s[scores={Time=100},tag=bomb] run setblock ~ ~ ~ minecraft:air
execute if entity @s[scores={Time=100},tag=bomb,tag=delay_0] as @e[distance=..0.7,type=minecraft:tnt,tag=bomb] run data merge entity @s {Fuse:2s}
execute if entity @s[scores={Time=100},tag=bomb,tag=delay_5] as @e[distance=..0.7,type=minecraft:tnt,tag=bomb] run data merge entity @s {Fuse:100s}
execute if entity @s[scores={Time=100},tag=bomb,tag=delay_10] as @e[distance=..0.7,type=minecraft:tnt,tag=bomb] run data merge entity @s {Fuse:200s}
execute if entity @s[scores={Time=100},tag=bomb] run scoreboard players operation @e[distance=..0.7,type=minecraft:tnt,tag=bomb] ActionFloorNr = @s ActionFloorNr
execute if entity @s[scores={Time=100},tag=bomb] run tag @e[distance=..0.7,type=minecraft:tnt,tag=bomb] remove no_processing

# Reset
execute if entity @s[scores={Time=100}] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:snow
execute if entity @s[scores={Time=100}] run fill ~ ~1 ~ ~ ~1 ~ minecraft:air replace minecraft:barrier
tag @s[scores={Time=100},tag=1_medallar_cent] remove 1_medallar_cent
tag @s[scores={Time=100},tag=2_medallar_cents] remove 2_medallar_cents
tag @s[scores={Time=100},tag=4_medallar_cents] remove 4_medallar_cents
tag @s[scores={Time=100},tag=6_medallar_cents] remove 6_medallar_cents
tag @s[scores={Time=100},tag=10_medallar_cents] remove 10_medallar_cents
tag @s[scores={Time=100},tag=20_medallar_cents] remove 20_medallar_cents
scoreboard players set @s[scores={Time=100}] Time -80

# Remove when cleaning up stage
execute if entity @s[tag=dead] run function medabots_server:blocks/action_floor/clean_up