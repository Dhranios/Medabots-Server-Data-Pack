execute as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=25}] run scoreboard players set @s Stage 25
function medabots_server:stage/clean_up/seashore_c/first_go
function medabots_server:stage/clean_up/seashore_c/second_go
function medabots_server:stage/clean_up/seashore_c/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}