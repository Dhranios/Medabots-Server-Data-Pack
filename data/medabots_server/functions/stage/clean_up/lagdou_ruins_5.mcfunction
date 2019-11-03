execute as @e[x=-1376,y=39,z=-276,dx=58,dy=10,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=40}] run scoreboard players set @s Stage 40
function medabots_server:stage/clean_up/lagdou_ruins_5/empty
function medabots_server:stage/clean_up/lagdou_ruins_5/darkness
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}