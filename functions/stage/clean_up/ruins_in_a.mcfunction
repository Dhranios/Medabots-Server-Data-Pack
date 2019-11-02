execute as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
function medabots_server:stage/clean_up/ruins_in_a/first_go
function medabots_server:stage/clean_up/ruins_in_a/second_go
function medabots_server:stage/clean_up/ruins_in_a/rubberobo
function medabots_server:stage/clean_up/ruins_in_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}