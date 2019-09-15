execute as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
tag @e[distance=..0.7,tag=hostile] add had_death
tag @e[distance=..0.7,tag=hostile] add crushed
execute as @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~0.3 ~ ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=1}] positioned ~0.3 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~0.3 ~ ~ run tag @e[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=1}] positioned ~0.3 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.3 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.3 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.3 run tag @e[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.3 as @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-0.3 ~ ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=3}] positioned ~-0.3 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-0.3 ~ ~ run tag @e[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=3}] positioned ~-0.3 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.3 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.3 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.3 run tag @e[distance=..0.7,tag=hostile] add crushed
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.3 as @e[distance=..0.7,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}

tag @e[tag=crushed,tag=!dying] add dying