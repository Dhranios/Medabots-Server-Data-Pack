execute as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=27}] run scoreboard players set @s Stage 27
function medabots_server:stage/clean_up/ruins_out_c/first_go
function medabots_server:stage/clean_up/ruins_out_c/second_go
function medabots_server:stage/clean_up/ruins_out_c/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}