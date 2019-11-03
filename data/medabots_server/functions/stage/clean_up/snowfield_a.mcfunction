execute as @e[x=-1668,y=43,z=-247,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=5}] run scoreboard players set @s Stage 5
function medabots_server:stage/clean_up/snowfield_a/first_go
function medabots_server:stage/clean_up/snowfield_a/second_go
function medabots_server:stage/clean_up/snowfield_a/rubberobo
function medabots_server:stage/clean_up/snowfield_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}