execute as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=18}] run scoreboard players set @s Stage 18
function medabots_server:stage/clean_up/laboratory_b/first_go
function medabots_server:stage/clean_up/laboratory_b/second_go
function medabots_server:stage/clean_up/laboratory_b/rubberobo
function medabots_server:stage/clean_up/laboratory_b/special
function medabots_server:stage/clean_up/laboratory_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}