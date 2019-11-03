execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
function medabots_server:stage/clean_up/park_battle/cannons_1
function medabots_server:stage/clean_up/park_battle/walls
function medabots_server:stage/clean_up/park_battle/accelerators
function medabots_server:stage/clean_up/park_battle/wind_1
function medabots_server:stage/clean_up/park_battle/cannons_2
function medabots_server:stage/clean_up/park_battle/balloon_bombs
function medabots_server:stage/clean_up/park_battle/action_floors
function medabots_server:stage/clean_up/park_battle/wind_2
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}