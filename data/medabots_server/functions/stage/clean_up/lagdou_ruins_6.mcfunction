execute as @e[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=41}] run scoreboard players set @s Stage 41
function medabots_server:stage/clean_up/lagdou_ruins_6/empty
function medabots_server:stage/clean_up/lagdou_ruins_6/darkness
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}