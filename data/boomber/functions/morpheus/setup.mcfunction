scoreboard objectives add bb.players dummy
scoreboard objectives add bb.time dummy
scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.global dummy
scoreboard objectives add bb.gamerule dummy
scoreboard players set #100 bb.global 100
scoreboard players set #10 bb.global 10
scoreboard players set #1 bb.global 1
scoreboard players set #0 bb.global 0
scoreboard players set #cal_time bb.time 0
scoreboard players set #sleep_timer bb.variable 0
scoreboard players set #second bb.variable 20

function boomber:morpheus/config

scoreboard players operation #sleep_time bb.gamerule *= #second bb.variable