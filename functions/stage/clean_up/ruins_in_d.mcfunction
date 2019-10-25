execute as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=34}] run scoreboard players set @s Stage 34
function medabots_server:stage/clean_up/ruins_in_d/first_go
function medabots_server:stage/clean_up/ruins_in_d/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}