execute as @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=20}] run scoreboard players set @s Stage 20
function medabots_server:stage/clean_up/park_b/first_go
function medabots_server:stage/clean_up/park_b/second_go
function medabots_server:stage/clean_up/park_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}