execute as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=7}] run scoreboard players set @s Stage 7
function medabots_server:stage/clean_up/ruins_out_a/first_go
function medabots_server:stage/clean_up/ruins_out_a/second_go
function medabots_server:stage/clean_up/ruins_out_a/rubberobo
function medabots_server:stage/clean_up/ruins_out_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}