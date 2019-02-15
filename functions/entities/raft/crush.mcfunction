tag @a[distance=..0.5,tag=hostile] add had_death
execute as @a[distance=..0.5,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
tag @e[distance=..0.5,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @a[distance=..0.7,tag=hostile] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item,tag=!rubberobo] add dead
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @e[distance=..0.5,tag=hostile,tag=rubberobo] run data merge entity @s {AbsorptionAmount:0f}