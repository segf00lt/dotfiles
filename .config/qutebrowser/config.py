# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
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

# Key remaps
c.bindings.key_mappings = {'<Ctrl-c>': '<Escape>'}

# Read colors from Xresources
#import subprocess

#def read_xresources(prefix):
#    props = {}
#    x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
#    lines = x.stdout.decode().split('\n')
#    for line in filter(lambda l : l.startswith(prefix), lines):
#        prop, _, value = line.partition(':\t')
#        props[prop] = value
#    return props

#xresources = read_xresources('*')
c.colors.statusbar.normal.bg = "#000000" #xresources['*.background']
c.colors.tabs.bar.bg = "#000000" #xresources['*.background']
c.colors.tabs.odd.bg = "#000000" #xresources['*.background']
c.colors.tabs.even.bg = "#000000" #xresources['*.background']
c.colors.tabs.selected.odd.bg = "#555555" #xresources['*.color8']
c.colors.tabs.selected.even.bg = "#555555" #xresources['*.color8']

# Hide tabs when only one tab open
#config.set("tabs.show", "multiple")

# Which cookies to accept. With QtWebEngine, this setting also controls
# other features with tracking capabilities similar to those of cookies;
# including IndexedDB, DOM storage, filesystem API, service workers, and
# AppCache. Note that with QtWebKit, only `all` and `never` are
# supported as per-domain values. Setting `no-3rdparty` or `no-
# unknown-3rdparty` per-domain on QtWebKit will have the same effect as
# `all`. If this setting is used with URL patterns, the pattern gets
# applied to the origin/first party URL of the page making the request,
# not the request URL.
# Type: String
# Valid values:
#   - all: Accept all cookies.
#   - no-3rdparty: Accept cookies from the same origin only. This is known to break some sites, such as GMail.
#   - no-unknown-3rdparty: Accept cookies from the same origin only, unless a cookie is already set for the domain. On QtWebEngine, this is the same as no-3rdparty.
#   - never: Don't accept cookies at all.
config.set('content.cookies.accept', 'all', 'devtools://*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version} Edg/{upstream_browser_version}', 'https://accounts.google.com/*')

# User agent to send.  The following placeholders are defined:  *
# `{os_info}`: Something like "X11; Linux x86_64". * `{webkit_version}`:
# The underlying WebKit version (set to a fixed value   with
# QtWebEngine). * `{qt_key}`: "Qt" for QtWebKit, "QtWebEngine" for
# QtWebEngine. * `{qt_version}`: The underlying Qt version. *
# `{upstream_browser_key}`: "Version" for QtWebKit, "Chrome" for
# QtWebEngine. * `{upstream_browser_version}`: The corresponding
# Safari/Chrome version. * `{qutebrowser_version}`: The currently
# running qutebrowser version.  The default value is equal to the
# unchanged user agent of QtWebKit/QtWebEngine.  Note that the value
# read from JavaScript is always the global value. With QtWebEngine
# between 5.12 and 5.14 (inclusive), changing the value exposed to
# JavaScript requires a restart.
# Type: FormatString
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

# Disable js youtube
#config.set('content.javascript.enabled', False, 'https://www.youtube.com/*')
#config.set('content.javascript.enabled', False, 'https://youtube.com/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Allow cookies for certain websites
# Type: String
config.set('content.cookies.accept', 'all', 'https://duckduckgo.com/*')
config.set('content.cookies.accept', 'all', 'https://github.com/*')

# Block cookies
# Type: String
config.set('content.cookies.accept', 'never', 'https://www.youtube.com/*')
config.set('content.cookies.accept', 'never', 'https://youtube.com/*')
config.set('content.cookies.accept', 'never', 'https://icons8.com/upscaler')
config.set('content.cookies.accept', 'never', 'https://drive.google.com/*')
config.set('content.cookies.accept', 'never', 'https://google.com/*')
config.set('content.cookies.accept', 'never', 'https://support.google.com/*')
#config.set('content.cookies.accept', 'no-3rdparty')

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
