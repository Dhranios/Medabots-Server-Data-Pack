execute if entity @a[x=-1311,y=0,z=-220,dx=74,dy=49,dz=77,scores={Battle=0..3}] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1311,y=0,z=-220,dx=74,dy=49,dz=77,scores={Battle=0..3}] run function medabots_server:stage/clean_up/lagdou_ruins_7