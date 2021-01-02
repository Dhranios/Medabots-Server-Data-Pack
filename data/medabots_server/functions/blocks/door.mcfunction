# Is this door powered?
execute if score @s PowerAmount >= @s PowerNeeded run tag @s[tag=!no_open,scores={Time=0},tag=!dead] add powered
execute unless score @s PowerAmount >= @s PowerNeeded run tag @s[scores={Time=10},tag=!dead] remove powered
tag @s[tag=no_open,scores={Time=10},tag=!dead] remove powered

data modify entity @s[scores={Time=1}] ArmorItems[3].tag.CustomModelData set value 20
data modify entity @s[scores={Time=2}] ArmorItems[3].tag.CustomModelData set value 21
data modify entity @s[scores={Time=4}] ArmorItems[3].tag.CustomModelData set value 22
data modify entity @s[scores={Time=6}] ArmorItems[3].tag.CustomModelData set value 23
data modify entity @s[scores={Time=8}] ArmorItems[3].tag.CustomModelData set value 24
data modify entity @s[scores={Time=9}] ArmorItems[3].tag.CustomModelData set value 25
execute align xyz unless entity @e[dx=1,dy=4,dz=0,tag=!door,tag=!mission,tag=!mr_referee] run scoreboard players remove @s[tag=!powered,tag=x,scores={Time=1..}] Time 1
execute align xyz unless entity @e[dx=0,dy=4,dz=1,tag=!door,tag=!mission,tag=!mr_referee] run scoreboard players remove @s[tag=!powered,tag=z,scores={Time=1..}] Time 1
scoreboard players add @s[tag=powered,scores={Time=..9}] Time 1

# Open the door
execute if entity @s[tag=powered,scores={Time=1}] run function medabots_server:blocks/door/open

# Close the door
execute if entity @s[tag=!powered,scores={Time=9}] run function medabots_server:blocks/door/close
execute if entity @s[tag=!powered,scores={Time=7}] run playsound medabots_server:block.door.close block @a ~ ~ ~ 1

scoreboard players reset #temp Stage

# Remove when cleaning up a stage
execute if entity @s[tag=dead,tag=z] unless entity @e[tag=!dead,distance=..0.7,tag=door] run fill ~ ~ ~ ~ ~3 ~1 minecraft:air replace minecraft:black_stained_glass
execute if entity @s[tag=dead,tag=z] unless entity @e[tag=!dead,distance=..0.7,tag=door] run fill ~ ~ ~ ~ ~3 ~1 minecraft:air replace minecraft:iron_trapdoor
execute if entity @s[tag=dead,tag=x] unless entity @e[tag=!dead,distance=..0.7,tag=door] run fill ~ ~ ~ ~1 ~3 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[tag=dead,tag=x] unless entity @e[tag=!dead,distance=..0.7,tag=door] run fill ~ ~ ~ ~1 ~3 ~ minecraft:air replace minecraft:iron_trapdoor

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object