execute as @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=47}] run scoreboard players set @s Stage 47
function medabots_server:stage/clean_up/woods_battle/stones
function medabots_server:stage/clean_up/woods_battle/action_floors_1
function medabots_server:stage/clean_up/woods_battle/action_floors_2
function medabots_server:stage/clean_up/woods_battle/balloon_bombs
function medabots_server:stage/clean_up/woods_battle/accelerators
function medabots_server:stage/clean_up/woods_battle/lasers
function medabots_server:stage/clean_up/woods_battle/cannons
function medabots_server:stage/clean_up/woods_battle/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}