execute as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,type=!minecraft:player] unless entity @s[scores={Stage=15}] run scoreboard players set @s Stage 15
function medabots_server:stage/clean_up/iceberg_b/first_go
function medabots_server:stage/clean_up/iceberg_b/second_go
function medabots_server:stage/clean_up/iceberg_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}