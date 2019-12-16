execute as @e[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=62}] run scoreboard players set @s Stage 62
execute if entity @e[scores={Stage=62},tag=master_hand,type=minecraft:ghast] run tag @s add no_end
execute if entity @e[scores={Stage=62},tag=crazy_hand,type=minecraft:ghast] run tag @s add no_end
execute as @s[scores={State=1..},tag=!no_end] run function medabots_server:stage/clean_up/final_destination_2
advancement grant @s[scores={State=1..},tag=!no_end] only medabots_server:stages/wave_1/final_destination_2_master_hand
execute if entity @s[scores={State=1..},tag=!no_end] positioned -1985 43 -196 run function medabots_server:stage/clear
tag @s remove no_end

execute as @e[scores={Stage=62},tag=!dying] at @s run teleport @s[y=0,dy=10] -2041 52 -220

execute store result score #temp Time run bossbar get medabots_server:master_hand/2 value
execute if score #temp Time matches ..180 if entity @s[scores={State=1..},tag=!crazy_hand_spawned] positioned -1991 43 -221 rotated -90 0 run function medabots_server:spawn_entities/crazy_hand/2
execute if score #temp Time matches ..180 if entity @s[scores={State=1..},tag=!crazy_hand_spawned] run bossbar set medabots_server:crazy_hand/2 players @s
execute if score #temp Time matches ..180 if entity @s[scores={State=1..},tag=!crazy_hand_spawned] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute if score #temp Time matches ..180 if entity @s[scores={State=1..},tag=!crazy_hand_spawned] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute if score #temp Time matches ..180 if entity @s[scores={State=1..},tag=!crazy_hand_spawned] run tag @s add crazy_hand_spawned
scoreboard players reset #temp Time