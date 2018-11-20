updateScroll = (() => {
  messages = document.getElementById('messages');
  messages.scrollTop = messages.scrollHeight;
});

updateScroll();
