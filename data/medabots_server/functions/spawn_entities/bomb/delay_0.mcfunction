function medabots_server:spawn_entities/bomb
tag @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] add delay_0
scoreboard players set @e[distance=..0.7,tag=bomb,tag=!pot,tag=!action_floor] DelayTime 0