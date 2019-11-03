execute as @e[x=-1329,y=39,z=-58,dx=68,dy=11,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=37}] run scoreboard players set @s Stage 37
function medabots_server:stage/clean_up/lagdou_ruins_2/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}