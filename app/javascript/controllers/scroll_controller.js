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
    this.navbarChangeColor(scrollY)
    this.navbarLogoChange(scrollY)
    this.navbarTextChange(scrollY)
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
  navbarChangeColor(scrollY) {
    let classes = document.querySelector("#navbar_main").classList;
    if (scrollY >= 120) {
      classes.add('bg-stewie');
      classes.remove('bg-light');
    } else {
      classes.remove('bg-stewie');
      classes.add('bg-light');
    }
  }
  navbarLogoChange(scrollY){
    let classes = document.querySelector("#navbar_logo").classList;
    if (scrollY >= 120) {
      classes.add('bg-logo');
    } else {
      classes.remove('bg-logo');
    }
  }
  navbarTextChange(scrollY){
    let classes = document.querySelector("#navbar_main").classList;
    if (scrollY >= 120) {
      classes.add('navbar-dark');
      classes.remove('navbar-light');
    } else {
      classes.remove('navbar-dark');
      classes.add('navbar-light');
    }
  }

}