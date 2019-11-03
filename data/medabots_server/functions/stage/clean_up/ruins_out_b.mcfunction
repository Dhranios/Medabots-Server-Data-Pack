execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=16}] run scoreboard players set @s Stage 16
function medabots_server:stage/clean_up/ruins_out_b/first_go
function medabots_server:stage/clean_up/ruins_out_b/second_go
function medabots_server:stage/clean_up/ruins_out_b/rubberobo
function medabots_server:stage/clean_up/ruins_out_b/special
function medabots_server:stage/clean_up/ruins_out_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}