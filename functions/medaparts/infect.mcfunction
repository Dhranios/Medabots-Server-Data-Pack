# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:underwater ~ ~1 ~ 1 0 1 1 10

# Give the effect
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=22,Infect=1..3}] run scoreboard players set @s InfectTime 100
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=22,Infect=1..3}] run scoreboard players set @s InfectTime 100
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=20},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=22,Infect=1..3}] run scoreboard players set @s InfectTime 100
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile] unless entity @s[scores={Time=22,Infect=1..3}] run scoreboard players set @s InfectTime 150
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=ally_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=22,Infect=1..3}] run scoreboard players set @s InfectTime 150
execute if entity @s[scores={Time=20,ScoutTime=1..},tag=enemy_medabot] positioned ^ ^ ^2 as @e[distance=..2,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=22,Infect=1..3}] run scoreboard players set @s InfectTime 150

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Infect=2,Time=22}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=30..}] Infect
scoreboard players set @s[scores={Time=30..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={Infect=1..}] Time 1

# Attacked by melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:medaparts/melee_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:medaparts/melee_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:medaparts/melee_trap_hit