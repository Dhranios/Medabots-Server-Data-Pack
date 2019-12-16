# Send death message depending on the death
execute if entity @s[tag=!had_death,tag=murder_mystery] as @a[scores={Killer=1},limit=1] run tag @a[scores={DeathTime=1},limit=1,sort=nearest] add death_message
execute if entity @s[tag=death_message,tag=!had_death] run tellraw @a {"translate":"medabots_server:death.murder_mystery","with":[{"selector":"@s"}]}
execute if entity @s[tag=death_message,tag=!murderer] as @a[scores={Killer=1},limit=1,tag=!murderer] run tellraw @a {"translate":"medabots_server:death.murder_mystery.killed_inocent","with":[{"selector":"@s"}]}
execute if entity @s[tag=death_message,tag=!murderer] as @a[scores={Killer=1},limit=1,tag=!murderer] run tag @s add had_death
execute if entity @s[tag=death_message,tag=!murderer] as @a[scores={Killer=1},limit=1,tag=!murderer] run kill @s
tag @s[tag=death_message] add had_death

execute if entity @s[tag=!had_death] if block ~ ~ ~ minecraft:lava run tellraw @a {"translate":"medabots_server:death.lava","with":[{"selector":"@s"}]}
execute if block ~ ~ ~ minecraft:lava run tag @s add had_death
execute if entity @s[tag=!had_death,scores={OverheatingMedal=16..}] run tellraw @a {"translate":"medabots_server:death.overheating","with":[{"selector":"@s"}]}
tag @s[tag=!had_death,scores={OverheatingMedal=16..}] add had_death
execute if entity @s[tag=!had_death] as @e[scores={Killer=1},limit=1,sort=nearest] run function medabots_server:other/death_message/target

# no message? try again
execute if entity @s[tag=!had_death,tag=!retry] run function medabots_server:other/death_message/retry