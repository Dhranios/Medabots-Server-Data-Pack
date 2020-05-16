execute if entity @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,distance=..0.7] run function medabots_server:blocks/accelerator/accel
data modify entity @s[scores={Time=1}] ArmorItems[3].tag.CustomModelData set value 18
scoreboard players remove @s[scores={Time=1..}] Time 1