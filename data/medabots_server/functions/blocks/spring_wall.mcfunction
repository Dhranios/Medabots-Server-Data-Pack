# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air

# Force a push if a round stone or ice block moves into the face
execute if entity @s[tag=east] positioned ~0.35 ~ ~ if entity @e[tag=round_stone,type=minecraft:armor_stand,distance=..0.7,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=east] positioned ~0.35 ~ ~ if entity @e[tag=ice_block,type=minecraft:armor_stand,distance=..0.7,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=east] positioned ~0.35 ~ ~ if entity @e[tag=bomb,type=minecraft:armor_stand,distance=..0.7,scores={Moving=3}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=north] positioned ~ ~ ~-0.35 if entity @e[tag=round_stone,type=minecraft:armor_stand,distance=..0.7,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=north] positioned ~ ~ ~-0.35 if entity @e[tag=ice_block,type=minecraft:armor_stand,distance=..0.7,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=north] positioned ~ ~ ~-0.35 if entity @e[tag=bomb,type=minecraft:armor_stand,distance=..0.7,scores={Moving=2}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=west] positioned ~-0.35 ~ ~ if entity @e[tag=round_stone,type=minecraft:armor_stand,distance=..0.7,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=west] positioned ~-0.35 ~ ~ if entity @e[tag=ice_block,type=minecraft:armor_stand,distance=..0.7,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=west] positioned ~-0.35 ~ ~ if entity @e[tag=bomb,type=minecraft:armor_stand,distance=..0.7,scores={Moving=1}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=south] positioned ~ ~ ~0.35 if entity @e[tag=round_stone,type=minecraft:armor_stand,distance=..0.7,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=south] positioned ~ ~ ~0.35 if entity @e[tag=ice_block,type=minecraft:armor_stand,distance=..0.7,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 39
execute if entity @s[tag=south] positioned ~ ~ ~0.35 if entity @e[tag=bomb,type=minecraft:armor_stand,distance=..0.7,scores={Moving=4}] run scoreboard players set @s[scores={Time=40..}] Time 39

# Push
execute if entity @s[scores={Time=39}] run playsound medabots_server:block.spring_wall block @a ~ ~ ~ 1
data modify entity @s[scores={Time=39}] ArmorItems[3].tag.CustomModelData set value 54
data modify entity @s[scores={Time=38}] ArmorItems[3].tag.CustomModelData set value 55
data modify entity @s[scores={Time=37}] ArmorItems[3].tag.CustomModelData set value 56
data modify entity @s[scores={Time=20}] ArmorItems[3].tag.CustomModelData set value 55
data modify entity @s[scores={Time=19}] ArmorItems[3].tag.CustomModelData set value 54
data modify entity @s[scores={Time=18}] ArmorItems[3].tag.CustomModelData set value 53
data modify entity @s[scores={Time=17}] ArmorItems[3].tag.CustomModelData set value 57
data modify entity @s[scores={Time=16}] ArmorItems[3].tag.CustomModelData set value 58
data modify entity @s[scores={Time=15}] ArmorItems[3].tag.CustomModelData set value 59
execute if entity @s[scores={Time=17}] run function medabots_server:blocks/spring_wall/push
data modify entity @s[scores={Time=9}] ArmorItems[3].tag.CustomModelData set value 58
data modify entity @s[scores={Time=6}] ArmorItems[3].tag.CustomModelData set value 57
data modify entity @s[scores={Time=3}] ArmorItems[3].tag.CustomModelData set value 53
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime

# Timer based pushing if powered
scoreboard players remove @s[scores={Time=..39}] Time 1
execute if score @s[scores={Time=40}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=41..}] Time 1

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object