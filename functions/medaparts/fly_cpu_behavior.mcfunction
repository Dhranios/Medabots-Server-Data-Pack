# Fly up and toggle hovering
tag @s[tag=legs_selected,tag=static_fly] add remove_static_fly
tag @s[scores={FlyTime=151..},tag=legs_selected] add static_fly
tag @s[tag=legs_selected,tag=remove_static_fly] remove static_fly
tag @s[tag=legs_selected,tag=remove_static_fly] remove legs_selected
tag @s remove remove_static_fly
tag @s[scores={FlyTime=151..},tag=legs_selected] remove legs_selected

# Fly up if falling
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~1 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~-1 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~-2 ~ ~ minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~1 minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~2 minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~-1 minecraft:black_wool run tag @s add select_legs_now
execute if block ~ ~ ~-2 minecraft:black_wool run tag @s add select_legs_now

tag @s[tag=select_legs_now] add legs_selected
tag @s[tag=select_legs_now] remove left_arm_selected
tag @s[tag=select_legs_now] remove right_arm_selected
tag @s[tag=select_legs_now] remove head_selected
tag @s[tag=select_legs_now] remove medal_selected
replaceitem entity @s[tag=select_legs_now] weapon.mainhand minecraft:air
scoreboard players operation @s[tag=select_legs_now] Dialog = @s Time
scoreboard players operation @s[tag=select_legs_now] Dialog *= #-1 Constants
tag @s[tag=select_legs_now] remove select_legs_now