# Play sound
playsound medabots_server:block.accelerator block @a ~ ~ ~ 1
scoreboard players set @s Time 5
data modify entity @s ArmorItems[3].tag.CustomModelData set value 19

# Guards can't have Motion applied
execute if entity @s[tag=north] as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,distance=..0.7] at @s run function medabots_server:blocks/accelerator/teleport_north
execute if entity @s[tag=south] as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,distance=..0.7] at @s run function medabots_server:blocks/accelerator/teleport_south
execute if entity @s[tag=east] as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,distance=..0.7] at @s run function medabots_server:blocks/accelerator/teleport_east
execute if entity @s[tag=west] as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,distance=..0.7] at @s run function medabots_server:blocks/accelerator/teleport_west