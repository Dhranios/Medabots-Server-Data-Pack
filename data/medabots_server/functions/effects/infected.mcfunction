# Count down timer
scoreboard players remove @s InfectTime 1

# Count up mover
scoreboard players add @s[scores={InfectTime=1..}] InfectTimer 1

# Continues Damage
effect give @s[scores={InfectTimer=20}] minecraft:instant_damage 1 0
scoreboard players set @s[scores={InfectTimer=20}] InfectTimer 0

# Remove timers
scoreboard players reset @s[scores={InfectTime=0}] InfectTimer
scoreboard players reset @s[scores={InfectTime=0}] InfectTime