execute as @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=30}] run scoreboard players set @s Stage 30
function medabots_server:stage/clean_up/grassland_d/first_go
function medabots_server:stage/clean_up/grassland_d/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}