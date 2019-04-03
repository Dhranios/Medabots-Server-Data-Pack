tag @a[distance=..0.5,tag=hostile] add had_death
execute as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.press_wall","with":[{"selector":"@s"},{"translate":"medabots_server:block.press_wall"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @e[distance=..0.5,tag=hostile,tag=!press_wall,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}