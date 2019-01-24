# Remove old movement
tag @s[nbt=!{inBlockState:{Name:"minecraft:gray_stained_glass"}},nbt=!{inBlockState:{Name:"minecraft:black_stained_glass"}}] remove above
tag @s[nbt=!{inBlockState:{Name:"minecraft:gray_stained_glass"}},nbt=!{inBlockState:{Name:"minecraft:black_stained_glass"}}] remove below
tag @s[nbt=!{inBlockState:{Name:"minecraft:gray_stained_glass"}},nbt=!{inBlockState:{Name:"minecraft:black_stained_glass"}}] remove east
tag @s[nbt=!{inBlockState:{Name:"minecraft:gray_stained_glass"}},nbt=!{inBlockState:{Name:"minecraft:black_stained_glass"}}] remove west
tag @s[nbt=!{inBlockState:{Name:"minecraft:gray_stained_glass"}},nbt=!{inBlockState:{Name:"minecraft:black_stained_glass"}}] remove north
tag @s[nbt=!{inBlockState:{Name:"minecraft:gray_stained_glass"}},nbt=!{inBlockState:{Name:"minecraft:black_stained_glass"}}] remove south

# Go through glass
tag @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:gray_stained_glass"}}] add glass
execute if entity @s[tag=glass] if block ~0.1 ~ ~ minecraft:gray_stained_glass run tag @s add east
execute if entity @s[tag=glass,tag=!east] if block ~-0.1 ~ ~ minecraft:gray_stained_glass run tag @s add west
execute if entity @s[tag=glass,tag=!east,tag=!west] if block ~ ~ ~0.1 minecraft:gray_stained_glass run tag @s add south
execute if entity @s[tag=glass,tag=!east,tag=!west,tag=!south] if block ~ ~ ~-0.1 minecraft:gray_stained_glass run tag @s add north
execute if entity @s[tag=glass,tag=!east,tag=!west,tag=!south,tag=!north] if block ~ ~0.1 ~ minecraft:gray_stained_glass run tag @s add above
execute if entity @s[tag=glass,tag=!east,tag=!west,tag=!south,tag=!north,tag=!above] if block ~ ~-0.1 ~ minecraft:gray_stained_glass run tag @s add below
teleport @s[tag=glass,tag=above] ~ ~0.5 ~
teleport @s[tag=glass,tag=below] ~ ~-0.5 ~
teleport @s[tag=glass,tag=east] ~0.5 ~ ~
teleport @s[tag=glass,tag=west] ~-0.5 ~ ~
teleport @s[tag=glass,tag=south] ~ ~ ~0.5
teleport @s[tag=glass,tag=north] ~ ~ ~-0.5
execute if entity @s[tag=glass] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=glass] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=glass] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=glass] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=glass] {OnGround:0b,inGround:0b}
tag @s[tag=glass] remove glass

# Go through ice
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~0.1 ~ ~ minecraft:barrier if block ~0.1 ~-1 ~ minecraft:air positioned ~0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add ice_block
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~0.1 ~ ~ minecraft:barrier if block ~0.1 ~-1 ~ minecraft:air positioned ~0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add east
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~-0.1 ~ ~ minecraft:barrier if block ~-0.1 ~-1 ~ minecraft:air positioned ~-0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add ice_block
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~-0.1 ~ ~ minecraft:barrier if block ~-0.1 ~-1 ~ minecraft:air positioned ~-0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add west
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~ ~0.1 minecraft:barrier if block ~ ~-1 ~0.1 minecraft:air positioned ~ ~-1 ~0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add ice_block
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~ ~0.1 minecraft:barrier if block ~ ~-1 ~0.1 minecraft:air positioned ~ ~-1 ~0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add south
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~ ~-0.1 minecraft:barrier if block ~ ~-1 ~-0.1 minecraft:air positioned ~ ~-1 ~-0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add ice_block
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~ ~-0.1 minecraft:barrier if block ~ ~-1 ~-0.1 minecraft:air positioned ~ ~-1 ~-0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add north
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~0.1 ~ minecraft:barrier if block ~ ~-0.9 ~ minecraft:air positioned ~ ~-0.5 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add ice_block
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~0.1 ~ minecraft:barrier if block ~ ~-0.9 ~ minecraft:air positioned ~ ~-0.5 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add above
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~-0.1 ~ minecraft:barrier if block ~ ~-1.1 ~ minecraft:air positioned ~ ~-1.5 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add ice_block
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:black_stained_glass"}}] if block ~ ~-0.1 ~ minecraft:barrier if block ~ ~-1.1 ~ minecraft:air positioned ~ ~-1.5 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[dx=0,dy=0,dz=0,tag=ice_block] run tag @s add below
teleport @s[tag=ice_block,tag=above] ~ ~0.5 ~
teleport @s[tag=ice_block,tag=below] ~ ~-0.5 ~
teleport @s[tag=ice_block,tag=east] ~0.5 ~ ~
teleport @s[tag=ice_block,tag=west] ~-0.5 ~ ~
teleport @s[tag=ice_block,tag=south] ~ ~ ~0.5
teleport @s[tag=ice_block,tag=north] ~ ~ ~-0.5
execute if entity @s[tag=ice_block] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=ice_block] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=ice_block] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=ice_block] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=ice_block] {OnGround:0b,inGround:0b}
tag @s[tag=ice_block] remove ice_block

