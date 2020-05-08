scoreboard players add @s DeathTime 1
scoreboard players operation #temp MedabotNr = @s MedabotNr
team join AllyMedabot @s[tag=ally_medabot,scores={DeathTime=1}]
team join EnemyMedabot @s[tag=enemy_medabot,scores={DeathTime=1}]
team join NeutralMedabot @s[tag=!ally_medabot,tag=!enemy_medabot,scores={DeathTime=1}]
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s Time 0
execute if entity @s[scores={DeathTime=1,TransformLTime=1..}] run scoreboard players set @s TransformLTime 2
execute if entity @s[scores={DeathTime=1,TransformRTime=1..}] run scoreboard players set @s TransformRTime 2
execute if entity @s[scores={DeathTime=1,TransformHTime=1..}] run scoreboard players set @s TransformHTime 2
execute if entity @s[scores={DeathTime=1}] run function medabots_server:effects/transformed
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
execute if entity @s[scores={DeathTime=1}] run tag @e[tag=this_medabot] add not_yet
tag @s[scores={DeathTime=1}] add this_medabot
execute at @s[scores={DeathTime=1}] as @e[tag=this_medabot] unless entity @s[scores={DeathTime=1}] run function medabots_server:animations/medabot/main
execute at @s[scores={DeathTime=1}] as @e[tag=this_medabot] unless entity @s[scores={DeathTime=1}] run function medabots_server:animations/medabot/main
tag @s[scores={DeathTime=1}] remove this_medabot
execute if entity @s[scores={DeathTime=1}] run tag @e[tag=this_medabot] remove not_yet
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run summon minecraft:experience_orb ~ 3 ~ {Value:1s}
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run summon minecraft:experience_orb ~ 3 ~ {Value:1s}
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run summon minecraft:experience_orb ~ 3 ~ {Value:1s}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
experience add @s[scores={DeathTime=1}] -5 points
execute store result score #temp Stage run scoreboard players get @s[scores={DeathTime=1}] Stage
tag @s[scores={DeathTime=1}] add me
execute if entity @s[scores={DeathTime=1}] run scoreboard players set #temp Drop -1
execute if entity @s[scores={DeathTime=1},tag=!practice_battle,tag=!practice_robattle] as @e[tag=medabot,tag=!practice_battle,tag=!me,tag=!dying] if score @s Stage = #temp Stage run scoreboard players set #temp Drop 1
execute if entity @s[scores={DeathTime=1},tag=!practice_battle,tag=!practice_robattle] as @e[tag=medabot,tag=practice_battle,tag=!me,tag=!dying] if score @s Stage = #temp Stage run scoreboard players set #temp Drop -1
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] unless score #temp Drop matches -1 positioned ~ 3 ~ run function medabots_server:items/drop_medapart
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] unless score #temp Drop matches -1 run function medabots_server:items/drop_medapart
execute if entity @s[scores={DeathTime=1}] run scoreboard players reset #temp Stage
execute if entity @s[scores={DeathTime=1}] run scoreboard players reset #temp Drop
tag @s[scores={DeathTime=1}] remove me
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] positioned ~ 3 ~ run function medabots_server:items/lose_medallars
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] run loot spawn ~ 3 ~ loot medabots_server:entities/medabot
execute if entity @s[y=-80,dy=79,scores={DeathTime=1}] positioned ~ 3 ~ as @e[distance=..1] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run function medabots_server:items/lose_medallars
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] run loot spawn ~ ~ ~ loot medabots_server:entities/medabot
execute if entity @s[y=2,dy=255,scores={DeathTime=1}] as @e[distance=..1] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
gamemode spectator @s[scores={DeathTime=1}]
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s Time 950
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s Damage 0
replaceitem entity @s[scores={DeathTime=1},type=!minecraft:player] weapon.mainhand minecraft:air
execute if entity @s[scores={DeathTime=1}] run function medabots_server:effects/clear
execute if entity @s[scores={DeathTime=1},type=minecraft:player] run function medabots_server:other/death
execute if entity @s[scores={DeathTime=1}] run function medabots_server:other/death_message
scoreboard players set @s[y=-80,dy=79,scores={DeathTime=4}] DeathTime 99
execute if entity @s[scores={DeathTime=1..99},type=minecraft:player] positioned as @e[tag=this_medabot,tag=chest,limit=1] rotated as @s rotated ~ 0 run teleport @s ^0.105 ^2 ^-1.5 facing entity @e[tag=this_medabot,tag=chest,limit=1]
teleport @s[scores={DeathTime=4..},type=!minecraft:player] ~ -50 ~
execute if entity @s[scores={DeathTime=100}] run function medabots_server:other/death
tag @s[scores={DeathTime=100},type=!minecraft:player] add dead
execute if entity @s[scores={DeathTime=100}] at @e[tag=this_medabot,tag=chest,limit=1] positioned ~ ~0.7 ~ run particle minecraft:cloud ~ ~ ~ 1 1 1 0 30
execute if entity @s[scores={DeathTime=100}] run kill @e[tag=this_medabot]
gamemode adventure @s[scores={DeathTime=101}]
tag @s[scores={DeathTime=101}] remove drowned
tag @s[scores={DeathTime=101}] remove crushed
tag @s[scores={DeathTime=101}] remove dying
tag @s[scores={DeathTime=101}] remove had_death
tag @s[scores={DeathTime=101}] remove retry
tag @s[scores={DeathTime=101}] remove story_battle
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={DeathTime=101}] MusicType 59
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={DeathTime=101}] OldMusicType 1
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={DeathTime=101,Stage=23..29}] OldMusicType 22
execute if entity @s[scores={DeathTime=101},type=minecraft:player] run function medabots_server:stage/exit/enforced
scoreboard players reset @s[scores={DeathTime=101}] DeathTime
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot