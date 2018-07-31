import './import-jquery'
import 'bootstrap'
import './slideshow'

import AOS from 'aos'
// import 'aos/dist/aos.css'
// GitHub: https://github.com/michalsnik/aos

window.addEventListener('load', () => {
    AOS.init()
})

const footerFixed = () => {

  let newDOM = document.createElement('div')
  let footerDOM = document.getElementById('footer')

  footerDOM.style.width = '100%'
  footerDOM.style.position = 'fixed'
  footerDOM.style.bottom = '0'

  newDOM.style.height = `${footerDOM.offsetHeight}px`

  window.addEventListener('resize',() => {
    newDOM.style.height = `${footerDOM.offsetHeight}px`;
  });

  document.body.insertBefore( newDOM, document.getElementById('footer'))
}

window.addEventListener('load', () => {
  footerFixed()
})
