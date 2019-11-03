execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
function medabots_server:stage/clean_up/ruins_battle/walls
function medabots_server:stage/clean_up/ruins_battle/wind
function medabots_server:stage/clean_up/ruins_battle/cannons
function medabots_server:stage/clean_up/ruins_battle/accelerators
function medabots_server:stage/clean_up/ruins_battle/lasers
function medabots_server:stage/clean_up/ruins_battle/hammer_punches
function medabots_server:stage/clean_up/ruins_battle/locked_in
function medabots_server:stage/clean_up/ruins_battle/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}