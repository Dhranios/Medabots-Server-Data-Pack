# Tag about-to-explode tnt
tag @s[type=minecraft:tnt_minecart,nbt={TNTFuse:0}] add tnt
tag @s[type=minecraft:tnt,nbt={Fuse:0s}] add tnt
tag @s[type=minecraft:tnt_minecart,nbt={TNTFuse:1}] add tnt
tag @s[type=minecraft:tnt,nbt={Fuse:1s}] add tnt
tag @s[type=minecraft:tnt_minecart,nbt={TNTFuse:2}] add tnt
tag @s[type=minecraft:tnt,nbt={Fuse:2s}] add tnt

# Replace with a "harmless" creeper
execute if entity @s[tag=tnt] run tag @e[distance=..2.5,tag=balloon_bomb] add potential_burst
execute if entity @s[tag=tnt] run tag @e[distance=..2.5,tag=pot] add broken
execute if entity @s[tag=tnt] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"text":"TNT"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b}
kill @s[tag=tnt]