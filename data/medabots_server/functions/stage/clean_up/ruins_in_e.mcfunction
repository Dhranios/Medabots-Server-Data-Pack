execute as @e[x=-2015,y=41,z=-536,dx=91,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=59}] run scoreboard players set @s Stage 59
function medabots_server:stage/clean_up/ruins_in_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}