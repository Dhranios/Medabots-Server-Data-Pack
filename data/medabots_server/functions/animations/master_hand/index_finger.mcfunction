# Move with
execute rotated ~ 0 run teleport @s ^ ^0.4 ^0.5 ~ 0

execute if entity @s[tag=appearing] run function medabots_server:animations/master_hand/appearing/index_finger

execute if entity @s[tag=!appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!fast_idle,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!walk_start,tag=!walk,tag=!walk_stop,tag=!walk_kick,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!gun_1,tag=!gun_3,tag=!dash,tag=!lasers] run function medabots_server:animations/master_hand/idle/index_finger

execute if entity @s[tag=catch] run function medabots_server:animations/master_hand/catch/index_finger
execute if entity @s[tag=applaud] run function medabots_server:animations/master_hand/applaud/index_finger
execute if entity @s[tag=double_punch] run function medabots_server:animations/master_hand/double_punch/index_finger
execute if entity @s[tag=fast_idle] run function medabots_server:animations/master_hand/fast_idle/index_finger
execute if entity @s[tag=grab,tag=!grab_success] run function medabots_server:animations/master_hand/grab/index_finger
execute if entity @s[tag=grab_success] run function medabots_server:animations/master_hand/grab_success/index_finger
execute if entity @s[tag=jet] run function medabots_server:animations/master_hand/jet/index_finger
execute if entity @s[tag=ram] run function medabots_server:animations/master_hand/ram/index_finger
execute if entity @s[tag=punch] run function medabots_server:animations/master_hand/punch/index_finger
execute if entity @s[tag=fake_out] run function medabots_server:animations/master_hand/fake_out/index_finger
execute if entity @s[tag=drill] run function medabots_server:animations/master_hand/drill/index_finger
execute if entity @s[tag=walk_start,tag=!walk,tag=!walk_stop,tag=!walk_kick] run function medabots_server:animations/master_hand/walk_start/index_finger
execute if entity @s[tag=walk,tag=!walk_stop,tag=!walk_kick] run function medabots_server:animations/master_hand/walk/index_finger
execute if entity @s[tag=walk_stop] run function medabots_server:animations/master_hand/walk_stop/index_finger
execute if entity @s[tag=walk_kick] run function medabots_server:animations/master_hand/walk_kick/index_finger
execute if entity @s[tag=slap] run function medabots_server:animations/master_hand/slap/index_finger
execute if entity @s[tag=sweep] run function medabots_server:animations/master_hand/sweep/index_finger
execute if entity @s[tag=crush] run function medabots_server:animations/master_hand/crush/index_finger
execute if entity @s[tag=poke] run function medabots_server:animations/master_hand/poke/index_finger
execute if entity @s[tag=gun_1] run function medabots_server:animations/master_hand/gun_1/index_finger
execute if entity @s[tag=gun_3] run function medabots_server:animations/master_hand/gun_3/index_finger
execute if entity @s[tag=dash] run function medabots_server:animations/master_hand/dash/index_finger
execute if entity @s[tag=lasers] run function medabots_server:animations/master_hand/lasers/index_finger