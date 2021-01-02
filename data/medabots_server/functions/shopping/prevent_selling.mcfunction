execute if entity @s[tag=!sold_item] run function medabots_server:shopping/reset
tag @s remove sold_item
advancement revoke @s only medabots_server:system_triggers/shopping/moved_item