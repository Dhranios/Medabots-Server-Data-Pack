tag @s[tag=drop_money] remove drop_money

# Drop money if they get "hurt"
tag @s[nbt={HurtTime:5s}] add drop_money
data merge entity @s {Health:20.0f}
execute if entity @s[tag=drop_money] run summon minecraft:item ~ ~1 ~ {Motion:[0.0d,0.5d,0.0d],PickupDelay:60s,Age:5800s,Item:{id:"minecraft:lapis_lazuli",Count:20b,tag:{medabots_server:{id:"medabots_server:medallar_cent"},display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.medallar_cent\"}"}}}}

# "Run away!!!"
spreadplayers -386 -52 1 72 false @s[tag=drop_money]