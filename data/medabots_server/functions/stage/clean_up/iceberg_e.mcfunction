execute as @e[x=-1997,y=41,z=-424,dx=88,dy=7,dz=91,type=!minecraft:player] unless entity @s[scores={Stage=57}] run scoreboard players set @s Stage 57
function medabots_server:stage/clean_up/iceberg_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}