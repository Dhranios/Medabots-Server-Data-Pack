execute as @e[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=46}] run scoreboard players set @s Stage 46
function medabots_server:stage/clean_up/ricco_harbor/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}