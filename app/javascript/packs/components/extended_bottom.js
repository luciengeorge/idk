// MESSAGE BOX

msgBox = document.getElementById('message_body');
msgButton = document.querySelector('.msg-button');

if(msgBox) {
  msgBox.addEventListener('keyup', (event) => {
    msgBox.style.height = `1px`
    msgBox.style.height = `${msgBox.scrollHeight}px`
    msgButton.style.bottom = `2px`
    if (msgBox.scrollHeight > 35) {
      msgBox.style.borderRadius = `17px`
    } else {
      msgBox.style.borderRadius = `25px`
    }
    console.log('who dis?');
  })

  originalMargin = document.querySelector('.form-div').style.margin
  msgBox.addEventListener('focus', () => {
    document.querySelector('.form-div').style.margin = `13px 0`
  })

  msgBox.addEventListener('blur', () => {
    document.querySelector('.form-div').style.margin = `${originalMargin}`
  })

  if (navigator.standalone) {
    document.querySelector('.form-div').classList.toggle('form-div-iphone')
  }
}

// EVENT LINKS
cardLinks = document.querySelector('.card-links')
if (cardLinks && navigator.standalone) {
  document.querySelector('.card-links').classList.toggle('card-links-iphone');
}

// HOME BOTTOM BAR

footer = document.querySelectorAll('.footer-links')
if (footer && navigator.standalone) {
  footer.forEach((section) => {
    section.classList.toggle('home-bar-iphone');

  })
}
