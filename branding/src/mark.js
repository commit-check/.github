// Writes the mark into every <i class="mark" data-tile="#hex">.
document.querySelectorAll("i.mark").forEach(function (el) {
  var tile = el.dataset.tile || "#0B1620";
  el.outerHTML =
    '<svg viewBox="0 0 64 64" width="' + el.dataset.size + '" height="' + el.dataset.size + '" aria-hidden="true">' +
    '<rect width="64" height="64" rx="15" fill="' + tile + '"/>' +
    '<path d="M21 10V54" stroke="#2C9CCD" stroke-opacity=".4" stroke-width="4" stroke-linecap="round"/>' +
    '<path d="M21 34L30 43L47 22" fill="none" stroke="#2C9CCD" stroke-width="7" stroke-linecap="round" stroke-linejoin="round"/>' +
    '<circle cx="21" cy="34" r="6.5" fill="' + tile + '" stroke="#2C9CCD" stroke-width="4"/></svg>';
});
