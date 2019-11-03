execute as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=11}] run scoreboard players set @s Stage 11
function medabots_server:stage/clean_up/rock_b/first_go
function medabots_server:stage/clean_up/rock_b/second_go
function medabots_server:stage/clean_up/rock_b/rubberobo
function medabots_server:stage/clean_up/rock_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}