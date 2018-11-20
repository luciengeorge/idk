const updateScroll = (() => {
  const messages = document.getElementById('messages');
  messages.scrollTop = messages.scrollHeight;
});

updateScroll();
