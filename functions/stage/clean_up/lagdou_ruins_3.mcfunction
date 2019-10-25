execute as @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,type=!minecraft:player] unless entity @s[scores={Stage=38}] run scoreboard players set @s Stage 38
function medabots_server:stage/clean_up/lagdou_ruins_3/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}