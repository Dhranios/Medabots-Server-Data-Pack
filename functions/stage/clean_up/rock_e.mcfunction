execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=53}] run scoreboard players set @s Stage 53
function medabots_server:stage/clean_up/rock_e/custom
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}