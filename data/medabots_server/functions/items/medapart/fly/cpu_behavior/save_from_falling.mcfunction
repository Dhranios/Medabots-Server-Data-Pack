# Fly up if falling
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~-1 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~-2 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~1 minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~2 minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~-1 minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~-2 minecraft:black_wool run tag @s add select_legs_now
execute unless block ~ ~2 ~ minecraft:air run tag @s remove select_legs_now
execute unless block ~ ~3 ~ minecraft:air run tag @s remove select_legs_now

tag @s[tag=select_legs_now] add legs_activated
tag @s[tag=select_legs_now] remove left_arm_activated
tag @s[tag=select_legs_now] remove right_arm_activated
tag @s[tag=select_legs_now] remove head_activated
tag @s[tag=select_legs_now] remove medal_activated
item entity @s[tag=select_legs_now] weapon.mainhand replace minecraft:air
scoreboard players operation @s[tag=select_legs_now] Dialog = @s Time
scoreboard players operation @s[tag=select_legs_now] Dialog *= #-1 Constants
tag @s[tag=select_legs_now] remove select_legs_now