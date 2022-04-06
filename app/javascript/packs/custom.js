document.addEventListener('turbolinks:load', () => {

  console.log('test')

  // スムーススクロール
document.querySelectorAll('a[href^="#"]').forEach(link => {
  link.addEventListener('click', function(e) {
    e.preventDefault();
    const header = document.getElementById('header').clientHeight,
          id = this.getAttribute('href');
    let position = 0;
    if(id !== "#") {
      position = window.pageYOffset + document.querySelector(id).getBoundingClientRect().top - header;
    }

    window.scrollTo({
      top: position,
      behavior: 'smooth'
    })

    //ハンバーガーメニューを押したらスクロールして消える
    if (document.getElementById('hamburger__content').classList.contains('active')) {
          document.getElementById('hamburger__icon').classList.remove('active')
          document.getElementById('hamburger__content').classList.remove('active')
          document.getElementById('hamburger__background').classList.remove('active')
    }

  })
})

//メニューの表示非表示
document.getElementById('hamburger__icon').addEventListener('click', function() {
  this.classList.toggle('active')
  document.getElementById('hamburger__content').classList.toggle('active')
  document.getElementById('hamburger__background').classList.toggle('active')
})

})