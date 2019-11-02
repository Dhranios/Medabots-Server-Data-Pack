execute as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,type=!minecraft:player] unless entity @s[scores={Stage=9}] run scoreboard players set @s Stage 9
function medabots_server:stage/clean_up/laboratory_a/first_go
function medabots_server:stage/clean_up/laboratory_a/second_go
function medabots_server:stage/clean_up/laboratory_a/rubberobo
function medabots_server:stage/clean_up/laboratory_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}