execute if entity @a[x=-1762,y=0,z=-442,dx=94,dy=50,dz=94,scores={Battle=0..3}] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1762,y=0,z=-442,dx=94,dy=50,dz=94,scores={Battle=0..3}] run function medabots_server:stage/clean_up/seashore_b