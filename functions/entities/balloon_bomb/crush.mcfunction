execute as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
tag @a[distance=..0.7,tag=hostile] add had_death
tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute as @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=1}] positioned ~1 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=2}] positioned ~ ~ ~1 as @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=3}] positioned ~-1 ~ ~ as @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @a[distance=..0.7,tag=hostile,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.balloon_bomb","with":[{"selector":"@s"},{"translate":"medabots_server:entity.balloon_bomb"}]}
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @a[distance=..0.7,tag=hostile] add had_death
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 run tag @e[distance=..0.7,tag=hostile,type=!minecraft:item] add crushed
execute if entity @s[scores={Moving=4}] positioned ~ ~ ~-1 as @e[distance=..0.7,tag=hostile,tag=!balloon_bomb,type=!minecraft:item] run data merge entity @s {AbsorptionAmount:0f}

tag @e[tag=crushed,tag=!dying] add dying