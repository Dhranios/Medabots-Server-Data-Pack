# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air

# Countdown punching
scoreboard players remove @s[scores={Time=..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=19}] run playsound medabots_server:block.hammer_punch block @a ~ ~ ~ 1
teleport @s[scores={Time=18..19},tag=east] ~-0.1 ~ ~
teleport @s[scores={Time=18..19},tag=north] ~ ~ ~0.1
teleport @s[scores={Time=18..19},tag=south] ~ ~ ~-0.1
teleport @s[scores={Time=18..19},tag=west] ~0.1 ~ ~
data modify entity @s[scores={Time=18}] ArmorItems[3].tag.CustomModelData set value 61
data modify entity @s[scores={Time=16}] ArmorItems[3].tag.CustomModelData set value 62
data modify entity @s[scores={Time=14}] ArmorItems[3].tag.CustomModelData set value 63
data modify entity @s[scores={Time=12}] ArmorItems[3].tag.CustomModelData set value 64
data modify entity @s[scores={Time=10}] ArmorItems[3].tag.CustomModelData set value 65
execute if entity @s[scores={Time=10..19},tag=!dead] run function medabots_server:blocks/hammer_punch/punch
teleport @s[scores={Time=8..9}] ~ ~0.1 ~
data modify entity @s[scores={Time=8}] ArmorItems[3].tag.CustomModelData set value 64
data modify entity @s[scores={Time=6}] ArmorItems[3].tag.CustomModelData set value 63
teleport @s[scores={Time=5..6},tag=east] ~0.1 ~ ~
teleport @s[scores={Time=5..6},tag=north] ~ ~ ~-0.1
teleport @s[scores={Time=5..6},tag=south] ~ ~ ~0.1
teleport @s[scores={Time=5..6},tag=west] ~-0.1 ~ ~
data modify entity @s[scores={Time=4}] ArmorItems[3].tag.CustomModelData set value 62
data modify entity @s[scores={Time=2}] ArmorItems[3].tag.CustomModelData set value 61
teleport @s[scores={Time=0..1}] ~ ~-0.1 ~
data modify entity @s[scores={Time=0}] ArmorItems[3].tag.CustomModelData set value 60
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object