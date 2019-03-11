scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.gamerule dummy

scoreboard players set #555 bb.variable 555
scoreboard players set #100 bb.variable 100
scoreboard players set #20 bb.variable 20
scoreboard players set #1 bb.variable 1

scoreboard players set #bb.mp.time bb.variable 0
scoreboard players set #bb.mp.sleep_timer bb.variable 0
scoreboard players set #bb.mp.wakeup_time bb.variable 23445

function boomber:morpheus/config

scoreboard players operation #bb.mp.sleep_time.sec bb.variable = #sleep_time bb.gamerule
scoreboard players operation #sleep_time bb.gamerule *= #20 bb.variable