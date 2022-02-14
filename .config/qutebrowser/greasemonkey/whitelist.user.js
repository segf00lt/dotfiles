// ==UserScript==
// @match https://www.desmos.com/calculator
// @match https://mediagoblin.org/
// @match https://lukesmith.xyz/
// @match https://videos.lukesmith.xyz/
// @run-at document-end
// ==/UserScript==

meta = document.createElement('meta');
meta.name = "color-scheme";
meta.content = "dark";
document.head.appendChild(meta);
