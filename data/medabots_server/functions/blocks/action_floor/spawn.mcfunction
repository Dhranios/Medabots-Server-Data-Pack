# Sound!
execute if entity @s[scores={Time=1}] run playsound medabots_server:block.action_floor.open block @a ~ ~ ~ 1
data modify entity @s[scores={Time=1}] ArmorItems[3].tag.CustomModelData set value 36
data modify entity @s[scores={Time=3}] ArmorItems[3].tag.CustomModelData set value 37
data modify entity @s[scores={Time=5}] ArmorItems[3].tag.CustomModelData set value 38
data modify entity @s[scores={Time=7}] ArmorItems[3].tag.CustomModelData set value 39
data modify entity @s[scores={Time=9}] ArmorItems[3].tag.CustomModelData set value 40
data modify entity @s[scores={Time=11}] ArmorItems[3].tag.CustomModelData set value 41
data modify entity @s[scores={Time=13}] ArmorItems[3].tag.CustomModelData set value 42
data modify entity @s[scores={Time=15}] ArmorItems[3].tag.CustomModelData set value 43

# Block movement
execute if entity @s[scores={Time=1}] run fill ~ ~ ~ ~ ~1 ~ minecraft:black_stained_glass

# Actions
execute if entity @s[scores={Time=50}] run function medabots_server:blocks/action_floor/spawn_50
execute if entity @s[scores={Time=100}] run function medabots_server:blocks/action_floor/spawn_100

data modify entity @s[scores={Time=101}] ArmorItems[3].tag.CustomModelData set value 42
data modify entity @s[scores={Time=103}] ArmorItems[3].tag.CustomModelData set value 41
data modify entity @s[scores={Time=105}] ArmorItems[3].tag.CustomModelData set value 40
data modify entity @s[scores={Time=107}] ArmorItems[3].tag.CustomModelData set value 39
data modify entity @s[scores={Time=109}] ArmorItems[3].tag.CustomModelData set value 38
data modify entity @s[scores={Time=111}] ArmorItems[3].tag.CustomModelData set value 37
data modify entity @s[scores={Time=113}] ArmorItems[3].tag.CustomModelData set value 36
data modify entity @s[scores={Time=115}] ArmorItems[3].tag.CustomModelData set value 35

execute if entity @s[scores={Time=120}] run function medabots_server:blocks/action_floor/spawn_120
