execute as @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,type=!minecraft:player] unless entity @s[scores={Stage=61}] run scoreboard players set @s Stage 61
function medabots_server:stage/clean_up/final_destination_1/empty
function medabots_server:stage/clean_up/final_destination_1/master_hand
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}