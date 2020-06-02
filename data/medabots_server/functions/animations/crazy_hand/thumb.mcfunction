# Move with
execute rotated ~ 0 run teleport @s ^-1.3 ^ ^ ~ 0

execute if entity @s[tag=appearing] run function medabots_server:animations/crazy_hand/appearing/thumb

execute if entity @s[tag=!appearing,tag=!catch,tag=!applaud,tag=!double_punch,tag=!grab,tag=!grab_success,tag=!jet,tag=!ram,tag=!punch,tag=!fake_out,tag=!drill,tag=!slap,tag=!sweep,tag=!crush,tag=!poke,tag=!lasers,tag=!crawl,tag=!crawl_stop,tag=!bombs,tag=!spasm] run function medabots_server:animations/crazy_hand/idle/thumb

execute if entity @s[tag=catch] run function medabots_server:animations/crazy_hand/catch/thumb
execute if entity @s[tag=applaud] run function medabots_server:animations/crazy_hand/applaud/thumb
execute if entity @s[tag=double_punch] run function medabots_server:animations/crazy_hand/double_punch/thumb
execute if entity @s[tag=grab] run function medabots_server:animations/crazy_hand/grab/thumb
execute if entity @s[tag=grab_success] run function medabots_server:animations/crazy_hand/grab_success/thumb
execute if entity @s[tag=jet] run function medabots_server:animations/crazy_hand/jet/thumb
execute if entity @s[tag=ram] run function medabots_server:animations/crazy_hand/ram/thumb
execute if entity @s[tag=punch] run function medabots_server:animations/crazy_hand/punch/thumb
execute if entity @s[tag=fake_out] run function medabots_server:animations/crazy_hand/fake_out/thumb
execute if entity @s[tag=drill] run function medabots_server:animations/crazy_hand/drill/thumb
execute if entity @s[tag=slap] run function medabots_server:animations/crazy_hand/slap/thumb
execute if entity @s[tag=sweep] run function medabots_server:animations/crazy_hand/sweep/thumb
execute if entity @s[tag=crush] run function medabots_server:animations/crazy_hand/crush/thumb
execute if entity @s[tag=poke] run function medabots_server:animations/crazy_hand/poke/thumb
execute if entity @s[tag=lasers] run function medabots_server:animations/crazy_hand/lasers/thumb
execute if entity @s[tag=crawl,tag=!crawl_stop] run function medabots_server:animations/crazy_hand/crawl/thumb
execute if entity @s[tag=crawl_stop] run function medabots_server:animations/crazy_hand/crawl_stop/thumb
execute if entity @s[tag=bombs] run function medabots_server:animations/crazy_hand/bombs/thumb
execute if entity @s[tag=spasm] run function medabots_server:animations/crazy_hand/spasm/thumb