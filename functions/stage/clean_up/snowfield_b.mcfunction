execute as @e[x=-1762,y=42,z=-538,dx=94,dy=7,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=14}] run scoreboard players set @s Stage 14
function medabots_server:stage/clean_up/snowfield_b/first_go
function medabots_server:stage/clean_up/snowfield_b/second_go
function medabots_server:stage/clean_up/snowfield_b/rubberobo
function medabots_server:stage/clean_up/snowfield_b/special
function medabots_server:stage/clean_up/snowfield_b/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}