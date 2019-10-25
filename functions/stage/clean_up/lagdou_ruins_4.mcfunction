execute as @e[x=-1376,y=39,z=-205,dx=62,dy=10,dz=86,type=!minecraft:player] unless entity @s[scores={Stage=39}] run scoreboard players set @s Stage 39
function medabots_server:stage/clean_up/lagdou_ruins_4/empty
function medabots_server:stage/clean_up/lagdou_ruins_4/darkness
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}