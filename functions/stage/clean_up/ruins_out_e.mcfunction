execute as @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=58}] run scoreboard players set @s Stage 58
function medabots_server:stage/clean_up/ruins_out_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}