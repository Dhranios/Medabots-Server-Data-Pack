execute as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,type=!minecraft:player] unless entity @s[scores={Stage=26}] run scoreboard players set @s Stage 26
function medabots_server:stage/clean_up/iceberg_c/first_go
function medabots_server:stage/clean_up/iceberg_c/second_go
function medabots_server:stage/clean_up/iceberg_c/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}