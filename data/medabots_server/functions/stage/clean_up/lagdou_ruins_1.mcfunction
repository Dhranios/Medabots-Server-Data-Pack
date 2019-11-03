execute as @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=36}] run scoreboard players set @s Stage 36
function medabots_server:stage/clean_up/lagdou_ruins_1/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}