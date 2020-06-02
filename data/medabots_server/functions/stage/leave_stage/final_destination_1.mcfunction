teleport @s -2041 43 -196 -180 0
scoreboard players reset @s Stage
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s PrevMusicType 0
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
execute unless entity @s[scores={DeathTime=101}] run scoreboard players set @s MusicType 1
function medabots_server:other/death
execute if entity @s[tag=!stage_builder] run function medabots_server:gamemodes/default/reset
execute at @e[scores={Stage=61},tag=master_hand,tag=!dying,limit=1] run playsound medabots_server:entity.master_hand.laugh1 hostile @s ~ ~ ~ 10
execute at @e[scores={Stage=61},tag=master_hand,tag=!dying,limit=1] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.master_hand","color":"green"},{"translate":"medabots_server:message.master_hand.spawn.1"}]}
tag @s add leave_stage
function medabots_server:stage/try/final_destination_1/enter
tag @s remove leave_stage
scoreboard players set @s KillStreak 0