# Toggle
tellraw @s[scores={Action=1},tag=!action_mode] {"translate":"medabots_server:move.legs.toggle.on","color":"green"}
tellraw @s[scores={Action=1},tag=action_mode] {"translate":"medabots_server:move.legs.toggle.off","color":"green"}
tag @s[scores={Action=1},tag=!action_mode] add toggle_action_mode
tag @s[tag=toggle_action_mode] add action_mode
scoreboard players reset @s[tag=toggle_action_mode] Action
tag @s[tag=toggle_action_mode] remove toggle_action_mode
tag @s[scores={Action=1},tag=action_mode] remove action_mode
scoreboard players reset @s[scores={Action=1},tag=!action_mode] Action

# Got to go fast
execute if block ~ ~ ~ minecraft:stone_brick_slab[type=bottom] run title @s[tag=action_mode] actionbar {"translate":"medabots_server:move.legs","color":"blue"}
execute if block ~ ~ ~ minecraft:stone_brick_slab[type=bottom] run effect give @s[tag=action_mode] minecraft:speed 1 10 true
execute if block ~ ~-1 ~ minecraft:stone_brick_slab[type=bottom] run title @s[tag=action_mode] actionbar {"translate":"medabots_server:move.legs","color":"blue"}
execute if block ~ ~-1 ~ minecraft:stone_brick_slab[type=bottom] run effect give @s[tag=action_mode] minecraft:speed 1 10 true

# no off-road speeding
execute if block ~ ~-1 ~ minecraft:polished_andesite run effect clear @s[tag=action_mode] minecraft:speed
execute if block ~ ~-2 ~ minecraft:polished_andesite run effect clear @s[tag=action_mode] minecraft:speed