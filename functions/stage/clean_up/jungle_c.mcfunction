execute as @e[x=-1570,y=42,z=-545,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=24}] run scoreboard players set @s Stage 24
function medabots_server:stage/clean_up/jungle_c/first_go
function medabots_server:stage/clean_up/jungle_c/second_go
function medabots_server:stage/clean_up/jungle_c/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}