swaymsg "workspace number 2"
i3-toolwait --waitfor foot foot
i3-toolwait -- foot newsboat
swaymsg split v
i3-toolwait -- foot irssi

swaymsg "workspace number 3"
i3-toolwait librewolf

swaymsg "workspace number 4"
i3-toolwait signal-desktop
i3-toolwait element-desktop

swaymsg "workspace number 5"
i3-toolwait thunderbird

swaymsg "workspace number 1"