# Reflect from mirror
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~0.1 ~ ~ minecraft:barrier if block ~0.1 ~-1 ~ minecraft:cut_sandstone positioned ~0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=45,tag=mirror] run tag @s add 45_x
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~-0.1 ~ ~ minecraft:barrier if block ~-0.1 ~-1 ~ minecraft:cut_sandstone positioned ~-0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=45,tag=mirror] run tag @s add 45_negative_x
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~ ~ ~0.1 minecraft:barrier if block ~ ~-1 ~0.1 minecraft:cut_sandstone positioned ~ ~-1 ~0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=45,tag=mirror] run tag @s add 45_z
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~ ~ ~-0.1 minecraft:barrier if block ~ ~-1 ~-0.1 minecraft:cut_sandstone positioned ~ ~-1 ~-0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=45,tag=mirror] run tag @s add 45_negative_z
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~0.1 ~ ~ minecraft:barrier if block ~0.1 ~-1 ~ minecraft:cut_sandstone positioned ~0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=-45,tag=mirror] run tag @s add negative_45_x
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~-0.1 ~ ~ minecraft:barrier if block ~-0.1 ~-1 ~ minecraft:cut_sandstone positioned ~-0.5 ~-1 ~ align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=-45,tag=mirror] run tag @s add negative_45_negative_x
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~ ~ ~0.1 minecraft:barrier if block ~ ~-1 ~0.1 minecraft:cut_sandstone positioned ~ ~-1 ~0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=-45,tag=mirror] run tag @s add negative_45_z
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:barrier"}}] unless block ~ ~-1 ~ minecraft:chest if block ~ ~ ~-0.1 minecraft:barrier if block ~ ~-1 ~-0.1 minecraft:cut_sandstone positioned ~ ~-1 ~-0.5 align xyz positioned ~ ~-0.1 ~ if entity @e[type=minecraft:armor_stand,dx=0,dy=0,dz=0,y_rotation=-45,tag=mirror] run tag @s add negative_45_negative_z
execute if entity @s[tag=45_x] positioned ~0.6 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~ ~ ~0.6
execute if entity @s[tag=45_x] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=45_x] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=45_x] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=45_x] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=45_x] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=45_x] {OnGround:0b,inGround:0b}
tag @s[tag=45_x] remove 45_x
execute if entity @s[tag=45_negative_x] positioned ~-0.6 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~ ~ ~-0.6
execute if entity @s[tag=45_negative_x] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=45_negative_x] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=45_negative_x] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=45_negative_x] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=45_negative_x] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=45_negative_x] {OnGround:0b,inGround:0b}
tag @s[tag=45_negative_x] remove 45_negative_x
execute if entity @s[tag=negative_45_x] positioned ~0.6 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~ ~ ~-0.6
execute if entity @s[tag=negative_45_x] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=negative_45_x] store result entity @s Motion[0] double -0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=negative_45_x] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=negative_45_x] store result entity @s Motion[2] double -0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=negative_45_x] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=negative_45_x] {OnGround:0b,inGround:0b}
tag @s[tag=negative_45_x] remove negative_45_x
execute if entity @s[tag=negative_45_negative_x] positioned ~-0.6 ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~ ~ ~0.6
execute if entity @s[tag=negative_45_negative_x] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=negative_45_negative_x] store result entity @s Motion[0] double -0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=negative_45_negative_x] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=negative_45_negative_x] store result entity @s Motion[2] double -0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=negative_45_negative_x] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=negative_45_negative_x] {OnGround:0b,inGround:0b}
tag @s[tag=negative_45_negative_x] remove negative_45_negative_x
execute if entity @s[tag=45_z] positioned ~ ~ ~0.6 align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~0.6 ~ ~
execute if entity @s[tag=45_z] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=45_z] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=45_z] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=45_z] store result entity @s Motion[2] double -0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=45_z] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=45_z] {OnGround:0b,inGround:0b}
tag @s[tag=45_z] remove 45_z
execute if entity @s[tag=45_negative_z] positioned ~ ~ ~-0.6 align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~-0.6 ~ ~
execute if entity @s[tag=45_negative_z] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=45_negative_z] store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=45_negative_z] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=45_negative_z] store result entity @s Motion[2] double -0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=45_negative_z] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=45_negative_z] {OnGround:0b,inGround:0b}
tag @s[tag=45_negative_z] remove 45_negative_z
execute if entity @s[tag=negative_45_z] positioned ~ ~ ~0.6 align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~-0.6 ~ ~
execute if entity @s[tag=negative_45_z] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=negative_45_z] store result entity @s Motion[0] double -0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=negative_45_z] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=negative_45_z] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=negative_45_z] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=negative_45_z] {OnGround:0b,inGround:0b}
tag @s[tag=negative_45_z] remove negative_45_z
execute if entity @s[tag=negative_45_negative_z] positioned ~ ~ ~-0.6 align xyz positioned ~0.5 ~0.5 ~0.5 run teleport @s ~0.6 ~ ~
execute if entity @s[tag=negative_45_negative_z] run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute if entity @s[tag=negative_45_negative_z] store result entity @s Motion[0] double -0.001 run scoreboard players get @s MotionZ
execute if entity @s[tag=negative_45_negative_z] store result entity @s Motion[1] double 0.001 run scoreboard players get @s MotionY
execute if entity @s[tag=negative_45_negative_z] store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionX
execute if entity @s[tag=negative_45_negative_z] run stopsound @a[distance=..7] * minecraft:entity.arrow.hit
data merge entity @s[tag=negative_45_negative_z] {OnGround:0b,inGround:0b}
tag @s[tag=negative_45_negative_z] remove negative_45_negative_z

# Remove in_ground
data remove entity @s[tag=in_ground,nbt=!{inGround:1b}] inBlockState
tag @s[tag=in_ground,nbt=!{inGround:1b}] remove in_ground

# Leave light blue light trail
execute if entity @s run summon minecraft:armor_stand ~ ~-1.7 ~ {CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}],Marker:1b,Tags:["life_time"]}
execute if entity @s run effect give @a[distance=..10] minecraft:night_vision 1 0 true