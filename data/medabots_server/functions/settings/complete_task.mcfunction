# Unused task numbers: 1, 3, 4, 7, 11, 12

# Bug Testers

# Moderators
execute if entity @s[scores={TaskCheck=5}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Palace of Twilight, Egg Engines and Final Destinations needs building."]}
execute if entity @s[scores={TaskCheck=5}] run data merge block -292 18 -60 {auto:0b}
execute if entity @s[scores={TaskCheck=6}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Mt. Battle's mountain look needs (a lot of) work."]}
execute if entity @s[scores={TaskCheck=6}] run data merge block -292 18 -59 {auto:0b}

# Personal
# FVbico
execute if entity @s[scores={TaskCheck=8}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Update the design of Park and Paradise A and B, and all C, D, E and F stages."]}
execute if entity @s[scores={TaskCheck=8}] run data merge block -291 18 -59 {auto:0b}
execute if entity @s[scores={TaskCheck=9}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Re-create Ricco Harbor."]}
execute if entity @s[scores={TaskCheck=9}] run data merge block -291 18 -58 {auto:0b}
execute if entity @s[scores={TaskCheck=10}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Make the Press Wall animation smooth."]}
execute if entity @s[scores={TaskCheck=10}] run data merge block -291 18 -57 {auto:0b}
execute if entity @s[scores={TaskCheck=2}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"CPUs need custom AI."]}
execute if entity @s[scores={TaskCheck=2}] run data merge block -291 18 -60 {auto:0b}
# UltimateGold
execute if entity @s[scores={TaskCheck=13}] run tellraw @a[tag=bug_tester] {"translate":"medabots_server:message.pending_tasks.done","with":[{"selector":"@s"},"Tower of valnir needs rebuilding for spectator areas."]}
execute if entity @s[scores={TaskCheck=13}] run data merge block -290 18 -60 {auto:0b}

# Coop

scoreboard players reset @s TaskCheck