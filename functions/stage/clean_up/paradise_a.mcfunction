execute as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=21}] run scoreboard players set @s Stage 21
function medabots_server:stage/clean_up/paradise_a/first_go
function medabots_server:stage/clean_up/paradise_a/second_go
function medabots_server:stage/clean_up/paradise_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}