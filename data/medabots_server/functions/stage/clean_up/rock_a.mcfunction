execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=2}] run scoreboard players set @s Stage 2
function medabots_server:stage/clean_up/rock_a/first_go
function medabots_server:stage/clean_up/rock_a/second_go
function medabots_server:stage/clean_up/rock_a/rubberobo
function medabots_server:stage/clean_up/rock_a/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}