execute if entity @a[x=-1602,y=0,z=-815,dx=61,dy=49,dz=62] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1602,y=0,z=-815,dx=61,dy=49,dz=62] run function medabots_server:stage/clean_up/snowfield_d