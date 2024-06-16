function fish_gecut_logo
    # Define Variables
    set windowWidth (tput cols)
    set windowHeight (tput lines)
    set windowMinViewport (math min "$windowWidth, $windowHeight")
    set showLogo test $windowWidth -gt 50 -a $windowHeight -gt 20

    if $showLogo
        set logoWidth 34
        set logoHeight 18
    else
        set logoWidth 19
        set logoHeight 3
    end

    set logoStartSpaces (math "($windowWidth - $logoWidth)/2-1")
    set logoHeightSpaces (math "($windowHeight - $logoHeight)/2")

    for i in (seq $logoHeightSpaces)
        echo ""
    end

    if $showLogo
        printf "\e[32;1m%"$logoStartSpaces"s        @@@@@@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s     @@@@@@@@@@@@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s @@@@@@@@@@@@@@           @@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@@@@             @@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@@    @@@@@@@@   @@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@    @@@@@@@@@   @@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@   @@@@@@@@@@   @@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@    @@@@@@@@@   @@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@@     @@@@@    @@@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@@@           @@@@@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@@@@@@     @@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s@@@@@@@@@@   @@@@@@@@@   @@@@@@@@@@@
  %"$logoStartSpaces"s @@@@@@@@@@             @@@@@@@@@@@ 
  %"$logoStartSpaces"s   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s     @@@@@@@@@@@@@@@@@@@@@@@@@@
  %"$logoStartSpaces"s        @@@@@@@@@@@@@@@@@@@@\e[0m"
    else
        printf "\e[32;1m%"$logoStartSpaces"s█▀▀ █▀▀ █▀▀ █ █ ▀█▀
%"$logoStartSpaces"s█ █ █▀▀ █   █ █  █ 
%"$logoStartSpaces"s▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀  ▀ \e[0m"
    end

    for i in (seq $logoHeightSpaces)
        echo ""
    end
end
