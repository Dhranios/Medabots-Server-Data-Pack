execute as @e[x=-1570,y=43,z=-247,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
function medabots_server:stage/clean_up/seashore_a/first_go
function medabots_server:stage/clean_up/seashore_a/second_go
function medabots_server:stage/clean_up/seashore_a/rubberobo
function medabots_server:stage/clean_up/seashore_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}