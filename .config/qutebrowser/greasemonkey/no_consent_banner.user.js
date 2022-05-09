// ==UserScript==
// @match https://stackoverflow.com/*
// @run-at document-end
// ==/UserScript==

const style = document.createElement('style');
style.innerHTML = '.js-consent-banner { display: none; }';
document.head.appendChild(style);
