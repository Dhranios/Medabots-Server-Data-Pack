execute if entity @a[x=-1764,y=0,z=-247,dx=88,dy=48,dz=63,scores={Battle=0..3}] run tellraw @s {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute unless entity @a[x=-1764,y=0,z=-247,dx=88,dy=48,dz=63,scores={Battle=0..3}] run function medabots_server:stage/clean_up/iceberg_a