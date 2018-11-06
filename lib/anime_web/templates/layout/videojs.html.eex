<style>
.video-js .vjs-play-control,
.video-js .vjs-remaining-time,
.video-js .vjs-volume-menu-button {
  border-right: 1px solid #323232;
}
    
.video-js .vjs-menu-button-inline.vjs-slider-active,.video-js .vjs-menu-button-inline:focus,.video-js .vjs-menu-button-inline:hover,.video-js.vjs-no-flex .vjs-menu-button-inline {
    width: 10em;
}

.video-js .vjs-controls-disabled .vjs-big-play-button {
    display: none!important;
}

.video-js .vjs-control {
    width: 3em;
}

.video-js .vjs-menu-button-inline:before {
    width: 1.5em;
}

.vjs-menu-button-inline .vjs-menu {
    left: 3em;
}

.vjs-paused.vjs-has-started.video-js .vjs-big-play-button,.video-js.vjs-ended .vjs-big-play-button,.video-js.vjs-paused .vjs-big-play-button {
    display: block;
}

.video-js .vjs-load-progress div,.vjs-seeking .vjs-big-play-button,.vjs-waiting .vjs-big-play-button {
    display: none!important;
}

.video-js .vjs-mouse-display:after,.video-js .vjs-play-progress:after {
    padding: 0 .4em .3em;
}

.video-js.vjs-ended .vjs-loading-spinner {
    display: none;
}

.video-js.vjs-ended .vjs-big-play-button {
    display: block !important;
}

video-js.vjs-ended .vjs-big-play-button,.video-js.vjs-paused .vjs-big-play-button,.vjs-paused.vjs-has-started.video-js .vjs-big-play-button {
    display: block;
}

.video-js .vjs-big-play-button {
    top: 50%;
    left: 50%;
    margin-left: -1.5em;
    margin-top: -1em;
}

.video-js .vjs-big-play-button {
    background-color: rgba(0,0,0,0.35);
    font-size: 3.5em;
    border-radius: 50%;
    height: 2em !important;
    line-height: 2em !important;
    margin-top: -1em !important;
}

.video-js:hover .vjs-big-play-button,.video-js .vjs-big-play-button:focus,.video-js .vjs-big-play-button:active {
    background-color: rgba(0,0,0,0.35);
}

.video-js .vjs-loading-spinner {
    border-color: rgba(255,255,255,0.7);
}

.video-js .vjs-control-bar2 {
    background-color: transparent;
}

.video-js .vjs-control-bar {
    background-color: rgba(38, 38, 38, 0.8) !important;
    width: auto;
    left: 1em;
    right: 1em;
    bottom: 2em;
    color: #ffffff;
    font-size: 15px;
    display: flex;
    border-radius: 0.5em;
}

.video-js .vjs-control-bar:hover .vjs-progress-control {
  opacity: 1;
  top: -2.5em;
}
.video-js .vjs-control-bar .vjs-menu {
  z-index: 2;
  height: 100%;
}

.video-js.vjs-fullscreen .vjs-control-bar {
  bottom: 4em;
  font-size: 18px;
}

/* Slider - used for Volume bar and Progress bar */
.video-js .vjs-slider {
  background-color: #2e2e2e;
  background-color: rgba(46, 46, 46, 0.8);
  border-radius: 1em;
}

.video-js .vjs-remaining-time {
  flex: 1;
  text-align: left;
}

.video-js .vjs-current-time {
  display: block;
  position: absolute;
  right: 0;
  top: -2.5em;
}

.video-js .vjs-progress-control {
  position: absolute;
  left: 0;
  right: 0;
  width: 100%;
  padding: 0 4em 0 0.4em;
  top: -2.3em;
  border-radius: 1em;
  transition: top 150ms linear, opacity 150ms linear, transform 150ms linear, -webkit-transform 150ms linear, -moz-transform 150ms linear, -o-transform 150ms linear;
  z-index: 1;
  opacity: 0;
}

.video-js .vjs-play-progress, .video-js .vjs-volume-level {
  color: #b7090b;
  background: #b7090b;
}

.video-js .vjs-big-play-button {
    height: 2em !important;
    width: 2em !important;
    line-height: 1.9em !important;
    margin-top: -1em !important;
    margin-left: -1em;
    border-width: 3px;
}

.video-js .vjs-icon-play:before, .video-js .vjs-big-play-button:before {
    font-size: 50px;
}

.video-js  .vjs-progress-holder {
    font-size: 1.7em;
    border-radius: 10px;
}

.video-js .vjs-progress-holder .vjs-play-progress, .video-js .vjs-progress-holder .vjs-load-progress, .video-js .vjs-progress-holder .vjs-load-progress div, .video-js .vjs-slider,.vjs-volume-level {
    border-radius: 10px;
}

.video-js .vjs-load-progress {
    background: rgba(255,255,255,0.5);
}

.video-js .vjs-time-control {
  padding-left: 0.5em !important;
}

.vjs-text-track-display {
  position: absolute;
  bottom: 3em;
  left: 0;
  right: 0;
  top: 0;
  pointer-events: none; }

.video-js.vjs-user-inactive.vjs-playing .vjs-text-track-display {
  bottom: 2em; 
}

.video-js .vjs-text-track {
  font-size: 1.4em;
  text-align: center;
  margin-bottom: 5em;
  background-color: transparent !important;
}

/* The load progress bar also has internal divs that represent
   smaller disconnected loaded time ranges */
.video-js .vjs-load-progress div {
  /* For IE8 we'll lighten the color */
  background: #3a3a3a;
  /* Otherwise we'll rely on stacked opacities */
  background: rgba(46, 46, 46, 0.75);
  border-radius: 1em;
  height: 0.9em !important;
}

.vjs-loading-spinner {
  border: none;
  opacity: 0;
  visibility: hidden;
  animation: vjs-spinner-fade-out 2s linear 1;
  animation-delay: 2s;
}
.vjs-loading-spinner:before, .vjs-loading-spinner:after {
  border: none;
}
.vjs-loading-spinner:after {
  background-image: url(/images/site-spinner.png);
  background-repeat: no-repeat;
  background-position-x: 50%;
  background-position-y: 50%;
  -moz-background-size: 100%;
  -o-background-size: 100%;
  background-size: 100%;
}

.vjs-seeking .vjs-loading-spinner:after,
.vjs-waiting .vjs-loading-spinner:after {
  animation: vjs-spinner-spin 1.1s linear infinite, vjs-spinner-fade 1.1s linear 1 !important;
  animation-delay: 2s;
}

.vjs-seeking .vjs-loading-spinner,
.vjs-waiting .vjs-loading-spinner {
  opacity: 1;
  visibility: visible;
  animation: vjs-spinner-fade-in 2s linear 1;
  animation-delay: 2s;
}

@keyframes vjs-spinner-fade-in {
  0% {
    opacity: 0;
    visibility: visible;
  }
  100% {
    opacity: 1;
    visibility: visible;
  }
}
@keyframes vjs-spinner-fade-out {
  0% {
    opacity: 1;
    visibility: visible;
  }
  100% {
    opacity: 0;
    visibility: visible;
  }
}
</style>
