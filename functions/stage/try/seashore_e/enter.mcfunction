execute if entity @a[x=-2003,y=0,z=-329,dx=93,dy=49,dz=78] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-2003,y=0,z=-329,dx=93,dy=49,dz=78] run function medabots_server:stage/clean_up/seashore_e