teleport @s -2041 43 -196 -180 0
scoreboard players reset @s Stage
scoreboard players set @s PrevMusicType 0
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players set @s Battle 0
function medabots_server:other/death
execute at @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=master_hand,tag=!dying] run playsound medabots_server:entity.master_hand.laugh1 hostile @s ~ ~ ~ 10
execute at @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=master_hand,tag=!dying] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.master_hand","color":"green"},{"translate":"medabots_server:message.master_hand.spawn.1"}]}
execute unless entity @a[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=!medabot] run function medabots_server:stage/clean_up/final_destination_1/master_hand
scoreboard players set @s KillStreak 0