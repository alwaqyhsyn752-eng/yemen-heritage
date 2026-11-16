(() => {
  const yearEl = document.getElementById("year");
  if (yearEl) {
    yearEl.textContent = new Date().getFullYear();
  }
  console.log("[Yemen Heritage] Phase 1 ready.");
})();
