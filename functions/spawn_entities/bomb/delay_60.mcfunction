function medabots_server:spawn_entities/bomb
tag @e[distance=..0.7,tag=bomb] add delay_60
scoreboard players set @e[distance=..0.7,tag=bomb] DelayTime 1200