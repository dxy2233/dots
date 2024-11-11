#!/usr/bin/env bash
#shutdown now

zenity --question --text="确定要关机吗？"

# 如果用户确认，则执行关机命令
if [ $? -eq 0 ]; then
  systemctl poweroff
fi
