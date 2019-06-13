# Give the weapon to user
execute unless entity @s[scores={ScoutTime=1..}] if entity @s[type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","cpu_owned","enemy_team"],NoGravity:1b}
execute if entity @s[scores={ScoutTime=1..},type=!minecraft:player] anchored eyes run summon minecraft:snowball ^ ^ ^1 {CustomName:'{"translate":"medabots_server:move.kuwagata_medal"}',Tags:["spiral_bolt","cpu_owned","enemy_team","strong"],NoGravity:1b}
