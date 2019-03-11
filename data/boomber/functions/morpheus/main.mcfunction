execute as @a[nbt={Sleeping:0b}] run tag @s remove boomber.morpheus.announce_to_chat
execute as @a[nbt={Sleeping:0b}] run tag @s remove boomber.morpheus.is_sleep
execute as @a[nbt={Sleeping:1b}] run tag @s add boomber.morpheus.is_sleep

function boomber:morpheus/calculation/calculate_player

execute if score #chat bb.gamerule matches ..0 as @e[tag=boomber.morpheus.is_sleep,tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/announce_to_chat/player_to_percent
execute if score #chat bb.gamerule matches 1 as @e[tag=boomber.morpheus.is_sleep,tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/announce_to_chat/sleep_to_percent
execute if score #chat bb.gamerule matches 2 as @e[tag=boomber.morpheus.is_sleep,tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/announce_to_chat/alternate_sleep_to_percent
execute if score #chat bb.gamerule matches 3.. as @e[tag=boomber.morpheus.is_sleep,tag=!boomber.morpheus.announce_to_chat] run function boomber:morpheus/announce_to_chat/sleep_to_number

execute store result score #time bb.time run time query daytime
execute if score #sleep_in_percent bb.players >= #minimum_percentage bb.players if score #time bb.time matches 12451..23999 run scoreboard players add #sleep_timer bb.variable 1
execute if score #sleep_in_percent bb.players < #minimum_percentage bb.players run scoreboard players set #sleep_timer bb.variable 0
execute if score #sleep_timer bb.variable >= #sleep_time bb.gamerule if entity @e[tag=boomber.morpheus.is_sleep] if score #sleep_in_percent bb.players >= #minimum_percentage bb.players if score #time bb.time matches 12451..23999 run function boomber:morpheus/event/skip_the_night/skip_the_night
