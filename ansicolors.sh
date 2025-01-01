#!/bin/bash
ansicolors() {
    local i
    printf "\nStandard:\t"
    for i in {0..7}; do
        printf "\x1b[38;5;${i}m   %d  " "$i"
    done
    tput sgr0
    printf "\n\nIntense:\t"
    for i in {8..9}; do
        printf "\x1b[38;5;${i}m   %d  " "$i"
    done
    for i in {10..15}; do
        printf "\x1b[38;5;${i}m  %d  " "$i"
    done
    tput sgr0
    printf "\n\n\t\t"
    local j
    for i in {0..9}; do
        for j in {0..7}; do
            printf "\x1b[38;5;$(($i * 8 + $j + 16))m  %d  " "$(($i * 8 + $j + 16))"
        done
        tput sgr0
        printf "\n\t\t"
    done
    printf "\x1b[38;5;96m  96  \x1b[38;5;97m  97  \x1b[38;5;98m  98  \x1b[38;5;99m  99  \x1b[38;5;100m 100  \x1b[38;5;101m 101  \x1b[38;5;102m 102  \x1b[38;5;103m 103  "
    tput sgr0
    printf "\n\t\t"
    for i in {11..26}; do
        for j in {0..7}; do
            printf "\x1b[38;5;$(($i * 8 + $j + 16))m %d  " "$(($i * 8 + $j + 16))"
        done
        tput sgr0
        printf "\n\t\t"
    done
    printf "\n\nGreys:\t\t"
    for i in {232..255}; do
        printf "\x1b[38;5;${i}m%d  " "$i"
    done
    tput sgr0
    printf "\n\n"
}
ansicolors
