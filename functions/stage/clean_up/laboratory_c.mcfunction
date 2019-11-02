execute as @e[x=-1596,y=42,z=-620,dx=22,dy=7,dz=44,type=!minecraft:player] unless entity @s[scores={Stage=28}] run scoreboard players set @s Stage 28
function medabots_server:stage/clean_up/laboratory_c/first_go
function medabots_server:stage/clean_up/laboratory_c/second_go
function medabots_server:stage/clean_up/laboratory_c/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}