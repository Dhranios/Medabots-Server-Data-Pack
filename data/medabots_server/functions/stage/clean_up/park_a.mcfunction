execute as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=19}] run scoreboard players set @s Stage 19
function medabots_server:stage/clean_up/park_a/first_go
function medabots_server:stage/clean_up/park_a/second_go
function medabots_server:stage/clean_up/park_a/challenge
function medabots_server:stage/clean_up/park_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}