execute as @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=45}] run scoreboard players set @s Stage 45
function medabots_server:stage/clean_up/lagdou_ruins_10/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}