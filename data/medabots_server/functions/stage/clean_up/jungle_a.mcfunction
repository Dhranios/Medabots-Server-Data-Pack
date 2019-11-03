execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=3}] run scoreboard players set @s Stage 3
function medabots_server:stage/clean_up/jungle_a/first_go
function medabots_server:stage/clean_up/jungle_a/second_go
function medabots_server:stage/clean_up/jungle_a/rubberobo
function medabots_server:stage/clean_up/jungle_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}