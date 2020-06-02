# Remove if pot is broken
execute at @s if entity @e[distance=..0.4,type=minecraft:shulker,tag=pot_hitbox,nbt={AbsorptionAmount:0.0f}] run tag @s add broken
execute as @e[distance=..0.4,tag=pot_hitbox] run data merge entity @s {Peek:1b}

# Drop contents if the pot gets broken
execute at @s[tag=broken] run function medabots_server:blocks/pot/broken

# Remove when cleaning up a stage
execute if entity @s[tag=broken] run tag @s add dead
execute if entity @s[tag=dead] at @s unless entity @e[distance=..0.7,tag=!dead,tag=pot] run data merge entity @e[distance=..0.4,type=minecraft:shulker,tag=pot_hitbox,limit=1] {AbsorptionAmount:0.0f,Health:0.0f,DeathTime:19s}
execute if entity @s[tag=dead] at @s unless entity @e[distance=..0.7,tag=!dead,tag=pot] run teleport @e[distance=..0.4,type=minecraft:shulker,tag=pot_hitbox] ~ 0 ~
execute if entity @s[tag=dead] at @s unless entity @e[distance=..0.7,tag=!dead,tag=pot] run tag @e[distance=..0.4,type=minecraft:armor_stand,tag=pot_model] add dead

# Refresh clients
data merge entity @s {Air:1}
data merge entity @s {Air:0}