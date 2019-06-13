# Drop money if they get "hurt"
execute if entity @s run playsound medabots_server:entity.rubberobo.death neutral @a ~ ~ ~ 1
data merge entity @s {Health:20.0f}
execute if entity @s run summon minecraft:item ~ ~1 ~ {Motion:[0.0d,0.5d,0.0d],PickupDelay:60s,Age:5800s,Item:{id:"minecraft:lapis_lazuli",Count:20b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.medallar_cent"}'}}}}

# "Run away!!!"
spreadplayers -386 -52 1 72 false @s
execute at @s run playsound medabots_server:entity.rubberobo.respawn neutral @a ~ ~ ~ 1