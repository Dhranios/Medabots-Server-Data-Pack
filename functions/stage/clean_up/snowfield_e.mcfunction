execute as @e[x=-1905,y=42,z=-438,dx=79,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=56}] run scoreboard players set @s Stage 56
function medabots_server:stage/clean_up/snowfield_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}