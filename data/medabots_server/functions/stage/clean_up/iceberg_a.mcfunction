execute as @e[x=-1764,y=41,z=-247,dx=88,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=6}] run scoreboard players set @s Stage 6
function medabots_server:stage/clean_up/iceberg_a/first_go
function medabots_server:stage/clean_up/iceberg_a/second_go
function medabots_server:stage/clean_up/iceberg_a/rubberobo
function medabots_server:stage/clean_up/iceberg_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}