scoreboard players add @s DeathTime 1
scoreboard players set @s[scores={Time=1..}] Time 950
execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[tag=medabot_model,tag=chest] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
gamemode spectator @s[scores={DeathTime=1}]
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s Time 950
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s TransformLTime 2
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s TransformRTime 2
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s TransformHTime 2
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s Damage 0
replaceitem entity @s[scores={DeathTime=1},type=!minecraft:player] weapon.mainhand minecraft:air
execute if entity @s[scores={DeathTime=1}] run function medabots_server:effects/clear
execute if entity @s[scores={DeathTime=1},type=minecraft:player] run function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder_message
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run summon minecraft:experience_orb ~ 3 ~ {Value:1s}
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run summon minecraft:experience_orb ~ 3 ~ {Value:1s}
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run summon minecraft:experience_orb ~ 3 ~ {Value:1s}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute store result score #temp Stage run scoreboard players get @s[scores={DeathTime=1}] Stage
tag @s[scores={DeathTime=1}] add me
execute if entity @s[scores={DeathTime=1}] run scoreboard players set #temp Drop -1
execute if entity @s[scores={DeathTime=1},tag=!practice_battle] as @e[tag=!practice_battle,tag=!me] if score @s Stage = #temp Stage run scoreboard players set #temp Drop 1
execute if entity @s[scores={DeathTime=1},tag=!practice_battle] as @e[tag=practice_battle,tag=!me] if score @s Stage = #temp Stage run scoreboard players set #temp Drop -1
execute if entity @s[scores={DeathTime=1}] unless score #temp Drop matches -1 run function medabots_server:items/drop_medapart
execute if entity @s[scores={DeathTime=1}] run scoreboard players reset #temp Stage
execute if entity @s[scores={DeathTime=1}] run scoreboard players reset #temp Drop
tag @s[scores={DeathTime=1}] remove me
execute if entity @s[y=-80,dy=79,scores={DeathTime=1},type=minecraft:player] positioned ~ 3 ~ run function medabots_server:items/lose_medallars
execute if entity @s[y=-80,dy=79,scores={DeathTime=1},type=!minecraft:player] run loot spawn ~ 3 ~ kill @s
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] positioned ~ 3 ~ run tag @e[distance=..1,type=minecraft:item] add medabot_loot
execute if entity @s[y=-80,dy=79,scores={DeathTime=1},tag=enemy_medabot] positioned ~ 3 ~ run tag @e[distance=..1,type=minecraft:item] add enemy_loot
execute if entity @s[y=-80,dy=79,scores={DeathTime=1},tag=ally_medabot] positioned ~ 3 ~ run tag @e[distance=..1,type=minecraft:item] add ally_loot
execute if entity @s[y=2,dy=255,scores={DeathTime=1},type=minecraft:player] run function medabots_server:items/lose_medallars
execute if entity @s[y=2,dy=255,scores={DeathTime=1},type=!minecraft:player] run loot spawn ~ ~ ~ kill @s
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run tag @e[distance=..1,type=minecraft:item] add medabot_loot
execute if entity @s[y=2,dy=255,scores={DeathTime=1},tag=enemy_medabot] run tag @e[distance=..1,type=minecraft:item] add enemy_loot
execute if entity @s[y=2,dy=255,scores={DeathTime=1},tag=ally_medabot] run tag @e[distance=..1,type=minecraft:item] add ally_loot
scoreboard players set @s[y=-80,dy=79,scores={DeathTime=1}] DeathTime 99
execute if entity @s[scores={DeathTime=1..99}] positioned as @e[tag=this_medabot,limit=1] rotated as @s rotated ~ 0 run teleport @s ^0.105 ^2 ^-1.5 facing entity @e[tag=this_medabot,limit=1]
scoreboard players set @s[scores={DeathTime=100}] Battle 0
scoreboard players set @s[scores={DeathTime=100}] LeaveStage 1
execute if entity @s[scores={DeathTime=100}] run function medabots_server:other/death
tag @s[tag=stage_builder] remove stage_builder
tag @s[scores={DeathTime=100},type=!minecraft:player] add dead
execute if entity @s[scores={DeathTime=100}] at @e[tag=this_medabot] positioned ~ ~0.7 ~ run particle minecraft:cloud ~ ~ ~ 1 1 1 0 30
execute if entity @s[scores={DeathTime=100}] run kill @e[tag=this_medabot]
gamemode adventure @s[scores={DeathTime=101}]
tag @s[scores={DeathTime=101}] remove drowned
tag @s[scores={DeathTime=101}] remove crushed
tag @s[scores={DeathTime=101}] remove dying
tag @s[scores={DeathTime=101}] remove had_death
tag @s[scores={DeathTime=101}] remove retry
tag @s[scores={DeathTime=101}] remove enemy_medabot
tag @s[scores={DeathTime=101}] remove story_battle
scoreboard players reset @s[scores={DeathTime=101}] DeathTime
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot