# Play sound
playsound medabots_server:block.accelerator block @a ~ ~ ~ 1
scoreboard players set @s Time 5
data modify entity @s ArmorItems[3].tag.CustomModelData set value 19

# Apply motion
execute if entity @s[tag=north] positioned ~-0.5 ~ ~-0.5 as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,dx=0,dy=0,dz=0] unless entity @s[tag=fly_legs,scores={LegsArmor=1..}] unless entity @s[tag=float_legs,scores={LegsArmor=1..}] run function medabots_server:blocks/accelerator/teleport_north
execute if entity @s[tag=south] positioned ~-0.5 ~ ~-0.5 as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,dx=0,dy=0,dz=0] unless entity @s[tag=fly_legs,scores={LegsArmor=1..}] unless entity @s[tag=float_legs,scores={LegsArmor=1..}] run function medabots_server:blocks/accelerator/teleport_south
execute if entity @s[tag=east] positioned ~-0.5 ~ ~-0.5 as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,dx=0,dy=0,dz=0] unless entity @s[tag=fly_legs,scores={LegsArmor=1..}] unless entity @s[tag=float_legs,scores={LegsArmor=1..}] run function medabots_server:blocks/accelerator/teleport_east
execute if entity @s[tag=west] positioned ~-0.5 ~ ~-0.5 as @e[tag=hostile,type=!minecraft:shulker,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,dx=0,dy=0,dz=0] unless entity @s[tag=fly_legs,scores={LegsArmor=1..}] unless entity @s[tag=float_legs,scores={LegsArmor=1..}] run function medabots_server:blocks/accelerator/teleport_west