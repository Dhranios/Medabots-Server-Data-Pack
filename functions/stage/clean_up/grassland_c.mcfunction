execute as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=23}] run scoreboard players set @s Stage 23
function medabots_server:stage/clean_up/grassland_c/first_go
function medabots_server:stage/clean_up/grassland_c/second_go
function medabots_server:stage/clean_up/grassland_c/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}