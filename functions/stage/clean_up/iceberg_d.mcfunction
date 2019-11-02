execute as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=33}] run scoreboard players set @s Stage 33
function medabots_server:stage/clean_up/iceberg_d/first_go
function medabots_server:stage/clean_up/iceberg_d/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}