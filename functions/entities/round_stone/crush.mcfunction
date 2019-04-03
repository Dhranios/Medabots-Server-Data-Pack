tag @a[distance=..0.5,tag=hostile] add had_death
execute as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute as @e[distance=..0.5,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @e[distance=..0.5,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.round_stone","with":[{"selector":"@s"},{"translate":"medabots_server:entity.round_stone"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @e[distance=..0.5,tag=hostile,tag=!round_stone,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}