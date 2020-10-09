teleport @s 25 43 34 -180 0
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @s[scores={DeathTime=101}] run scoreboard players set @s MusicType 1
tag @s remove crazy_hand_spawned
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute at @e[scores={Stage=62},tag=master_hand,tag=!dying] run playsound medabots_server:entity.master_hand.laugh2 hostile @a[distance=0.1..] ~ ~ ~ 10
execute at @e[scores={Stage=62},tag=master_hand,tag=!dying] run tellraw @a[distance=0.1..] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.master_hand","color":"green"},{"translate":"medabots_server:message.master_hand.spawn.2"}]}
execute at @e[scores={Stage=62},tag=crazy_hand,tag=!dying] run playsound medabots_server:entity.crazy_hand.laugh2 hostile @a[distance=0.1..] ~ ~ ~ 10
execute at @e[scores={Stage=62},tag=crazy_hand,tag=!dying] run tellraw @a[distance=0.1..] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.crazy_hand","color":"green"},{"translate":"medabots_server:message.crazy_hand.spawn.2"}]}
tag @s add leave_stage
function medabots_server:stage/try/final_destination_2/enter
tag @s remove leave_stage
scoreboard players set @s KillStreak 0