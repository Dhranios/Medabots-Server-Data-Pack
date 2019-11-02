execute as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=32}] run scoreboard players set @s Stage 32
function medabots_server:stage/clean_up/snowfield_d/first_go
function medabots_server:stage/clean_up/snowfield_d/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}