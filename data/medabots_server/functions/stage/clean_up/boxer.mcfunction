execute as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=29}] run scoreboard players set @s Stage 29
function medabots_server:stage/clean_up/boxer/first_go
function medabots_server:stage/clean_up/boxer/second_go
function medabots_server:stage/clean_up/boxer/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}