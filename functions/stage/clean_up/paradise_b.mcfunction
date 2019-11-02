execute as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=22}] run scoreboard players set @s Stage 22
function medabots_server:stage/clean_up/paradise_b/first_go
function medabots_server:stage/clean_up/paradise_b/second_go
function medabots_server:stage/clean_up/paradise_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}