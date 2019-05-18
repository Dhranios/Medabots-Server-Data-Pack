scoreboard players add @s DeathTime 1
scoreboard players set @s[scores={Time=1..}] Time 950
execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[tag=medabot_model,tag=head] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
gamemode spectator @s[scores={DeathTime=1}]
execute if entity @s[scores={DeathTime=1}] run scoreboard players set @s Damage 0
execute if entity @s[scores={DeathTime=1}] run function medabots_server:medaparts/remove_effects
execute if entity @s[scores={DeathTime=1},type=minecraft:player] run function medabots_server:other/death_message
execute if entity @s[scores={DeathTime=1},type=minecraft:player] run function medabots_server:other/lose_medallars
execute if entity @s[scores={DeathTime=1},type=minecraft:player,tag=!practice_battle] if entity @a[scores={Killer=1..},tag=!practice_battle] run function medabots_server:medaparts/drop
execute if entity @s[scores={DeathTime=1},type=minecraft:player,tag=!practice_battle] if entity @e[tag=enemy_medabot,nbt=!{DeathLootTable:"medabots_server:entities/battle_enemies/practice_round"}] run function medabots_server:medaparts/drop
execute if entity @s[scores={DeathTime=1},type=!minecraft:player] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run tag @e[distance=..1,type=minecraft:item] add medabot_loot
execute if entity @s[scores={DeathTime=1}] rotated ~ 0 run teleport @s ^ ^2 ^-1.5 facing entity @e[tag=this_medabot,limit=1]
execute if entity @s[scores={DeathTime=2..99}] run teleport @s ^0.105 ^ ^ facing entity @e[tag=this_medabot,limit=1]
scoreboard players set @s[y=-80,dy=79,scores={DeathTime=2}] DeathTime 99
teleport @s[y=-80,dy=79,scores={DeathTime=99}] ~ 51 ~
scoreboard players set @s[scores={DeathTime=100}] LeaveStage 1
execute if entity @s[scores={DeathTime=100}] run function medabots_server:other/death
gamemode adventure @s[scores={DeathTime=101}]
tag @s[scores={DeathTime=101}] remove drowned
tag @s[scores={DeathTime=101}] remove crushed
tag @s[scores={DeathTime=101}] remove dying
tag @s[scores={DeathTime=101}] remove had_death
tag @s[scores={DeathTime=101}] remove retry
tag @s[scores={DeathTime=101}] remove enemy
tag @s[scores={DeathTime=101}] remove story_battle
tellraw @s[scores={DeathTime=101}] {"translate":"medabots_server:message.defeat.1","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:message.defeat.2"}]}
tag @s[scores={DeathTime=101},type=!minecraft:player] add dead
scoreboard players reset @s[scores={DeathTime=101}] DeathTime
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot] remove this_medabot