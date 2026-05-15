#!/bin/sh
mkdir -p /etc/systemd/sleep.conf.d/
mkdir -p /etc/gdm/
echo "[Sleep]                 \
\nAllowSuspend=no             \
\nAllowHibernation=no         \
\nAllowHybridSleep=no         \
\nAllowSuspendThenHibernate=no" > /etc/systemd/sleep.conf.d/disable-sleep.conf
echo "\n[daemon] \
\nAutomaticLoginEnable=True \
\nAutomaticLogin=michael" >> /etc/gdm/custom.conf
