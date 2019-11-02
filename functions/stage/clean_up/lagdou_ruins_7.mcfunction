execute as @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=42}] run scoreboard players set @s Stage 42
function medabots_server:stage/clean_up/lagdou_ruins_7/empty
function medabots_server:stage/clean_up/lagdou_ruins_7/darkness
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}