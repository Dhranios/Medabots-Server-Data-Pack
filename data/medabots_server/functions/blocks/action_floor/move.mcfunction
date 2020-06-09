execute if entity @s[tag=!no_ticking] run function medabots_server:blocks/action_floor/move_ticking

scoreboard players add @s Dialog 1
tag @s[scores={Dialog=50}] add no_ticking
execute if entity @s[scores={Dialog=51},tag=cannon] positioned ~ ~0.1 ~ align y run teleport @s ~ ~ ~
tag @s[scores={Dialog=70}] remove no_ticking
tag @s[scores={Dialog=70}] remove action_floor_moving
data merge entity @s[scores={Dialog=70}] {Invulnerable:0b}
scoreboard players reset @s[scores={Dialog=70}] Dialog

# Model
execute if entity @s[tag=guard] run function medabots_server:animations/guard
execute if entity @s[tag=cannon] run function medabots_server:animations/cannon