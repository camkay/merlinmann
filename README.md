
<!-- README.md is generated from README.Rmd. Please edit that file -->

# merlinmann

<!-- badges: start -->

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

An R package with two functions: `wisdom()` and `wisdom_on_startup()`.
`wisdom()` dispenses a randomly selected piece of wisdom from Merlin
Mann’s [Wisdom Project](https://github.com/merlinmann/wisdom).
`wisdom_on_startup()` sets R to dispense a randomly selected piece of
wisdom from Merlin Mann’s [Wisdom
Project](https://github.com/merlinmann/wisdom) on startup.

The code for this package was borrowed liberally from
[mkearney](https://github.com/mkearney)’s
[{mitchhedberg}](https://github.com/mkearney/mitchhedberg) package.

## Installation

The development version of `{merlinmann}` can be installed from
[Github](https://github.com) with:

``` r
devtools::install_github("camkay/merlinmann")
```

## Examples

### `wisdom()`

``` r
merlinmann::wisdom()
  "Avoid any food whose name has been altered for legal reasons. (Thanks, Chris C.)" - Merlin Mann
merlinmann::wisdom()
  "Buy supplies before you need them and gadgets after you need them." - Merlin Mann
merlinmann::wisdom()
  "Make time to write the thank-you note before you open the present." - Merlin Mann
```

### `wisdom_on_startup`

``` r
merlinmann::wisdom_on_startup()

Restarting R session...

  "Start acting like your life matters." - Merlin Mann

Restarting R session...

  "If you want an honest opinion, ask for the second superlative. For example, if you want a thoughtful 
  answer about someone's job, ask them their second-least-favorite thing about it." - Merlin Mann

Restarting R session...

  "Take more photos and videos that include the faces of people you love." - Merlin Mann
  
```
