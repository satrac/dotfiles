#!/bin/bash

export KDE_NO_GLOBAL_MENU=1
qdbus org.kde.kded5 /kded org.kde.kded5.unloadModule "appmenu"
/opt/resolve/bin/resolve &
sleep 60
qdbus org.kde.kded5 /kded org.kde.kded5.loadModule "appmenu"
