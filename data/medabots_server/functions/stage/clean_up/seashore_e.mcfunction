execute as @e[x=-2003,y=42,z=-329,dx=93,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=55}] run scoreboard players set @s Stage 55
function medabots_server:stage/clean_up/seashore_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}