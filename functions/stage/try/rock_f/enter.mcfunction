execute if entity @a[x=-1919,y=0,z=-696,dx=60,dy=49,dz=60,scores={Battle=0..3}] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1919,y=0,z=-696,dx=60,dy=49,dz=60,scores={Battle=0..3}] run function medabots_server:stage/clean_up/rock_f