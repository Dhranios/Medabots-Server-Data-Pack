execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=1}] run scoreboard players set @s Stage 1
function medabots_server:stage/clean_up/grassland_a/first_go
function medabots_server:stage/clean_up/grassland_a/second_go
function medabots_server:stage/clean_up/grassland_a/rubberobo
function medabots_server:stage/clean_up/grassland_a/special
function medabots_server:stage/clean_up/grassland_a/object_test
function medabots_server:stage/clean_up/grassland_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}