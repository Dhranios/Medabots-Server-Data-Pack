# Count down timer
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players set @s[tag=dead] Time 0

# Lift the bridge
setblock ~ ~-1 ~ minecraft:oak_planks
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/drawbridge/turn_back

# Reset the pushing
scoreboard players set @s Moving 0

# Push me
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/drawbridge/hit

# Fall if pushed from the correct side
tag @s[scores={Moving=1},tag=east] add fall
tag @s[scores={Moving=2},tag=south] add fall
tag @s[scores={Moving=3},tag=west] add fall
tag @s[scores={Moving=4},tag=north] add fall
scoreboard players set @s[tag=fall] Time 192
tag @s[tag=fall] remove Fall

# Lower the bridge
execute if entity @s[scores={Time=1..}] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[scores={Time=1..},tag=east,tag=!dead] run setblock ~1 ~-1 ~ minecraft:oak_planks
execute if entity @s[scores={Time=1..},tag=south,tag=!dead] run setblock ~ ~-1 ~1 minecraft:oak_planks
execute if entity @s[scores={Time=1..},tag=west,tag=!dead] run setblock ~-1 ~-1 ~ minecraft:oak_planks
execute if entity @s[scores={Time=1..},tag=north,tag=!dead] run setblock ~ ~-1 ~-1 minecraft:oak_planks


# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/drawbridge/clean_up