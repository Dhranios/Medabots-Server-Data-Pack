execute as @e[x=-1919,y=42,z=-696,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=60}] run scoreboard players set @s Stage 60
function medabots_server:stage/clean_up/rock_f/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}