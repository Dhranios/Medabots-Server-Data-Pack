execute as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=10}] run scoreboard players set @s Stage 10
function medabots_server:stage/clean_up/grassland_b/first_go
function medabots_server:stage/clean_up/grassland_b/second_go
function medabots_server:stage/clean_up/grassland_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}