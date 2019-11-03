execute as @a[distance=..0.5,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
tag @a[distance=..0.5,tag=hostile] add had_death
tag @a[distance=..0.5,tag=hostile] add crushed
execute as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @a[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @a[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}

tag @e[tag=crushed,tag=!dying] add dying