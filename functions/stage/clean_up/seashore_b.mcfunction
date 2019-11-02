execute as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=13}] run scoreboard players set @s Stage 13
function medabots_server:stage/clean_up/seashore_b/first_go
function medabots_server:stage/clean_up/seashore_b/second_go
function medabots_server:stage/clean_up/seashore_b/rubberobo
function medabots_server:stage/clean_up/seashore_b/special
function medabots_server:stage/clean_up/seashore_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}