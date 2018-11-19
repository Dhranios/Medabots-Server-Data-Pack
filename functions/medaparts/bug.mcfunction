# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Bug=1}] Time 19
scoreboard players set @s[scores={Time=3,Bug=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:enchant ~ ~1 ~ 1 0 1 1 30

# Give the effects
execute if entity @s[scores={Time=32}] run scoreboard players set @e[tag=hostile,distance=0.1..4] BugTime 600
execute if entity @s[scores={Time=32}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute if entity @s[scores={Time=32}] positioned ^ ^ ^2 as @e[distance=..2] unless entity @s[scores={Time=32,Bug=1..3}] run effect give @s[tag=undead] minecraft:instant_health 1 0 true

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Bug=2,Time=34}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=37..}] Bug
scoreboard players set @s[scores={Time=37..}] Time 1

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run tag @s[scores={Death=1..}] add had_death
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]