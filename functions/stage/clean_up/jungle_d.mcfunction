execute as @e[x=-1665,y=42,z=-768,dx=61,dy=7,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=31}] run scoreboard players set @s Stage 31
function medabots_server:stage/clean_up/jungle_d/first_go
function medabots_server:stage/clean_up/jungle_d/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}