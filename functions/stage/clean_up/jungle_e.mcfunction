execute as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,type=!minecraft:player] unless entity @s[scores={Stage=54}] run scoreboard players set @s Stage 54
function medabots_server:stage/clean_up/jungle_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}