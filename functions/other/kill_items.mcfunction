# Mark to kill
tag @s[nbt={Item:{id:"minecraft:arrow"}}] add kill
tag @s[nbt={Item:{id:"minecraft:tipped_arrow"}}] add kill
tag @s[nbt={Item:{id:"minecraft:spectral_arrow"}}] add kill
tag @s[nbt={Item:{tag:{medabots_server:{kill:1b}}}},nbt=!{Invulnerable:1b}] add kill

# Moderator exclusive, instant AFK by dropping pot breaker
execute if entity @s[nbt={Item:{tag:{medabots_server:{id:"medabots_server:pot_breaker"}}}}] as @a[limit=1,distance=..3] run scoreboard players set @s[scores={Moderator=1}] AFKTime 1199

# Kill the to-kill items
kill @s[tag=kill]