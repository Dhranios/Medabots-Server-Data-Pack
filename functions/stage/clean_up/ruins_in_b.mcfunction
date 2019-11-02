execute as @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=17}] run scoreboard players set @s Stage 17
function medabots_server:stage/clean_up/ruins_in_b/first_go
function medabots_server:stage/clean_up/ruins_in_b/second_go
function medabots_server:stage/clean_up/ruins_in_b/rubberobo
function medabots_server:stage/clean_up/ruins_in_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}