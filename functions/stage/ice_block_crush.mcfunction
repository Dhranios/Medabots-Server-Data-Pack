tag @a[distance=..0.5,tag=hostile] add had_death
execute as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.ice_block","with":[{"selector":"@s"},{"translate":"medabots_server:entity.ice_block"}]}
tag @e[distance=..0.5,tag=hostile,tag=!ice_block,type=!minecraft:item,tag=!rubberobo] add dead
execute as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.ice_block","with":[{"selector":"@s"},{"translate":"medabots_server:entity.ice_block"}]}
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!ice_block,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=1}] positioned ~0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.ice_block","with":[{"selector":"@s"},{"translate":"medabots_server:entity.ice_block"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 run tag @e[distance=..0.7,tag=hostile,tag=!ice_block,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~0.2 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.ice_block","with":[{"selector":"@s"},{"translate":"medabots_server:entity.ice_block"}]}
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!ice_block,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=3}] positioned ~-0.2 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.ice_block","with":[{"selector":"@s"},{"translate":"medabots_server:entity.ice_block"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 run tag @e[distance=..0.7,tag=hostile,tag=!ice_block,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-0.2 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}