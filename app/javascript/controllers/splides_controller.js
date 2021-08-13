import ApplicationController from './application_controller'
import Splide from '@splidejs/splide'


/* This is the custom StimulusReflex controller for the Lang Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
    static targets = ['slide']

    connect () {
        this.initialize()
    }

    initialize(){
        new Splide('.splide', {
            autoplay: true,
            interval: 3000,
            type: 'slide',
            arrows: false
        }).mount(); 
    }
}
