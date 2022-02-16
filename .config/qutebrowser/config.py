# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

# Set dark mode
config.set("colors.webpage.bg", "black")
config.set("colors.webpage.preferred_color_scheme", "dark")
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.darkmode.algorithm", "brightness-rgb")
config.set("colors.webpage.darkmode.contrast", 1.0)
config.set("colors.webpage.darkmode.threshold.text", 110)
config.set("colors.webpage.darkmode.threshold.background", 215)
config.set("colors.webpage.darkmode.policy.images", "smart")

# Bindings for normal mode
config.bind(',v', 'hint links spawn --detach mpv --force-window=immediate "{hint-url}"')
config.bind(',a', 'hint links spawn --detach mpv --force-window=immediate --no-video "{hint-url}"')

# Set fonts
monospace = "10pt 'Noto Sans Mono'"
c.fonts.hints = f"bold {monospace}"
c.fonts.completion.category = f"bold {monospace}"
c.fonts.completion.entry = monospace
c.fonts.debug_console = monospace
c.fonts.downloads = monospace
c.fonts.keyhint = monospace
c.fonts.messages.error = monospace
c.fonts.messages.info = monospace
c.fonts.messages.warning = monospace
c.fonts.prompts = monospace
c.fonts.statusbar = monospace
c.fonts.tabs.selected = monospace
c.fonts.tabs.unselected = monospace

# Key remaps
c.bindings.key_mappings = {'<Ctrl-c>': '<Escape>'}
c.bindings.key_mappings = {'<Ctrl-[>': '<Escape>'}
c.bindings.key_mappings = {'<Alt-Space>': '<Escape>'}

c.colors.statusbar.normal.bg = "#000000"
c.colors.tabs.bar.bg = "#000000"
c.colors.tabs.odd.bg = "#000000"
c.colors.tabs.even.bg = "#000000" 
c.colors.tabs.selected.odd.bg = "#555555" 
c.colors.tabs.selected.even.bg = "#555555" 

config.set('content.cookies.accept', 'all', 'devtools://*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# Block JavaScript
# Type: String
config.set('content.javascript.enabled', False)

# Allow JavaScript for certain websites
# Type: String
config.set('content.javascript.enabled', True, '*://odysee.com/*')
config.set('content.javascript.enabled', True, '*://videos.lukesmith.xyz/*')
config.set('content.javascript.enabled', True, '*://www.youtube.com/*')
config.set('content.javascript.enabled', True, '*://start.duckduckgo.com/*')
config.set('content.javascript.enabled', True, '*://duckduckgo.com/*')
config.set('content.javascript.enabled', True, '*://github.com/*')
config.set('content.javascript.enabled', True, '*://www.netflix.com/*')
config.set('content.javascript.enabled', True, '*://wiki.archlinux.org/*')
config.set('content.javascript.enabled', True, '*://archlinux.org/*')
config.set('content.javascript.enabled', True, '*://aur.archlinux.org/*')

# Block cookies
# Type: String
config.set('content.cookies.accept', 'never')

# Allow cookies for certain websites
# Type: String
config.set('content.cookies.accept', 'all', '*://start.duckduckgo.com/*')
config.set('content.cookies.accept', 'all', '*://duckduckgo.com/*')
config.set('content.cookies.accept', 'all', '*://github.com/*')
config.set('content.cookies.accept', 'all', '*://www.netflix.com/*')
config.set('content.cookies.accept', 'all', '*://wiki.archlinux.org/*')
config.set('content.cookies.accept', 'all', '*://archlinux.org/*')
config.set('content.cookies.accept', 'all', '*://aur.archlinux.org/*')

# Enable video and audio
# Type: BoolAsk
config.set('content.media.audio_video_capture', True, 'https://meet.google.com/*')
config.set('content.media.audio_capture', True, 'https://meet.google.com/*')
config.set('content.media.video_capture', True, 'https://meet.google.com/*')
config.set('content.media.audio_capture', True, 'https://discord.com/*')
config.set('content.media.video_capture', True, 'https://discord.com/*')

# Enable desktop sharing
# Type: BoolAsk
config.set('content.desktop_capture', True, 'https://meet.google.com/*')
config.set('content.desktop_capture', True, 'https://discord.com/*')

# Disable Notifications
# Type: BoolAsk
config.set('content.notifications.enabled', False)
