# Crush feet
execute positioned ~ ~-1 ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute positioned ~ ~-1 ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute positioned ~ ~-1 ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute positioned ~ ~-1 ~ as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~1 ~-1 ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=1}] positioned ~1 ~-1 ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~1 ~-1 ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=1}] positioned ~1 ~-1 ~ as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~1 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~1 run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=2}] positioned ~ ~-1 ~1 as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-1 ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-1 ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-1 ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-1 ~ as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-1 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-1 run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=4}] positioned ~ ~-1 ~-1 as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}

# Crush head
execute positioned ~ ~-2 ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute positioned ~ ~-2 ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute positioned ~ ~-2 ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute positioned ~ ~-2 ~ as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~1 ~-2 ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=1}] positioned ~1 ~-2 ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~1 ~-2 ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=1}] positioned ~1 ~-2 ~ as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~-2 ~1 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~-2 ~1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~-2 ~1 run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=2}] positioned ~ ~-2 ~1 as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-2 ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-2 ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-2 ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=3}] positioned ~-1 ~-2 ~ as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~-2 ~-1 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.raft","with":[{"selector":"@s"},{"translate":"medabots_server:entity.raft"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~-2 ~-1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~-2 ~-1 run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=4}] positioned ~ ~-2 ~-1 as @e[distance=..0.7,tag=hostile,tag=!raft,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}

tag @e[tag=crushed,tag=!dying] add dying