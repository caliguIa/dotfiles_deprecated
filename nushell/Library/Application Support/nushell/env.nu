# Nushell Environment Config File

# def create_left_prompt [] {
#     let path_segment = if (is-admin) {
#         $"(ansi red_bold)($env.PWD)"
#     } else {
#         $"(ansi green_bold)($env.PWD)"
#     }

#     $path_segment
# }

def create_left_prompt [] {
    # starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}

def create_right_prompt [] {
    let time_segment = ([
        (date now | format date '%m/%d/%Y %r')
    ] | str join)

    $time_segment
}

# Use nushell functions to define your right and left prompt
# $env.PROMPT_COMMAND = { create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = { create_right_prompt }

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR =  ""
$env.PROMPT_INDICATOR_VI_INSERT = ": "
$env.PROMPT_INDICATOR_VI_NORMAL = "〉"
$env.PROMPT_MULTILINE_INDICATOR = "::: "

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
$env.ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) | path expand -n }
    to_string: { |v| $v | path expand -n | str join (char esep) }
  }
}

# Directories to search for scripts when calling source or use
#
# By default, <nushell-config-dir>/scripts is added
$env.NU_LIB_DIRS = [
    ($nu.config-path | path dirname | path join 'scripts')
]

# Directories to search for plugin binaries when calling register
#
# By default, <nushell-config-dir>/plugins is added
$env.NU_PLUGIN_DIRS = [
    ($nu.config-path | path dirname | path join 'plugins')
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')
$env.HOME = '/Users/caligula'
$env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/homebrew/bin')
$env.PATH = ($env.PATH | split row (char esep) | prepend '/opt/local/bin')
$env.PATH = ($env.PATH | split row (char esep) | append '/opt/local/sbin')
$env.PATH = ($env.PATH | split row (char esep) | append '/opt/homebrew/sbin')
$env.PATH = ($env.PATH | split row (char esep) | append '/usr/local/sbin')
$env.PATH = ($env.PATH | split row (char esep) | append '/usr/local/bin')
$env.PATH = ($env.PATH | split row (char esep) | append '/usr/local/go/bin')
$env.PATH = ($env.PATH | split row (char esep) | append '/Users/caligula/.cargo/bin')
$env.PATH = ($env.PATH | split row (char esep) | append '/Users/caligula/.fzf/bin')
$env.PATH = ($env.PATH | split row (char esep) | append '/Users/caligula/.local/bin')
$env.PATH = ($env.PATH | split row (char esep) | append '/Users/caligula/.jabba/bin')
# $env.PATH = ($env.PATH | split row (char esep) | append '$env.HOME/google-cloud-sdk')
$env.PATH = ($env.PATH | split row (char esep) | append '/Users/caligula/google-cloud-sdk/bin')
$env.EDITOR = nvim
$env.STARSHIP_SHELL = 'nu'
$env.SHELL = '/opt/local/bin/nu'
$env.GCLOUD_CONFIG_HOME = '/Users/caligula/.config/gcloud'
$env.PROJECT_ID = panda-development
$env.DEV_STORAGE_SERVICE = '/Users/caligula/.config/auth/panda-development-1af3ae8f0648.json'
$env.TERMINAL = WezTerm
$env.FIREBASE_PROJECT = panda-dev-cal-local
$env.FIREBASE_AUTH_CREDENTIALS = '/Users/caligula/.config/auth/panda-dev-cal-local-c0d2a21988b5.json'
$env.SSL_LOCAL_PREFIX = '/Users/caligula/.ssl/ssl/'
$env.BUILD_VERSION = 0
$env.JAVA_HOME = '/Users/caligula/.jabba/jdk/zulu@1.8.282/Contents/Home'

use '/Users/caligula/Library/Application Support/nushell/local-envars.nu'

# [ -s "/Users/caligula/.jabba/jabba.sh" ] and use "/Users/caligula/.jabba/jabba.sh"

^fnm env --json | from json | load-env
$env.PATH = ($env.PATH | split row (char esep) | append [$"($env.FNM_MULTISHELL_PATH)/bin"])


mkdir ~/.cache/starship
starship init nu | save -f ~/.cache/starship/init.nu
