# Show particles
execute if entity @s[scores={Time=22}] run particle minecraft:smoke ~ ~1 ~ 1 0 1 1 10

# Spawn the attack
execute if entity @s[scores={Time=40}] run summon minecraft:armor_stand ^ ^0.1 ^1 {Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],CustomName:'{"translate":"medabots_server:move.destroy"}',Tags:["destroy"]}
execute if entity @s[scores={Time=40}] positioned ^ ^0.1 ^1 at @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] rotated as @s run teleport @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] ~ ~ ~ ~ ~

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Destroy=2,Time=40}] HeadUses 1

# Make the closest destroy move deal damage
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=40},tag=!ally_medabot,tag=!enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 3 true
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=40},tag=!ally_medabot,tag=!enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 3 true
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=40},tag=ally_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 3 true
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=40},tag=ally_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 3 true
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=40},tag=enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 3 true
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[scores={Time=40},tag=enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 3 true
execute if entity @s[scores={Time=40,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 5 true
execute if entity @s[scores={Time=40,ScoutTime=1..},tag=!ally_medabot,tag=!enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 5 true
execute if entity @s[scores={Time=40,ScoutTime=1..},tag=ally_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 5 true
execute if entity @s[scores={Time=40,ScoutTime=1..},tag=ally_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!ally_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 5 true
execute if entity @s[scores={Time=40,ScoutTime=1..},tag=enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 5 true
execute if entity @s[scores={Time=40,ScoutTime=1..},tag=enemy_medabot] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=..1.5,tag=hostile,tag=!enemy_medabot] unless entity @s[scores={Time=40,Destroy=1..3}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 5 true

# Finish move
scoreboard players reset @s[scores={Time=50..}] Destroy
scoreboard players set @s[scores={Time=50..}] Time 0

# Increase time by 1
scoreboard players add @s[scores={Destroy=1..}] Time 1

# Attacked my melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=!ally_team,tag=!enemy_team] run function medabots_server:medaparts/melee_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=ally_team] if entity @s[tag=!ally_team] run function medabots_server:medaparts/melee_trap_hit
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap,tag=enemy_team] if entity @s[tag=!enemy_team] run function medabots_server:medaparts/melee_trap_hit