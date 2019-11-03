execute as @e[x=-1858,y=0,z=-247,dx=94,dy=49,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=52}] run scoreboard players set @s Stage 52
function medabots_server:stage/clean_up/grassland_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}