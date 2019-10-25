execute as @e[x=-1319,y=35,z=-2,dx=59,dy=13,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=43}] run scoreboard players set @s Stage 43
function medabots_server:stage/clean_up/lagdou_ruins_8/empty
function medabots_server:stage/clean_up/lagdou_ruins_8/darkness
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}