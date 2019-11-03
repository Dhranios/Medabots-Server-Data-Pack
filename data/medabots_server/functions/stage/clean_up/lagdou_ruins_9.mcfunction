execute as @e[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=44}] run scoreboard players set @s Stage 44
function medabots_server:stage/clean_up/lagdou_ruins_9/empty
function medabots_server:stage/clean_up/lagdou_ruins_9/darkness
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}