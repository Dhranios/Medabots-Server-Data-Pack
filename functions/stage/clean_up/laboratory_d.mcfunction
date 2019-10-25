execute as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=35}] run scoreboard players set @s Stage 35
function medabots_server:stage/clean_up/laboratory_d/first_go
function medabots_server:stage/clean_up/laboratory_d/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}