execute as @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=48}] run scoreboard players set @s Stage 48
function medabots_server:stage/clean_up/icefield_battle/balloon_bombs
function medabots_server:stage/clean_up/icefield_battle/mirrors
function medabots_server:stage/clean_up/icefield_battle/cannons
function medabots_server:stage/clean_up/icefield_battle/locked_out
function medabots_server:stage/clean_up/icefield_battle/accelerators
function medabots_server:stage/clean_up/icefield_battle/ice_blocks
function medabots_server:stage/clean_up/icefield_battle/spring_walls
function medabots_server:stage/clean_up/icefield_battle/empty
tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}