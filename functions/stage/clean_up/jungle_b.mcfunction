execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=12}] run scoreboard players set @s Stage 12
function medabots_server:stage/clean_up/jungle_b/first_go
function medabots_server:stage/clean_up/jungle_b/second_go
function medabots_server:stage/clean_up/jungle_b/rubberobo
function medabots_server:stage/clean_up/jungle_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}