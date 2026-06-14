# ansicolor

Small Bash tool to inspect ANSI 256 colors and SGR attributes directly in the terminal.

It is meant for testing colors, finding codes, and quickly checking foreground/background/SGR combinations.

## Usage

```sh
ansicolor
```

Show the 256-color foreground table.

```sh
ansicolor hello
```

Print text using the terminal default style.

```sh
ansicolor -- -b
```

Print `-b` literally.

## Tables

```sh
ansicolor -f
```

Show the foreground color table.

```sh
ansicolor -b
```

Show the background color table.

```sh
ansicolor -s
```

Show the SGR attribute table.

## Fixed values

```sh
ansicolor -f=1 hello
ansicolor -b=4 hello
ansicolor -s=1 hello
```

Use fixed foreground, background, or SGR values.

Values can be single numbers, lists, ranges, or stepped ranges:

```sh
-f=1
-f=1,2,3
-f=1..10
-f=1..10..2
```

## Combinations

```sh
ansicolor -b -f=1
```

Show the background table with foreground color `1`.

```sh
ansicolor -b -f=2,3
```

Show one background table for each fixed foreground color.

```sh
ansicolor -f -b=16 -s=1
```

Show the foreground table on background `16` using SGR `1`.

```sh
ansicolor -f=0..5 -b=2..4
```

Print all selected foreground/background combinations.

## Options

```text
-f, --fg        iterate foreground colors
-f=LIST         fixed foreground color(s), 0-255

-b, --bg        iterate background colors
-b=LIST         fixed background color(s), 0-255

-s, --sgr       iterate SGR attributes
-s=LIST         fixed SGR attribute(s), 0-107

-h, --help      show help
-v, --version   show version
```

## Notes

The list syntax follows Bash-style ranges:

```sh
1..10..5
```

means:

```text
1 6
```

Numbers are evaluated by Bash arithmetic rules.

