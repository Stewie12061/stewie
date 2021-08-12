import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = ['primary']

  connect() {
    super.connect()
    this.onScroll();
  }

  initialize(){
    document.addEventListener('cable-ready:after-morph', this.reconnect.bind(this))
  }
  reconnect(){
    this.onScroll();
  }
  onScroll(){
    let self = this
    self.showTopBtn()
    window.addEventListener("scroll", function () {
      // when position > 117 will fix navbar
    self.showTopBtn()
    })
  }

  showTopBtn() {
    let scrollY = window.scrollY;
    if (scrollY >= 800) {
      document.getElementById("go-top").classList.remove('d-none');
    }

    if (scrollY == 0) {
      document.getElementById("go-top").classList.add('d-none');
    }
    this.navbarWillFixed(scrollY)
  }

  gotoTop(event) {
    event.preventDefault();
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  navbarWillFixed(scrollY) {
    let classes = document.querySelector("#navbar_main").classList;
    if (scrollY >= 120) {
      classes.add('navbar-fixed');
    } else {
      classes.remove('navbar-fixed');
    }
  }
}