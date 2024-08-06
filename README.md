# Eww Widgets Project

Welcome to my Eww Widgets project! This project contains a collection of customizable widgets that display various system resources and information on your desktop.

## Prerequisites

Before you can run the widgets, you'll need to install [Eww](https://elkowar.github.io/eww/). Eww is a powerful and flexible widget system for Linux, which allows you to create and display custom widgets.

### Installation

To install Eww, follow the instructions in the official [Eww documentation](https://elkowar.github.io/eww/). You can typically install it via package managers for your distribution, or you can build it from source.

### Running the Widgets

Once Eww is installed, you can run the widgets with the following command:

```bash
eww open-many overview_monitor_0 weather_monitor_0 profile_monitor_0 player_monitor_0 theme_monitor_0 privacy_monitor_0 motto_monitor_0 gallery_monitor_0 github_monitor_0 apps_monitor_0 --arg theme_monitor_0:currentLightTheme=0 --arg theme_monitor_0:currentDarkTheme=0 --arg theme_monitor_0:currentVibrantTheme=0
```


### Usage

Hi guys, feel free to use the widgets—every widget has been separated into its own window, so you can use the ones you like. There are around 25 themes: 10 dark, 10 light (lucky), and 5 Goofy (vibrant).

#### Weather Widget

- The weather widget uses the OpenWeatherMap API. You'll need to run the script located in the `scripts` folder to fetch the data. Ensure you include your API key when running the script.

#### Custom Theme
- You can also create your own themes and add them to the `themes` folder. Just specify the variable names and include them in the themes component. Check the existing ones to understand it better. 

```
(defvar darkThemes `["theme-1", "theme-2", "theme-3", "theme-4", "theme-5", "theme-6", "theme-7", "theme-8", "theme-9", "theme-10"]`) 
(defvar lightThemes `["theme-1", "theme-2", "theme-3", "theme-4", "theme-5", "theme-6", "theme-7", "theme-8", "theme-9", "theme-10"]`)
(defvar vibrantThemes `["theme-1", "theme-2", "theme-3", "theme-4", "theme-5", "theme-6", "theme-7", "theme-8", "theme-9", "theme-10"]`)
```

Just mention the name of your excluding .scss

#### Media Player

- The media player widget uses `playerctl`. You can play/pause and move to the next/previous song. Currently, it displays a progress bar, not a seek bar.

#### Speaker, Mic, Bluetooth, and WiFi Controls

- The speaker and mic mute/unmute feature requires `pipewire`.
- Bluetooth controls require `bluetoothctl`.
- WiFi management uses `iwd`.

#### Display Configuration

- You can create a copy of the monitor file for your own display and adjust the `x` and `y` coordinates to fit the widgets on your screen as desired.

#### Performance Notes

- The theme-changing process can be a bit CPU-intensive.
- This project currently works under the assumption that you have 2 monitors, if you have only 1 monitor then the theme changes might the widgets for both monitor 0 and 1.

If you run into any other issues or have questions, feel free to open an issue or reach out for help!