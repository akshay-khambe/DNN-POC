var csstemplate = {
	"button-01": `
	body .button-01,
	body .button-01:link,
	body .button-01:active,
	body .button-01:visited,
	body .button-01[type="button"],
	body .button-01[type="submit"] {
		display: inline-block;
		font-size: 16px;
		color: #fff;
		padding: 0 30px;
		background-color: var(--button-color);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	body .button-01 * {
		color: #fff;
	}
	body .button-01:hover{
		background-color: var(--button-hover-color);
	}	
	`,
	"button-02": `
	body .button-02,
	body .button-02:link,
	body .button-02:active,
	body .button-02:visited,
	body .button-02[type="button"],
	body .button-02[type="submit"] {
		width: 48px;
		height: 48px;
		margin: 0;
		padding: 0;
		font-size: 16px;
		color: #fff;
		z-index: 1;
		display: inline-flex;
		justify-content: center;
		align-items: center;
	}
	body .button-02::after{
		content: "";
		position: absolute;
		left: 0;
		top: 0;
		border-radius: 40%;
		opacity: 1;
		border: #FFF 24px solid;
		border-color: var(--button-color);
		-webkit-transform: rotate(45deg);
		transform: rotate(45deg);
		z-index: -1;
		-webkit-animation: button-02 10s linear infinite paused;
		animation: button-02 10s linear infinite paused;
		transition: border-color .3s cubic-bezier(0.22, 0.61, 0.36, 1);

	}
	body .button-02:hover::after{
		-webkit-animation-play-state:running;
		animation-play-state:running;
		border-color: var(--button-hover-color);
	}
	@-webkit-keyframes button-02 {
		0% {
			-webkit-transform: rotate(45deg);
		}
		100% {
			-webkit-transform: rotate(405deg);
		}
	}

	@keyframes button-02 {
		100% {
			transform: rotate(405deg);
		}
	}`,
	"button-03": `body .button-03,
	body .button-03:link,
	body .button-03:active,
	body .button-03:visited,
	body .button-03[type="button"],
	body .button-03[type="submit"] {
		display: inline-block;
		font-size: 18px;
		color: #333333;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		padding: 0;
	}
	body .button-03 i{
		width: 60px;
		height: 60px;
		cursor: pointer;
		box-shadow: 0 0 30px rgba(0,0,0,.15);
		border-radius: 50%;
		vertical-align: middle;
		margin: 0 20px 5px 0;
		color: var(--button-color);
		font-size: 16px;
		text-indent: 5px;
		background-color: #ffffff;
	}
	body .button-03 i *{
		color: var(--button-color);
	}
	`,
	"button-04": `body .button-04,
	body .button-04:link,
	body .button-04:active,
	body .button-04:visited,
	body .button-04[type="button"],
	body .button-04[type="submit"] {
	  color: #333333;
	  display: inline-block;
	  color: #ffffff;
	  background-color: var(--button-color);
	  overflow: hidden;
	  box-shadow: 0px 5px 10px 0px rgba(0,0,0,.2);
	  -webkit-transition-property: all;
	  transition-property: all; 
	  -webkit-transition-duration: .3s;
	  transition-duration: .3s;
	  -webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
	  transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
	  -webkit-transition-delay: 0s;
	  transition-delay: 0s;
	}
	.button-04 span{
		display: inline-block;
		color: inherit;
		font-size: 16px;
		font-weight: 700;
	
		-webkit-transition-property: all;
		transition-property: all; 
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}
	.button-04 i{
		width: 36px;
		height: 36px;
		line-height: 36px;
		font-size: 12px;
		text-align: center;
		vertical-align:  middle;
		color: var(--button-color);
		background-color: #ffffff;
		border-radius: 50%;
	
		-webkit-transition-property: all;
		transition-property: all; 
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}
	.button-04 i:last-child{
		margin-left: 4px;
		transform:translateX(18px);
		opacity: 1;
		visibility: visible;
	}
	body .button-04:hover{
		background: var(--button-hover-color);
	}
	body .button-04:hover i{
		color: var(--button-hover-color);
	}
	`,
	"button-05": `body .button-05{
		position: relative;
		display: inline-flex;
		align-items: center;
		height: auto;
		padding: 0;
		color: inherit;
		font-size: 16px;
		line-height: inherit;
	}
	.button-05 span{
		display: inline-flex;
		margin-right: 26px;
		justify-content: center;
		align-items: center;
	
		width: 54px;
		height: 54px;
		color: #ffffff;
		background-color: var(--button-color);
		-webkit-border-radius: 50%;
		border-radius: 50%;
		position:relative;
		font-size: 12px;
		z-index:2;
	}
	.button-05 span i{
		position: relative;
	}
	body .button-05:link,
	body .button-05:active,
	body .button-05:visited,
	body .button-05:hover{
		color: inherit;
	}
	@-webkit-keyframes button-05 {
		0% {
			opacity: .8;
			-webkit-transform: scale(1);
			transform: scale(1);
		}
		75% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		}
		100% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		} 
	}
	@keyframes button-05 {
		0% {
			opacity:.8;
			-webkit-transform: scale(1);
			transform: scale(1);
		}
		75% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		}
		100% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		}
	}
	
	.button-05 span::before,
	.button-05 span::after{
		content:"";
		position:absolute;
		top:0;
		left:0;
		right:0;
		bottom:0;
		background-color: inherit;
		border-radius: 50%;
		opacity: 0.2;
		z-index: -1;
	}
	.button-05 span::before{
		-webkit-animation: button-05 2s infinite 0.25s;
		animation: button-05 2s infinite 0.25s;
	}
	.button-05 span::after{
		-webkit-animation: button-05 2s infinite 0.5s;
		animation: button-05 2s infinite 0.5s;
	}`,
	"button-06": `body .button-06,
	body .button-06:link,
	body .button-06:active,
	body .button-06:visited,
	body .button-06[type="button"],
	body .button-06[type="submit"] {
		color: var(--button-color);
		display: inline-block;
		background-color: #ffffff;
		overflow: hidden;
		box-shadow: 0px 5px 10px 0px rgba(0,0,0,.2);
		-webkit-transition-property: all;
		transition-property: all; 
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}
	body .button-06 i{
		color: currentColor;
		font-size: 1.3em;
		vertical-align: text-top;
		padding-left: 8px;
	}
	
	`,
	"button-07": `body .button-07,
	body .button-07:link,
	body .button-07:active,
	body .button-07:visited,
	body .button-07[type="button"],
	body .button-07[type="submit"] {
		color: #ffffff;
		display: inline-flex;
		background-color: var(--button-color);
		overflow: hidden;
		font-size: 16px;
		border-radius: 3px;
		padding: 0;
	
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .button-07 span{
		padding: 0 28px;
	}
	body .button-07 i{
		font-size: 1.2em;
		padding: 0 15px;
		background: rgba(255,255,255,.25);
		line-height: 50px;
		
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .button-07:hover{
		background-color: var(--button-hover-color);
	}
	body .button-07:hover i{
		background: var(--button-color);
	}`,
	"button-08": `body .button-08{
		margin: 0px 30px 15px 0;
		border-bottom: 1px solid #9a9a9a;
		position: relative;
	}
	body .button-08,
	body .button-08:link,
	body .button-08:active,
	body .button-08:visited,
	body .button-08[type="button"],
	body .button-08[type="submit"] {
		color: #666666;
		display: inline-flex;
		font-size: 16px;
		padding: 0 2px;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		height: 34px;
		line-height: 34px;
		border-radius: 0;
	}
	body .button-08 span{
		padding: 0 28px;
	}
	body .button-08 i{
		font-size: 1.2em;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		line-height: inherit;
		margin-left: 10px;
		vertical-align: middle;
	}
	body .button-08::after{
		content: "";
		position: absolute;
		left: 0;
		right: 100%;
		border-bottom: 1px solid #272727;
		bottom: -1px;
		transition: right 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000);
	}
	body .button-08:hover::after{
		right: 0;
	}
	
	.button-08:last-child{
		margin-right: 0
	}`,
	"button-09": `body .button-09,
	body .button-09:link,
	body .button-09:active,
	body .button-09:visited,
	body .button-09[type="button"],
	body .button-09[type="submit"] {
		color: #ffffff;
		display: inline-block;
		overflow: hidden;
		border:2px solid currentColor;
		line-height: 46px;
		padding: 0 30px;
	}
	body .button-09 i{
		color: currentColor;
		font-size: 1.3em;
		vertical-align: text-top;
		padding-left: 8px;
	}`,
	"button-10": `body .button-10,
	body .button-10:link,
	body .button-10:active,
	body .button-10:visited,
	body .button-10[type="button"],
	body .button-10[type="submit"] {
		color: #ffffff;
		display: inline-block;
		padding: 0 0px 0 9px;
	}
	body .button-10 i{
		color: var(--button-color);
		font-size: 12px;
		vertical-align: text-top;
		padding-left: 2px;
		width: 35px;
		height: 35px;
		line-height: 35px;
		text-align: center;
		background-color: #FFF;
		border-radius: 50%;
		margin-right: 20px;
		vertical-align: middle;
		position: relative;
		margin-bottom: 3px;
	}
	body .button-10 i::after{
		content: "";
		top: -8px;
		left: -8px;
		right: -8px;
		bottom: -8px;
		position: absolute;
		background-color: rgba(255,255,255,.2);
		border-radius: 50%;
	}`,
	"button-11": `body .button-11,
	body .button-11:link,
	body .button-11:active,
	body .button-11:visited,
	body .button-11[type="button"],
	body .button-11[type="submit"] {
		color: #ffffff;
		display: inline-block;
		padding: 0;
		width: 42px;
		height: 42px;
		text-align: center;
		background-color: var(--button-color);
		box-shadow: 0 0 12px var(--button-color);
		-webkit-transition:all .3s cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition:all .3s cubic-bezier(0.420, 0.000, 1.000, 1.000);
		text-indent: 4px;
		font-size: 18px;
	}
	body .button-11:hover{
		background-color: var(--button-hover-color);
	}`,
	"button-12": `body .button-12,
	body .button-12:link,
	body .button-12:active,
	body .button-12:visited,
	body .button-12[type="button"],
	body .button-12[type="submit"] {
		display: inline-block;
		font-size: 16px;
		color: #fff;
		padding: 0 30px;
		background-color: var(--button-color);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		box-shadow: 0 0 8px var(--button-color);
	}
	body .button-12 * {
		color: #fff;
	}
	body .button-12:hover{
		background-color: var(--button-hover-color);
	}
	body .button-12.bg-accent {
		box-shadow: 0 0 12px var(--accent-color);
	}

	body .button-12.bg-accent2 {
		box-shadow: 0 0 12px var(--accent-color2);
	}

	body .button-12.bg-accent3 {
		box-shadow: 0 0 12px var(--accent-color3);
	}

	body .button-12.bg-accent4 {
		box-shadow: 0 0 12px var(--accent-color4);
	}
	`,
	"button-13": `body .button-13,
	body .button-13:link,
	body .button-13:active,
	body .button-13:visited,
	body .button-13[type="button"],
	body .button-13[type="submit"] {
		display: inline-block;
		font-size: 16px;
		color: #fff;
		padding: 0 30px;
		background-color: var(--button-color);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		box-shadow: 0 0 8px rgba(0,0,0,.2);
	}
	body .button-13 * {
		color: #fff;
	}
	body .button-13:hover{
		background-color: var(--button-hover-color);
	}
	body .button-13 i{
		vertical-align: middle;
		margin-right: 10px;
		font-size: 1.4em;
		margin-bottom: 4px;
	}
	`,
	"button-14": `body .button-14 {
		position: relative;
	}
	body .button-14,
	body .button-14:link,
	body .button-14:active,
	body .button-14:visited,
	body .button-14[type="button"],
	body .button-14[type="submit"] {
		display: inline-block;
		font-size: 16px;
		color: #fff;
		padding: 0 30px;
		background-color: var(--button-color);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}

	body .button-14:after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		pointer-events: none;
		box-shadow: -4px 3px 16px var(--button-color);
		border-radius: 50px;
		opacity: 0.3;
		mix-blend-mode: multiply;
	}

	body .button-14:hover {
		background-color: var(--button-hover-color);
	}

	body .button-14.bg-accent:after {
		box-shadow: -4px 3px 16px var(--accent-color);
	}

	body .button-14.bg-accent2:after {
		box-shadow: -4px 3px 16px var(--accent-color2);
	}

	body .button-14.bg-accent3:after {
		box-shadow: -4px 3px 16px var(--accent-color3);
	}

	body .button-14.bg-accent4:after {
		box-shadow: -4px 3px 16px var(--accent-color4);
	}

	body .button-14 * {
		color: #fff;
	}

	body .button-14 i {
		vertical-align: sub;
		margin-right: 10px;
		font-size: 1.4em;
	}

	body .button-14:after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		pointer-events: none;
		box-shadow: -4px 3px 16px var(--button-color);
		border-radius: 50px;
		opacity: 0.3;
		mix-blend-mode: multiply;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}

	body .button-14:hover {
		background-color: var(--button-hover-color);
	}

	body .button-14:hover:after {
		opacity: 0.6;
	}
	`,
	"play-button": `
	.play-button{
		position: relative;
		display: inline-block;
		width: 72px;
		height: 72px;
		color: var(--button-color);
	}
	.play-button span{
		display: inline-flex;
		justify-content: center;
		align-items: center;
	
		width: 72px;
		height: 72px;
		background-color: #ffffff;
		-webkit-border-radius: 50%;
		border-radius: 50%;
		position:relative;
		font-size: 21px;
		z-index:2;
	}
	.play-button span i{
		position: relative;
	padding-left:4px;
	}
	.play-button:link,
	.play-button:active,
	.play-button:visited,
	.play-button:hover{
		color: var(--button-color);
	}
	@-webkit-keyframes paly-button {
		0% {
			opacity: .8;
			-webkit-transform: scale(1);
			transform: scale(1);
		}
		75% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		}
		100% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		} 
	}
	@keyframes paly-button {
		0% {
			opacity:.8;
			-webkit-transform: scale(1);
			transform: scale(1);
		}
		75% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		}
		100% {
			opacity: 0;
			-webkit-transform: scale(1.5);
			transform: scale(1.5);
		}
	}
	.play-button::before,
	.play-button::after,
	.play-button span::before,
	.play-button span::after{
		content:"";
		position:absolute;
		top:0;
		left:0;
		right:0;
		bottom:0;
		background-color: inherit;
		border-radius: 50%;
		opacity: 0.2;
		z-index: -1;
	}
	.play-button::before{
		-webkit-animation: paly-button 2s infinite 0s;
		animation: paly-button 2s infinite 0s;
	}
	.play-button::after{
		-webkit-animation: paly-button 2s infinite 0.15s;
		animation: paly-button 2s infinite 0.15s;
	}
	.play-button span::before{
		-webkit-animation: paly-button 2s infinite 0.25s;
		animation: paly-button 2s infinite 0.25s;
	}
	.play-button span::after{
		-webkit-animation: paly-button 2s infinite 0.5s;
		animation: paly-button 2s infinite 0.5s;
	}
	`,
	"play-button2": `
  
	.play-button2 {
		display: inline-block;
		width: 75px;
		height: 75px;
		line-height: 75px;
		border-radius: 50%;
		text-align: center;
		position: relative;
		cursor: pointer;
		-webkit-transform: scale(0.9);
		transform: scale(0.9);
		transition: all 400ms ease-in-out!important;
		transition-delay: 200ms;
		position: absolute;
		top: 50%;
		left: 50%;
		margin: -38px 0 0 -38px;
	}
	
	.play-button2:hover {
		-webkit-transform: scale(1);
		transform: scale(1);
		transition-delay: 0ms;
	}
	.play-button2 .icon {
		border: 8px solid transparent;
		border-left-color: #ffffff;
		border-right: none;
		display: inline-block;
		width: 0;
		height: 0;
		margin-right: -2px;
		vertical-align: middle;
		backface-visibility: hidden;
	}
	
	@-webkit-keyframes playrotate {
		0% {
			-webkit-transform: rotate(0);
		}
		100% {
			-webkit-transform: rotate(360deg);
		}
	}
	
	@keyframes playrotate {
		0% {
			transform: rotate(0);
		}
		100% {
			transform: rotate(360deg);
		}
	}
	
	@-webkit-keyframes playrotate2 {
		0% {
			-webkit-transform: rotate(0);
		}
		100% {
			-webkit-transform: rotate(-360deg);
		}
	}
	
	@keyframes playrotate2 {
		0% {
			transform: rotate(0);
		}
		100% {
			transform: rotate(-360deg);
		}
	}
	
	.play-button2::after {
		content: "";
		position: absolute;
		top: -20px;
		left: -20px;
		right: -20px;
		bottom: -20px;
		border: 2px solid rgba(255, 255, 255, 0.4);
		border-radius: 50%;
		border-left-color: transparent;
		-webkit-animation: playrotate 1.2s linear infinite;
		animation: playrotate 1.2s linear infinite;
	}
	
	.play-button2::before {
		content: "";
		position: absolute;
		top: -36px;
		left: -36px;
		right: -36px;
		bottom: -36px;
		border: 1px solid rgba(255, 255, 255, 0.3);
		border-radius: 50%;
		border-bottom-color: transparent;
		-webkit-animation: playrotate2 1.2s linear infinite;
		animation: playrotate2 1.2s linear infinite;
	}
	
	.play-button2::after,
	.play-button2::before {
		opacity: 0;
		transition: opacity 400ms ease-in-out;
	}
	
	.play-button2:hover::after,
	.play-button2:hover::before {
		opacity: 1;
		transition-delay: 200ms;
	}
	`,
	"title-01": `.title-01{
		position: relative;
		margin: 0 0 23px;
	}
	.title-01 span{
		position: relative;
		display: inline-block;
		line-height: 0.75;
	}
	.title-01 span::after{
		content: "";
		display: block;
		position: absolute;
		top: 100%;
		left: 0;
		right: 0;
		height: 2px;
		background-color: currentColor;
	}`,
	"title-02": `
	.title-02{
		margin: 0 0 36px;
		padding-bottom: 19px;
		position: relative;
		text-align: center;
	}
	.title-02 small{
		color: var(--accent-color);
		font-size: 18px;
		padding-bottom: 10px;
		display: inline-block;
	}
	.title-02::after{
		content: "";
		color: var(--accent-color);
		position: absolute;
		bottom: 0;
		width: 40px;
		margin-left: -20px;
		left: 50%;
		height: 3px;
		box-shadow: 33px 2px 0px -1px currentColor,-33px 2px 0px -1px currentColor;
		font-size: 16px;
	}
	.title-02::before {
		content: "";
		position: absolute;
		bottom: -2px;
		color: var(--accent-color);
		border-left: 1px solid currentColor;
		border-bottom: 1px solid currentColor;
		width: 10px;
		height: 10px;
		left: 50%;
		transform: rotate(-45deg);
		margin-left: -4px;
		backface-visibility: hidden;
	}
	.title-02.text-left::after{
		left:0;
		margin:0 0 0 32px;
	}
	.title-02.text-right::after{
		right:0;
		left: auto;
		margin:0 32px 0 0;
	}
	`,
	"title-03": `
	.title-03{
		margin: 0 0 30px;
		position: relative;
	}
	.title-03 small{
		color: var(--accent-color);
		font-size: 18px;
		padding-bottom: 9px;
		display: inline-block;
	}
	.title-03::after{
		content: "";
		display: inline-block;
		border-bottom: 1px solid var(--accent-color);
		width: 50px;
		height: 2px;
		margin-bottom: 0px;
	}`,
	"title-04": `
	.title-04 {
		margin-bottom: 47px;
	}
	.title-04 small{
		color: var(--accent-color);
		font-size: 16px;
		margin-bottom: 8px;
		display: inline-block;
		font-weight: 700;
	}
	.title-04 small::before{
		content: "";
		width: 30px;
		display: inline-block;
		border-bottom: 1px solid currentColor;
		vertical-align: middle;
		margin: 0 20px 3px 0;
	}
	.title-04 span{
		color: var(--accent-color);
	}
	.title-04 h3{
		font-weight: 600;
	}
	
	`,
	"title-05": `
	.title-05 {
		margin:0 auto 59px;
		text-align: center;
	
	}
	.title-05 small{
		color: var(--accent-color);
		font-size: 16px;
		margin-bottom: 18px;
		display: inline-block;
		font-weight: 700;
	}
	.title-05 small::before,
	.title-05 small::after{
		content: "";
		width: 30px;
		display: inline-block;
		border-bottom: 1px solid currentColor;
		vertical-align: middle;
		margin: 0 20px 3px 0;
	}
	.title-05 small::after{
		margin: 0 0px 3px 20px;
	}
	.title-05 span{
		color: var(--accent-color);
	}
	
	`,
	"title-07": `
	
	.title-07{
		margin-bottom: 37px;
	}
	.title-07 small{
		color: var(--accent-color);
		font-size: 20px;
		display: inline-block;
		margin-bottom: 10px;
		font-weight: 700;
	}
	 
	.title-07 h2{
		font-weight: 700;
	} 
	`,
	"title-08": `
	.title-08{
		margin-bottom: 52px;
	}
	.title-08 small{
		display: inline-block;
		margin-bottom: 6px;
		color:var(--accent-color);
		font-size: 18px;
		font-weight: 600;
	}
	.title-08 h1{
		margin-top: 16px;
	}
	.title-08 h2{
		font-weight: 700;
	}
	
	`,
	"title-09": `
	.title-09 {
		margin-bottom: 42px;
	}
	.title-09 small{
		display: inline-block;
		margin-bottom: 7px;
		font-size: 18px;
		font-weight: 600;
		color: #333333;
	}
	.is-light-text .title-09 small{
		color: #FFFFFF;
	}
	.title-09 small::before{
		content: "";
		width: 30px;
		display: inline-block;
		border-bottom: 2px solid var(--accent-color);
		vertical-align: middle;
		margin: 0 20px 3px 0;
	}
	`,
	"title-11": `
	.title-11{
		margin-bottom: 46px;
	}
	.title-11::before{
		content: "";
		display: inline-block;
		border-bottom: 2px solid var(--accent-color);
		width: 30px;
		margin-bottom: 7px;
	}
	.is-light-text .title-11::before{
		border-color: #FFF;
	}
	`,
	"title-13": `
	.title-13{
		position: relative;
		display: block;
		margin-bottom: 78px;
		padding-bottom: 10px;
	}
	.title-13 *{
		margin: 0;
	}
	.title-13 .line{
		position: absolute;
		top: 100%;
		left: 5px;
		width: 12px;
		height: 37px;
		border-left: 1px solid currentColor;
	}
	.title-13 .line::before,
	.title-13 .line::after{
		content: '';
		position: absolute;
		display: block;
		top: 0;
	}
	.title-13 .line::before{
		left: 4px;
		width: 1px;
		height: 24px;
		border-left: 1px solid currentColor;
	}
	.title-13 .line::after{
		left: 9px;
		width: 1px;
		height: 11px;
		border-left: 1px solid currentColor;
	}
	.title-13.text-center .line{
		left: 50%;
		-webkit-transform: translate3d(-50%,0,0);
		transform: translate3d(-50%,0,0);
	}
	`,
	"title-14": `
	.title-14 {
		margin-bottom: 28px;
		text-align: center;
	}
	.title-14 small{
		display: inline-block;
		margin-bottom: 4px;
		font-size: 18px;
		font-weight: 600;
		color: #333333;
	}
	.is-light-text .title-14 small{
		color: #FFFFFF;
	}
	.title-14::after{
		content: "";
		width: 30px;
		display: inline-block;
		border-bottom: 2px solid var(--accent-color);
		vertical-align: middle;
		margin: 0 0 2px 0;
	}
	.title-14.border-white::after{
		border-color:#FFF;
	}
	`,
	"title-15": `
	
	.title-15 {
		margin-bottom: 55px;
		text-align: center;
	}
	.title-15 > *{
		font-weight: 400;
		display: inline-block;
		padding: 0px 100px;
		display: inline-block;
		position: relative;
	}
	.title-15 > *::after,
	.title-15 > *::before{
		content: "";
		width: 68px;
		border-bottom: 1px solid #bfbfbf;
		left: 0;
		position: absolute;
		top: 50%;
	}
	.title-15 > *::before{
		left: auto;
		right: 0;
	}
	@media only screen and (max-width: 767px) {
		.title-15 > *{
			padding: 0px 50px;      
		}
		.title-15 > *::after,
		.title-15 > *::before{
			width: 40px;
		}
	}
	`,
	"title-16": `
	.title-16{
		margin-bottom: 12px;
	}
	.title-16 small{
		color: #666;
		font-size: 18px;
		margin-bottom: 8px;
		display: inline-block;
	}
	.title-16 small::after{
		content: "";
		border-bottom: 1px solid var(--accent-color);
		display: inline-block;
		width: 30px;
		margin-left: 10px;
		vertical-align: middle;
	
	}`,
	"title-17": `
	.title-17{
		margin-bottom: 29px;
	}
	.title-17::after{
		content: "";
		width: 16px;
		height: 2px;
		background-color: var(--accent-color);
		display: inline-block;
		margin:0 0 3px 10px;
		vertical-align: middle;
	}`,
	"title-18": `
	.title-18 {
		margin-bottom: 38px;
	}
	.title-18 span{
		position: relative;
		display: inline-block;
		white-space: nowrap;
		z-index: 2;
	}
	.title-18 small {
		display: inline-block;
		margin-bottom: 14px;
		font-size: 18px;
		font-weight: 700;
	}
	.title-18 span::after{
		content: "";
		position: absolute;
		bottom: 7px;
		left: 0px;
		right: 0px;
		border-bottom: 8px solid var(--accent-color);
		opacity: .6;
		z-index: -1;
	}
	`,
	"title-19": `
	.title-19{
		position: relative;
		margin: 0px 0 27px;
	}
	.title-19::after{
		content: ".\\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002 \\2002.";
		display: inline-block;
		text-decoration: line-through;
		-moz-text-decoration-style: wavy;
		text-decoration-style: wavy;
		text-decoration-color: var(--accent-color);
		font-size: 18px;
		line-height: 1;
		white-space: nowrap;
		text-indent: -7px;
		width: 50px;
		overflow: hidden;
		vertical-align: middle;
		margin-top: 8px;
		color: var(--accent-color);
	}
	.is-light-text .title-19:not(.border-accent)::after{
		text-decoration-color: #ffffff;
		color: #ffffff;
	}`,
	"title-20": `
	.title-20{
		position: relative;
		z-index: 1;
		padding:0 25px;
		margin-bottom: 53px;
	}
	.title-20::before{
		content: "";
		width: 50px;
		height: 58px;
		position: absolute;
		background: var(--accent-color);
		z-index: -1;
		margin:0 -25px;
		top: -8px;
		left: auto;
		right: auto;
	}
	.title-20::after{
		content: "";
		border-left: 2px solid #5f6377;
		height: 20px;
		margin: 19px -1px 0px ;
		position: absolute;
		left: auto;
		right: auto;
	}
	.title-20 .title{
	   margin: 0px -10px;
	}
	.is-align-center .title-20::before,
	.is-align-center .title-20::after,
	.title-20.text-center::before,
	.title-20.text-center::after{
		left: 50%;
	}
	.is-align-right .title-20::before,
	.is-align-right .title-20::after,
	.title-20.text-right::before,
	.title-20.text-right::after{
		right: 25px;
	}
	`,
	"title-21": `
	.title-21 {
		margin-bottom: 28px;
	}
	.title-21::after{
		content: "";
		width: 20px;
		display: inline-block;
		border-bottom: 2px solid var(--accent-color);
		vertical-align: middle;
		margin: -8px 0 0 0;
	}
	.is-light-text .title-21::after{
		border-bottom-color:#FFF;
	}	
	`,
	"title-22": `.title-22 {
		margin: 0 0 40px;
		position: relative;
	}
	.title-22 small{
		color: #FFF;
		height: 30px;
		font-size: 16px;
		line-height: 30px;
		padding: 0px 20px;
		display: inline-block;
		border-radius: 25px;
		display: inline-block;
		margin-bottom: 16px;
	}
	.title-22::after{
		content: "";
		width: 46px;
		display: inline-block;
		border-bottom:1px solid #d5d5d5;
		margin-top: 20px;
	}
	.title-22::before{
		content: "";
		width: 24px;
		display: inline-block;
		border-bottom:1px solid #d5d5d5;
		position: absolute;
		bottom: 0;
	}
	.title-22.text-center:before,
	.title-22.text-center:after{
		content:none;
	}
	.title-22 h3{
		font-weight: 600;
	}
	`,
	"title-23": `
	.title-23 span {
		position: relative;
		white-space: nowrap;
		z-index: 1;
	}

	.title-23 span::after {
		content: "";
		position: absolute;
		bottom: 8px;
		left: 0;
		right: 0;
		border-bottom: 8px solid;
		border-color: inherit;
		opacity: .7;
		z-index: -1;
	}

	.title-23 small {
		font-size: 20px;
		color: var(--accent-color3);
		font-weight: 700;
	}	
	`,
	"title-24": `
	.title-24 {
		color: #333;
		border-top: 1px solid #ebebeb;
		text-align: center;
		margin: 0 -90px;
	}

	.title-24 legend {
		width: auto;
		padding: 0px 20px;
		font-size: 16px;
	}
	`,
	"title-25": `
	.title-25::after,
    .title-25::before {
    	content: "";
    	width: 33px;
    	display: inline-block;
    	border-bottom: 1px solid #ebebeb;
    	margin: 0 20px;
    	vertical-align: middle;
    }
	`,
	"price-03": ` .price-03 {
        box-shadow: 0 0 15px rgba(0, 0, 0, .2);
        background-color: #ffffff;
        margin: 0px 0 60px;
    }

    .price-03 .price-box {
        height: 220px;
        position: relative;
        display: flex;
        justify-content: center;
        color: #FFF;
        flex-wrap: wrap;
        align-content: center;
        margin: 0px 0 8px;
    }

    .price-03 .price-box .pricing {
        font-size: 60px;
        line-height: 57px;
        font-weight: bold;
        padding: 0 25px 0 0;
        margin: 0 25px 0 0;
        border-right: 1px solid rgba(255, 255, 255, .6);
    }

    .price-03 .price-box .unit {
        font-size: 18px;
        line-height: 28px;
        text-align: left;
        font-weight: 600;
    }

    .price-03 .price-box .unit span {
        display: block;
    }

    .price-03 .price-box .price-title {
        width: 100%;
        text-align: center;
        font-size: 24px;
        color: #ffffff;
        font-weight: 600;
        margin: 13px 0 30px;
    }

    .price-03 .price-content .icon {
        font-size: 60px;
        text-align: center;
        color: #b2b2b2;
        margin-bottom: 23px;
    }

    .price-03 .price-features {
        padding: 0px 30px;
    }

    .price-03 .price-features ul {
        margin: 0;
        padding: 0;
    }

    .price-03 .price-features ul li {
        border-bottom: 1px dashed #e0e0e0;
        line-height: 28px;
        padding: 10px 0;
        font-size: 16px;
        color: #666666;
        text-align: center;
        font-weight: 500;
        list-style: none;
    }

    .price-03 .price-footer {
        text-align: center;
        padding: 50px 0;
    }

    @media only screen and (min-width: 1600px) {
        .price-03 .price-features {
            padding: 0px 35px;
        }
    }

    @media only screen and (max-width: 767px) {
        .price-03 {
            margin-bottom: 50px
        }

	}`,
	"price-04": `.price-04{
		background-color: #1e2049;
		border-top:5px solid #272a5d;
		padding: 40px 20px;
	margin-bottom: 20px;
		text-align: center;
	color:#FFF;
	}
	div.price-04 p{
		color: #d5d6df;
	}
	.price-04.active{
		border-top-color: var(--button-hover-color);
	}
	.price-04 .price-header::after{
		content: "";
		border-bottom:1px solid #5f6377;
		width: 50px;
		display: inline-block;
		margin: 18px 0px 33px;
	}
	.price-04 .price-title{
		margin: 2px 0 3px;color:#FFF;
	}
	.price-04 .price-features ul{
		margin: 0 0 50px;
		padding: 0;
		list-style: none;
	}
	.price-04 .price-features ul li{
		color: #d5d6df;
		font-size: 18px;
	}
	.price-04 .price-box{
		background-color: #272a5d;
		margin: 0px -20px;
		padding: 30px 0 21px;
		margin-bottom: 50px;
	}
	.price-04 .price-box .pricing{
		font-size: 48px;
		color: #ffffff;
		display: block;
		line-height: 1.2;
		font-weight: 600;
	}`,

	"price-05": `
	.price-05 {
        box-shadow: 0 0 20px rgba(0, 0, 0, .2);
        border-radius: 3px;
        text-align: center;
        border-bottom: 8px solid var(--accent-color);
        margin: 75px 0 40px;
        height: calc(100% - 115px);
    }

    .price-05 .price-header::before {
        content: "";
        display: block;
        width: 100%;
        clear: both;
        overflow: hidden;
    }

    .price-05 .price-box {
        width: 130px;
        height: 130px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-flow: column;
        border-radius: 50%;
        box-shadow: 3px 3px 12px rgba(0, 0, 0, .1);
        margin: -65px auto 0;
        background-color: #FFF;
        transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
        font-weight: 600;
    }

    .price-05 .pricing {
        font-size: 36px;
        color: var(--accent-color);
        font-weight: 700;
        line-height: 1;
        margin-top: 6px;
        margin-bottom: -4px;
        transition: color .3s cubic-bezier(0.22, 0.61, 0.36, 1);
    }

    .price-05 .pricing sup {
        font-size: 55%;
    }

    .price-05 .price-title {
        padding: 30px 0;
        border-bottom: 1px dashed #e2e2e2;
        font-size: 24px;
        margin: 0 38px;
        font-weight: 700;
        color: #272727;
    }

    .price-05 .price-features {
        padding: 15px;
    }

    .price-05 .price-features ul {
        margin: 0;
        padding: 20px 0;
        list-style: none;
    }

    .price-05 .price-features ul li {
        padding: 8px 0;
        font-size: 18px;
        color: #787878;
    }

    .price-05:hover .price-box {
        background-color: var(--accent-color);
        color: #FFF;
    }

    .price-05:hover .pricing {
        color: #FFF;
    }
	`,
	"price-01": `.price-01{
		box-shadow: 0 0 15px rgba(0,0,0,.2);
		background-color: #ffffff;
		margin: 0;
		border-radius: 2px;
		overflow: hidden;
	}
	.price-01 .price-box{
		height: 192px;
		position: relative;
		display: flex;
		justify-content: center;
		flex-wrap: wrap;
		align-content: center;
		margin: 0px 0 13px;
	}
	.price-01 .price-box .price-icon i{
		font-size: 42px;
		vertical-align: bottom;
	}
	.price-01 .price-box .price-title{
		width: 100%;
		text-align: center;
		font-size: 24px;
		font-weight: 600;
		margin: 10px 0 40px;
		color: #333333;
	}
	.price-01 .price-content .icon{
		font-size: 60px;
		text-align: center;
		color: #b2b2b2;
		margin-bottom: 23px;
	}
	.price-01 .price-features{
		padding: 0px 30px;
	}
	.price-01 .price-features ul{
		margin: 0;
		padding: 0;
	}
	.price-01 .price-features ul li{
		border-bottom: 1px dashed #e0e0e0;
		line-height: 28px;
		padding: 13px 0;
		font-size: 18px;
		text-align: center;
		list-style: none;
		color: #787878;
	}
	.price-01 .price-info{
		display: flex;
		justify-content: center;
		align-items: flex-end;
		margin-top: 33px;
	}
	.price-01 .price-info .pricing{
		font-size: 48px;
		line-height: 50px;
		font-weight: 600;
		color: #333333;
	}
	.price-01 .price-info .pricing sub{
		font-size: 41%;
		bottom: 0;
	}
	.price-01 .price-info .unit{
		font-size: 16px;
		line-height: 30px;
		text-align: left;
	}
	.price-01 .price-info .unit::before{
		content: '/';
		position: relative;
		display: inline-block;
		margin-right: 4px;
	}
	.price-01 .price-info .unit span{
		display: block;
	}
	.price-01 .price-footer{
		text-align: center;
		padding: 32px 0 57px;
	}
	@media only screen and (min-width: 1600px) {
		.price-01 .price-features{
			padding: 0px 35px;
		}	
	}
	@media only screen and (max-width: 991px) {
		.price-01{
			margin-bottom: 50px
		}
	}`,
	"price-01-list": `
    @media only screen and (min-width: 992px) {
        .price-01-list .column-01{
            transform: translateX(60px);
        }
        .price-01-list .column-02{
            z-index: 1;
        }
        .price-01-list .column-02 .price-01{
            transform: translateY(-40px);
        }
        .price-01-list .column-02 .price-01 .price-box{
            padding-top: 40px;
            height: 213px;
        }
        .price-01-list .column-02 .price-01 .price-box .price-title{
            margin-bottom: 58px;
        }
        .price-01-list .column-03{
            transform: translateX(-60px);
        }
    }
    @media only screen and (min-width: 768px) and (max-width: 991px){
        .price-01-list .price-01{
            height: calc( 100% - 50px);
        }
    }`,
	"price-02": `.price-02 {
        box-shadow: 0 0 20px rgba(0, 0, 0, .2);
        padding: 40px 40px 50px;
        margin-bottom: 20px;
		background-color: #FFF;
    }

    .price-02 .price-box .pricing {
        display: inline-block;
        font-size: 60px;
        font-weight: 600;
    }

    .price-02 .price-box .pricing sup {
        font-size: 38px;
    }

    .price-02 .price-box .unit {
        display: inline-block;
        font-size: 16px;
        letter-spacing: 6px;
    }

    .price-02 .price-box .icon {
        float: right;
        margin-top: 31px;
    }

    .price-02 .price-features {
        border-top: 1px dashed #e2e2e2;
        padding-top: 38px;
        margin-top: 39px;
    }

    .price-02 .price-features ul {
        margin: 0 0 43px;
        padding: 0;
        list-style: none;
    }

    .price-02 .price-features ul li {
        padding: 8px 0;
        font-weight: 600;
    }

    .price-02 .price-features ul li i {
        margin-right: 8px;
	}`,
	"price-06": `.price-06 {
		position: relative;
		overflow: visible;
		-webkit-perspective: 1000;
		-moz-perspective: 1000;
		perspective: 1000;
		text-align: left;
		width: 100%;
	
		margin-bottom: 30px;
	}
	
	.price-06 .front {
		padding: 40px;
		background: #ffffff;
		z-index: 0;
	
		-webkit-transform-style: preserve-3d;
		transform-style: preserve-3d;
	
		-webkit-transform: rotateY(0deg);
		transform: rotateY(0deg);
	
		transition: all 500ms ease-in-out;
		-webkit-transition: all 500ms ease-in-out;
	
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
	
		-webkit-box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.1);
		box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.1);
	}
	
	.price-06 .front .price-header {
		display: flex;
		justify-content: flex-start;
		align-items: center
	}
	
	.price-06 .front .price-header .price-pic {
		flex-shrink: 0;
		margin-right: 20px;
	}
	
	.price-06 .front .price-header .price-title * {
		margin: 5px 0;
		color: #333;
	}
	
	.price-06 .front .price-info {
		display: flex;
		justify-content: flex-start;
		align-items: flex-end;
		margin-top: 40px;
		padding-top: 18px;
		border-top: 1px solid #e8e8e8;
		margin-bottom: 32px;
		padding-bottom: 12px;
		border-bottom: 1px solid #e8e8e8;
	
	}
	
	.price-06 .front .price-info .pricing {
		font-size: 48px;
		line-height: 50px;
		font-weight: 700;
		color: var(--accent-color);
	}
	
	.price-06 .front .price-info .pricing sup {
		font-size: 41%;
		top: -1em;
	}
	
	.price-06 .front .price-info .unit {
		font-size: 16px;
		line-height: 30px;
		text-align: left;
		color: #787878;
	}
	
	.price-06 .front .price-info .unit::before {
		content: '/';
		position: relative;
		display: inline-block;
		margin-right: 4px;
	}
	
	.price-06 .front .price-info .unit span {
		display: block;
	}
	
	.price-06 .front .price-description {
		text-align: left;
	}
	
	.price-06 .front .price-description * {
		color: #787878;
	}
	
	.price-06 .front .price-btn {
		margin-top: 25px;
		margin-bottom: 17px;
		text-align: left;
	}
	
	.price-06 .front .price-btn p {
		margin: 0;
		color: var(--accent-color);
		font-size: 18px;
		font-weight: 600;
	}
	
	.price-06 .back {
		padding: 40px;
		background: var(--accent-color);
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		min-height: 100%;
		z-index: -2;
	
		-webkit-transform: rotateY(-180deg);
		transform: rotateY(-180deg);
	
		-webkit-transform-style: preserve-3d;
		transform-style: preserve-3d;
	
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
	
		transition: all 500ms ease-in-out;
		-webkit-transition: all 500ms ease-in-out;
	
		-webkit-box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.1);
		box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.1);
	}
	
	.price-06 .back .price-title {
		margin-top: 7px;
		margin-bottom: 19px;
	}
	
	.price-06 .back .price-title * {
		margin: 0;
		color: #ffffff;
	}
	
	.price-06 .back .price-features {
		padding: 0;
		margin-bottom: 30px;
		text-align: left;
	}
	
	.price-06 .back .price-features ul {
		margin: 0;
		padding: 0;
	}
	
	.price-06 .back .price-features ul li {
		line-height: 28px;
		padding: 7px 0;
		font-size: 16px;
		list-style: none;
		color: #ffffff;
	}
	
	.price-06 .back .price-features ul li i {
		margin-right: 10px;
	}
	
	.price-06 .back .price-btn {
		text-align: left;
	}
	
	.price-06:hover .front {
		-webkit-transform: rotateY(180deg);
		transform: rotateY(180deg);
	}
	
	.price-06:hover .back {
		-webkit-transform: rotateY(0deg);
		transform: rotateY(0deg);
		z-index: 3;
	}
	
	.cell-active .price-06 .front,
	.cell-active .price-06 .back {
		position: relative;
		-webkit-transform: rotateY(0deg) !important;
		transform: rotateY(0deg) !important;
	}

	`,
	"price-07": `.price-07 {
		position: relative;
		border-radius: 3px;
		text-align: center;
		margin: 75px 0 40px;
		background: #ffffff;
	}

	.price-07::before {
		content: '';
		position: absolute;
		display: block;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		border-radius: 3px;
		opacity: 0.1;
		background: var(--accent-color);
	}

	.price-07 .price-item {
		position: relative;
		padding-bottom: 50px;
	}

	.price-07 .price-header::before {
		content: "";
		display: block;
		width: 100%;
		clear: both;
		overflow: hidden;
	}

	.price-07 .price-box {
		position: relative;
		width: 120px;
		height: 120px;
		display: flex;
		justify-content: center;
		align-items: center;
		flex-flow: column;
		border-radius: 50%;
		margin: -65px auto 0;
		background-color: #FFF;
	}

	.price-07 .price-box::before {
		content: '';
		position: absolute;
		display: block;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		border-radius: 50%;
		opacity: 0.3;
		box-shadow: 0px 0px 17px var(--accent-color);
		z-index: 0;
	}

	.price-07 .price-box .price-image {
		position: relative;
		z-index: 1;
	}

	.price-07 .pricing {
		font-size: 36px;
		color: var(--accent-color2);
		font-weight: 700;
		line-height: 1;
	}

	.price-07 .unit {
		color: var(--accent-color2);
	}

	.price-07 .unit::before {
		content: '/';
		position: relative;
		display: inline-block;
		margin: 0 5px;
	}

	.price-07 .price-title {
		padding: 32px 0 0;
	}

	.price-07 .price-title * {
		color: #333;
		margin: 0;
		font-weight: 600;
	}

	.price-07 .price-description {
		padding-top: 2px;
	}

	.price-07 .price-description p {
		color: #787878;
	}

	.price-07 .price-description p:last-child {
		margin-bottom: 0;
	}

	.price-07 .price-features {
		position: relative;
		padding: 31px 15px 4px;
	}

	.price-07 .price-features::before {
		content: '';
		position: absolute;
		display: block;
		top: 24px;
		left: 50%;
		margin-left: -25px;
		width: 50px;
		height: 1px;
		background: var(--accent-color2);
	}

	.price-07 .price-features ul {
		margin: 0;
		padding: 20px 0;
		list-style: none;
	}

	.price-07 .price-features ul li {
		padding: 6px 0;
		font-size: 16px;
		color: #787878;
	}

	.price-07 .price-footer {
		padding-top: 32px;
	}

	.price-07 .button-price {
		display: inline-block;
		margin: 0;
		font-size: 16px;
		color: #fff;
		padding: 0 30px;
		background-color: var(--accent-color);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		position: relative;
	}

	.price-07 .button-price * {
		color: #fff;
	}

	.price-07 .button-price:after {
		content: "";
		position: absolute;
		width: 100%;
		height: 100%;
		pointer-events: none;
		opacity: 0.3;
		box-shadow: -4px 3px 16px var(--accent-color);
		mix-blend-mode: multiply;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		top: 0;
		left: 0;
		border-radius: 50px;
	}

	.price-07 .button-price:hover:after {
		opacity: 0.5;
	}

	.price-07.color1::before {
		background: var(--accent-color);
	}

	.price-07.color1 .price-box::before {
		box-shadow: 0px 0px 17px var(--accent-color);
	}

	.price-07.color1 .button-price {
		background-color: var(--accent-color);
		position: relative;
	}

	.price-07.color2::before {
		background: var(--accent-color2);
	}

	.price-07.color2 .button-price:after {
		box-shadow: 3px 4px 16px var(--accent-color2);
	}

	.price-07.color2 .price-box::before {
		box-shadow: 0px 0px 17px var(--accent-color2);
	}

	.price-07.color2 .button-price {
		background-color: var(--accent-color2);
	}

	.price-07.color3::before {
		background: var(--accent-color3);
	}

	.price-07.color3 .button-price:after {
		box-shadow: 3px 4px 16px var(--accent-color3);
	}

	.price-07.color3 .price-box::before {
		box-shadow: 0px 0px 17px var(--accent-color3);
	}

	.price-07.color3 .button-price {
		background-color: var(--accent-color3);
	}

	.price-07.color4::before {
		background: var(--accent-color4);
	}

	.price-07.color4 .button-price:after {
		box-shadow: 3px 4px 16px var(--accent-color4);
	}

	.price-07.color4 .price-box::before {
		box-shadow: 0px 0px 17px var(--accent-color4);
	}

	.price-07.color4 .button-price {
		background-color: var(--accent-color4);
	}`,
	"price-08": `.price-08 {
		position: relative;
		padding-right: 30px;
		text-align: center;
		margin-bottom: 30px;
	}
	
	.price-08 .price-item {
		padding: 80px 40px 20px;
		box-shadow: 0 0 15px rgba(0, 0, 0, .1);
		z-index: 5;
		background-color: #ffffff;
		position: relative;
	}
	
	.price-08 .icon {
		width: 120px;
		height: 120px;
		line-height: 120px;
		border-radius: 50%;
		display: inline-block;
		margin-bottom: 22px;
		position: relative;
		z-index: 1;
	}
	
	.price-08 .icon::after {
		content: "";
		position: absolute;
		z-index: -1;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		border-radius: 50%;
		transition: all ease-in 300ms;
		opacity: 0.1;
	}
	
	.price-08 .price-title {
		margin: 0 0 2px;
		font-size: 20px;
	}
	
	.price-08 .price-features::before {
		content: "";
		border-bottom: 1px solid var(--accent-color2);
		width: 30px;
		display: block;
		margin: auto auto 20px;
	}
	
	.price-08 .price-features ul {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	.price-08 .price-box {
		font-size: 48px;
		font-weight: 600;
		color: var(--accent-color2);
	}
	
	.price-08 .price-box sup {
		font-size: 24px;
	}
	
	.price-08::after {
		content: "";
		position: absolute;
		top: 30px;
		left: 30px;
		right: 0;
		bottom: 0;
		z-index: 1;
		background-color: #edebfd;
		opacity: 0.1;
		transition: all ease-in 300ms;
	}
	
	.price-08 .price-footer {
		z-index: 5;
		position: relative;
		height: 60px;
		line-height: 60px;
		font-weight: 600;
	}
	
	.price-08 .price-footer a,
	.price-08 .price-footer a:link,
	.price-08 .price-footer a:active,
	.price-08 .price-footer a:visited,
	.price-08 .price-footer a:hover {
		color: #333333;
	}
	
	.price-08 .price-footer a i {
		font-size: 1.4em;
		vertical-align: sub;
		margin-left: 5px;
	}
	
	.price-08:hover::after {
		opacity: 1;
	}
	
	.price-08:hover .price-footer a {
		color: #fff;
	}
	
	.price-08.color-1::after,
	.price-08.color-1 .icon::after {
		background-color: var(--accent-color2);
	}
	
	.price-08.color-1 .price-features::before {
		border-bottom-color: var(--accent-color2);
	}
	
	.price-08.color-1 .price-box {
		color: var(--accent-color2);
	}
	
	.price-08.color-2::after,
	.price-08.color-2 .icon::after {
		background-color: var(--accent-color3);
	}
	
	.price-08.color-2 .price-features::before {
		border-bottom-color: var(--accent-color3);
	}
	
	.price-08.color-2 .price-box {
		color: var(--accent-color3);
	}
	
	.price-08.color-3::after,
	.price-08.color-3 .icon::after {
		background-color: var(--accent-color);
	}
	
	.price-08.color-3 .price-features::before {
		border-bottom-color: var(--accent-color);
	}
	
	.price-08.color-3 .price-box {
		color: var(--accent-color);
	}
	
	.is-light-text .price-08 .price-title {
		color: #333333;
	}
	
	.is-light-text .price-08 p,
	.is-light-text .price-08 li,
	.is-light-text .price-08 div,
	.is-light-text .price-08 span {
		color: #787878
	}
	
	.is-light-text .price-08 .pricing {
		color: inherit
	}
	
	.price-08 .price-features ul li {
		margin-bottom: 7px;
	}
	`,
	"price-11": `.price-11 {
		background: #FFF;
		box-shadow: 0 0 20px rgba(0, 0, 0, .1);
		text-align: center;
	}

	.price-11.best-value {
		margin: -40px -30px 0;
		position: relative;
		z-index: 10;
	}

	.price-11.best-value .price-header {
		height: 171px;
	}

	.price-11 .price-header {
		height: 131px;
		display: flex;
		flex-wrap: wrap;
		align-items: center;
		justify-content: center;
		padding: 0 30px;
	}

	.price-11 .price-header .title {
		margin: 0 0 6px;
		font-size: 24px;
		font-weight: 600;
	}

	.price-11 .price-header .icon {
		font-size: 42px;
		color: var(--accent-color2);
		line-height: 1;
		height: 48px;
		margin-top: -9px;
	}

	.price-11 .price-info .pricing {
		color: var(--accent-color2);
		margin-right: 3px;
		font-weight: 700;
	}

	.price-11 .price-features ul {
		list-style: none;
		margin: 0;
		padding: 0;
	}

	.price-11 .price-features ul li {
		height: 50px;
		line-height: 50px;
		white-space: nowrap;
		padding: 0px 30px;
		position: relative;
		z-index: 10;
	}

	.price-11 .price-features ul li .title {
		display: none;
		margin-right: 10px;
	}

	.price-11 .price-features ul li .title::after {
		content: ":";
	}

	.price-11 .price-features ul li:nth-child(2n+1)::after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		opacity: 0.1;
	}

	.price-11 .price-features ul li .sico {
		color: var(--accent-color2);
		font-size: 23px;
	}

	.price-11 .price-footer {
		height: 110px;
		display: flex;
		flex-wrap: wrap;
		align-items: center;
		justify-content: center;
		padding: 0px 30px;
	}

	.price-11.price-title {
		text-align: left;
		box-shadow: none;
		margin-right: -30px;
	}

	.price-11.price-title .price-header,
	.price-11.price-title .price-footer {
		justify-content: left;
	}

	.price-11 .price-button {
		display: inline-block;
		font-size: 16px;
		color: #fff;
		padding: 0 30px;
		background-color: #1abc9c;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		box-shadow: 0 0 20px rgba(0, 0, 0, .2);
		line-height: 50px;
		height: 50px;
		background-image: none;
		border: none;
		border-radius: 50px;
	}

	.price-11.price-title .price-features ul li:nth-child(2n+1)::after {
		opacity: 0.05;
	}

	.price-11.price-color1 .price-features ul li::after,
	.price-11.price-color1 .price-button {
		background-color: var(--accent-color);
	}

	.price-11.price-color2 .price-features ul li::after,
	.price-11.price-color2 .price-button {
		background-color: var(--accent-color2);
	}

	.price-11.price-color3 .price-features ul li::after,
	.price-11.price-color3 .price-button {
		background-color: var(--accent-color3);
	}

	.price-11.price-color4 .price-features ul li::after,
	.price-11.price-color4 .price-button {
		background-color: var(--accent-color4);
	}

	.price-11.best-value .price-footer {
		height: 140px;
		padding-bottom: 30px;
	}

	@media only screen and (max-width: 767px) {

		.price-11,
		.price-11.best-value,
		.price-11.price-title {
			margin: 0 0 30px;
		}

		.price-11.price-title {
			display: none;
		}

		.price-11 .price-features ul li .title {
			display: inline-block;
		}
	}`,
	"price-10": `.price-10 {
		text-align: center;
		border: 1px solid #e2e2e2;
		border-top: 6px solid var(--accent-color2);
		border-radius: 6px;
		padding: 38px;
		margin: 0 0 20px;
	}

	.price-10 .title {
		color: #333333;
		font-size: 24px;
		margin: 25px 0 15px;
	}

	.price-10 .price-info {
		border-top: 1px dashed #e2e2e2;
		padding-top: 20px;
		margin-top: 35px;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.price-10 .price-info .pricing {
		font-size: 48px;
		font-weight: 600;
	}

	.price-10 .price-info .unit {
		border-left: 1px solid #e0e0e0;
		padding-left: 15px;
		margin-left: 15px;
	}

	.price-10 .price-info .unit span {
		display: block;
		text-align: left;
		line-height: 1.4;
	}

	.price-10 .price-features ul {
		margin: 0 0 12px;
		padding: 0;
		list-style: none;
		font-size: 18px;
	}

	.price-10 .price-features ul li {
		padding: 8px 0;
	}

	.price-10.price-color1 {
		border-top-color: var(--accent-color);
	}

	.price-10.price-color1 .price-info .pricing {
		color: var(--accent-color);
	}

	.price-10.price-color1 .price-button {
		background-color: var(--accent-color);
	}

	.price-10.price-color2 {
		border-top-color: var(--accent-color2);
	}

	.price-10.price-color2 .price-info .pricing {
		color: var(--accent-color2);
	}

	.price-10.price-color2 .price-button {
		background-color: var(--accent-color2);
	}

	.price-10.price-color3 {
		border-top-color: var(--accent-color3);
	}

	.price-10.price-color3 .price-info .pricing {
		color: var(--accent-color3);
	}

	.price-10.price-color3 .price-button {
		background-color: var(--accent-color3);
	}

	.price-10.price-color4 {
		border-top-color: var(--accent-color4);
	}

	.price-10.price-color4 .price-info .pricing {
		color: var(--accent-color4);
	}

	.price-10.price-color4 .price-button {
		background-color: var(--accent-color4);
	}

	.price-10 .price-footer {
		padding-top: 13px
	}`,
	"ourteam-01": `
	.ourteam-01 {
		position: relative;
		overflow: hidden;
	}

	.ourteam-01 .pic {
		vertical-align: bottom;
	}

	.ourteam-01 img {
		display: block;
		width: 100%;
		margin: 0 auto;
	}

	.ourteam-01:after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.55);
		pointer-events: none;
		opacity: 0;
		visibility: hidden;
		-webkit-transition-property: all;
		transition-property: all;
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}

	.ourteam-01:hover:before,
	.ourteam-01:hover:after {
		opacity: 1;
		visibility: visible;
	}

	.ourteam-01 .content {
		position: absolute;
		width: 100%;
		text-align: center;
		top: 50%;
		padding: 15px;
		transform: translateY(-50%);
		-webkit-transform: translateY(-50%);
		z-index: 1;
		color: #FFF;
		opacity: 0;
		visibility: hidden;
		-webkit-transition-property: all;
		transition-property: all;
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}

	.ourteam-01 .content .title {
		color: #FFF;
		margin: 0 0 10px;
		font-size: 24px;
		font-weight: 500;
		line-height: 1.5;
	}

	.ourteam-01 .content small {
		font-size: 16px;
		line-height: 1.5;
	}

	.ourteam-01:hover .content {
		opacity: 1;
		visibility: visible;
	}

	.ourteam-01 .icon {
		text-align: center;
		z-index: 2;
		display: block;
		margin-top: 8px;
		opacity: 0;
		-webkit-transition-property: all;
		transition-property: all;
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}
	.ourteam-01 .icon a {
		display: inline-block;
	}
	.ourteam-01 .icon i,
	.ourteam-01 .icon em {
		width: 42px;
		height: 42px;
		line-height: 42px;
		color: #ffffff;
		-webkit-transition-property: all;
		transition-property: all;
		-webkit-transition-duration: .3s;
		transition-duration: .3s;
		-webkit-transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		transition-timing-function: cubic-bezier(0.420, 0.000, 1.000, 1.000);
		-webkit-transition-delay: 0s;
		transition-delay: 0s;
	}
	.ourteam-01:hover .icon {
		opacity: 1;
	}
	.ourteam-01 .icon a:hover i,
	.ourteam-01 .icon a:hover em {
		color: var(--accent-color);
	}
	.ourteam-01 .icon a:hover {
		text-decoration: none !important;
	}

	@media only screen and (min-width: 768px) and (max-width: 991px) {}

	@media only screen and (max-width: 767px) {
		.ourteam-01 {
			float: none;
			width: auto;
		}
	}
	`,
	"ourteam-02": ` 
	.ourteam-02{
		display: flex;
		padding: 30px 40px;
		border-radius: 6px;
		box-shadow: 0 0 20px rgba(0,0,0,.1);
		margin:0 0 50px;
		align-items: center;
		margin-left: 70px;
	  transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000);
	  background-color: #FFF;
	}
	.ourteam-02:nth-of-type(even){
		margin-left: 0px;
		margin-right: 70px;
	}
	.ourteam-02 .pic{
		width: 98px;
		border:2px solid #FFF;
		border-radius: 50%;
		overflow: hidden;
		box-shadow: 0 0 0px 1px #d5d8e0;
		margin-right: 30px;
	}
	.ourteam-02 .title{
		margin-bottom: 20px;
	}
	.ourteam-02 .title small{
		color: #787878;
		font-size: 16px;
	}
	.ourteam-02 .info{
		list-style: none;
		margin: 0;
		padding: 0;
	}
	.ourteam-02 .info li{
		display: inline-block;
		margin-right: 15px;
	}
	.ourteam-02 .info li:last-child{
		margin-right:0px;
	}
	.ourteam-02 .info i{
		margin:0 5px 0px 0;
		font-size: 1.2em;
		vertical-align: middle;
	}
	.ourteam-02:hover{
		background-color: var(--accent-color);
	}
	.ourteam-02 .content,
	.ourteam-02 .title > *,
	.ourteam-02 .title small,
	.ourteam-02 i{
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000);
	}
	
	.ourteam-02:hover .content,
	.ourteam-02:hover .title > *,
	.ourteam-02:hover .title small,
	.ourteam-02:hover i{
		color: #fff!important;
	}
	
	@media only screen and (max-width: 991px) {
	   .ourteam-02{
		  padding:18px 15px;
		  margin-left: 40px;
		}
		.ourteam-02:nth-of-type(even){
			margin-left: 0px;
			margin-right: 40px;
		}
	}
	@media only screen and (max-width: 767px) {
	  .ourteam-02{
		  margin-left: 0px!important;
		margin-right: 0px!important;
		  padding:18px 15px;
	  }
	
	}
	 `,
	"ourteam-03": `
	 .ourteam-03 {
		display: flex;
		align-items: center;
	}
	.ourteam-03 .pic {
		display: flex;
		justify-content: center;
		align-items: center;
		flex-shrink: 0;
		background: #ffffff;
		border: 4px solid #ffffff;
		border-radius: 50%;
		overflow: hidden;
		position: relative;
		width: 180px;
		height: 180px;
		margin-right: 30px;
		-webkit-box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.25);
		box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.25);
	}

	.ourteam-03 .pic img {
		max-width: 100%;
		max-height: 100%;
		border-radius: 50%;
	}

	.ourteam-03 .pic .share {
		position: absolute;
		display: flex;
		justify-content: center;
		align-items: center;
		bottom: 21px;
		background-color: transparent;
		left: 0;
		right: 0;
		padding: 11px 0 10px;
		opacity: 0;
		-webkit-transition: all cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
		transition: all cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
	}

	.ourteam-03 .pic .share::before {
		content: "";
		position: absolute;
		display: block;
		left: 0;
		right: 0;
		top: 0;
		bottom: 0;
		background: var(--accent-color);
		opacity: 0.8;
		z-index: 0;
	}

	.ourteam-03 .pic .share a {
		color: #ffffff;
		text-decoration: none;
		margin: 0 10px;
		font-size: 16px;
		line-height: 1;
		z-index: 1;
	}

	.ourteam-03 .content .title {
		padding-bottom: 7px;
	}

	.ourteam-03 .content .title * {
		-webkit-transition: color cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
		transition: color cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
	}

	.ourteam-03 .pic:hover .share {
		opacity: 1;
	}

	.ourteam-03-list .col-lg-6 {
		border-left: 1px dashed #d5d5d5;
	}

	.ourteam-03-list+.ourteam-03-list .col-lg-6 {
		border-top: 1px dashed #d5d5d5;
	}

	.ourteam-03-list .col-lg-6:first-child {
		border-left: none;
	}

	.ourteam-03-list .ourteam-03 {
		padding-left: 30px;
		margin-top: 40px;
		margin-bottom: 40px;
	}

	@media (max-width: 991px) {

		.ourteam-03-list .col-lg-6,
		.ourteam-03-list+.ourteam-03-list .col-lg-6 {
			border: none;
		}

		.ourteam-03-list .ourteam-03 {
			margin-top: 20px;
			margin-bottom: 20px;
			padding-left:0
		}
	}

	@media (max-width: 575px) {
		.ourteam-03 {
			flex-direction: column;
		}

		.ourteam-03 .pic {
			margin-right: 0px;
			margin-bottom: 30px;
		}

		.ourteam-03 .content {
			text-align: center;
		}
	}
	 `,
	"ourteam-04": `
	 .ourteam-04 {
		background: #fff;
		position: relative;
		border-radius: 4px;
		padding: 40px 30px 30px;
		margin-bottom: 30px;
	}

	.ourteam-04::before {
		content: '';
		display: block;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		box-shadow: -3px 4px 25px var(--accent-color2);
		opacity: .2;
		border-radius: 4px;
		z-index: 0;
	}

	.ourteam-04>div {
		position: relative;
		z-index: 1;
	}

	.ourteam-04 .pic {
		position: absolute;
		right: 0;
		top: 0;
		width: 95px;
		height: 95px;
		border-radius: 0 4px 0 100%;
		overflow: hidden;
	}

	.ourteam-04 .pic::before {
		content: '';
		display: block;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: var(--accent-color);
		opacity: 0.3;
		z-index: 0;
	}

	.ourteam-04 .pic img {
		position: relative;
		z-index: 1;
	}

	.ourteam-04 .title {
		width: calc(100% - 55px);
		margin-bottom: 3px;
	}

	.ourteam-04 .title * {
		color: var(--accent-color2);
		margin: 0;
	}

	.ourteam-04 .info {
		width: calc(100% - 70px);
	}

	.ourteam-04 .info p {
		color: #999999;
	}

	.ourteam-04 .info p:last-child {
		margin-bottom: 0;
	}

	.ourteam-04 .description {
		margin-top: 26px;
	}

	.ourteam-04 .description p {
		color: #787878;
	}

	.ourteam-04 .description p:last-child {
		margin-bottom: 0;
	}

	.ourteam-04 .social {
		margin-top: 26px;
		font-size: 0;
	}

	.ourteam-04 .social a {
		display: inline-block;
		font-size: 16px;
		width: 1em;
		color: #787878;
		text-decoration: none;
		margin-right: 30px;
	}

	.ourteam-04 .social a:hover {
		color: var(--accent-color);
	}

	.ourteam-04.color1 .pic::before {
		background: var(--accent-color);
	}

	.ourteam-04.color2 .pic::before {
		background: var(--accent-color2);
	}

	.ourteam-04.color3 .pic::before {
		background: var(--accent-color3);
	}

	.ourteam-04.color4 .pic::before {
		background: var(--accent-color4);
	}

	@media (min-width: 768px) {
		.ourteam-04-list>div:last-child {
			margin-top: 60px;
		}

		.ourteam-04-list+.ourteam-04-list {
			margin-top: -60px;
		}
	} 
	 `,
	 "ourteam-05": 
	 `.ourteam-05 {
		display: flex;
		align-items: start;
		padding: 0px 30px;
		margin: 0 0 30px;
		background-color: #ffffff;
	}

	.ourteam-05 .pic {
		flex: 0 0 120px;
		margin-right: 30px;
		position: relative;
		width: 120px;
	}

	.ourteam-05 .pic img {
		border-radius: 50%;
	}

	.ourteam-05 .pic::after {
		content: "\“";
		width: 40px;
		height: 40px;
		position: absolute;
		background-color: var(--accent-color2);
		border-radius: 50%;
		top: -5px;
		right: 0;
		color: #fff;
		text-align: center;
		overflow: hidden;
		font-size: 30px;
	}

	.ourteam-05 .rating {
		margin: 0 0 12px;
		line-height: 1;
	}

	.ourteam-05 .rating i {
		color: #ff6e2f;
		display: inline-block;
		margin-right: 8px;
	}

	.ourteam-05 .name {
		color: #333333;
		font-size: 18px;
		font-weight: 600;
	}

	.ourteam-05.active {
		box-shadow: 0 0 20px rgba(0, 0, 0, .1);
		padding: 40px 30px;
	}

	@media only screen and (max-width: 767px) {
		.ourteam-05 {
			display: block;
		}

		.ourteam-05 .pic {
			margin-bottom: 20px;
		}
	}`,	 
	"ourteam-06": `
	.ourteam-06 {
		display: flex;
		align-items:center;
		margin: 30px 0; 
	}
	.ourteam-06 .pic {
		flex: 0 0 240px;
		margin-right: 30px; 
	} 
	.ourteam-06 .title{
		margin: 0 0 5px; 
	} 
	.ourteam-06 p{
		margin: 0; 
	}
	.ourteam-06 p + p{
		margin:18px 0 0; 
	} 
	.ourteam-06 a{
		display: inline-block;
		margin: 0 10px 3px 0; 
	} 
	.ourteam-06 .sico{
		color: #666666; 
		transition: color ease-in 300ms; 
	} 
	.ourteam-06 a:hover .sico{
		color:var(--accent-color);
	}
	@media only screen and (max-width:767px) {
		.ourteam-06{
			display: block;
		}
		.ourteam-06 .pic {
			margin-bottom: 25px; 
		}
	}
	`,	 
	"infobox-01": `
	.infobox-01{
		display: flex;
		flex-wrap: nowrap;
		position: relative;
		padding: 14px 0;
	
	}
	.infobox-01::after{
		content: "";
		position: absolute;
		display: block;
		left: 42px;
		top: 100%;
		width: 1px;
		height: calc( 100% - 84px - 20px );
		border-right: 1px #d1d1d1 dashed;
	}
	.infobox-01:last-of-type::after{
		content: none;
	}
	.infobox-01 .counter{
		position: relative;
		padding-left: 15px;
		padding-right: 15px;
		flex: 0 0 auto;
		width: auto;
		max-width: 100%;
		width: 84px;
		height: 84px;
		line-height: 84px;
		font-size: 24px;
		color: #424242;
		text-align: center;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		z-index:1
	}
	.infobox-01 .counter span{
		position: relative;
	}
	.infobox-01 .counter::before{
		content: "";
		position: absolute;
		display: block;
		left: 0;
		top: 0;
		width: 84px;
		height: 84px;
		border: 4px solid #eff1f1;
		border-radius: 50%;
		position: absolute;
		clip: rect(0px, 84px, 62px, 42px);
		z-index: -1;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.infobox-01:nth-of-type(3n+1){
	
	}
	.infobox-01:nth-of-type(3n+2){
		padding-bottom: 25px;
	}
	.infobox-01:nth-of-type(3n+3){
		padding-top: 25px;
		padding-bottom: 25px;
	}
	.infobox-01:nth-of-type(3n+1)::after{
		top: calc( 14px + 84px );
		height: calc( 100% - 84px - 0px );
	}
	.infobox-01:nth-of-type(3n+2)::after{
		top: calc( 14px + 84px + 10px );
		height: calc( 100% - 84px - 9px);
	}
	.infobox-01:nth-of-type(3n+3)::after{
		top: calc( 100% - 25px - 1px );
		height: calc( 100% - 84px - 20px);
	}
	
	
	.infobox-01:nth-of-type(3n+1) .counter::before{
		transform: rotate(0deg);
	}
	.infobox-01:nth-of-type(3n+2) .counter::before{
		transform: rotate(120deg);
	}
	.infobox-01:nth-of-type(3n+3) .counter::before{
		transform: rotate(240deg);
	}
	
	.infobox-01 .counter::after{
		content: "";
		position: absolute;
		display: block;
		top: 11px;
		right: 11px;
		bottom: 11px;
		left: 11px;
		border-radius: 50%;
		background: #eff1f1;
		z-index: -1;
		-webkit-transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.infobox-01 .content{
		padding-left: 28px;
		padding-right: 15px;
		flex-basis: 0;
		flex-grow: 1;
		max-width: 100%;
	}
	.infobox-01 .content > :first-child{
		margin-top: 0;
		margin-bottom: 8px;
	}
	.infobox-01 .content p:last-child{
		margin-bottom: 0;
	}
	.infobox-01:hover .counter{
		color: #ffffff;
	}
	.infobox-01:hover .counter::before{
		border-color: var(--accent-color);
	}
	.infobox-01:hover .counter::after{
		background: var(--accent-color);
	}
	
	`,
	"infobox-02": `
	.infobox-02{
		
		display: flex;
		flex-direction: column;
		height: 100%;
		padding: 55px 25px 50px;
		border-radius: 2px;
		text-align: center;
	
		background: #fff;
	
		-webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.1);
		box-shadow: 0px 0px 25px rgba(0,0,0,0.1);
	}
	.infobox-02 .pic{
		flex-shrink: 0;
		position: relative;
		display: inline-flex;
		width: 116px;
		height: 116px;
		margin: 0 auto 21px;
		justify-content: center;
		align-items: center;
	
		z-index: 1;
	}
	.infobox-02 .pic::before{
		content: "";
		position: absolute;
		left: 0;
		top: 0;
		border-radius: 40%;
		opacity: 0.1;
		border: currentColor 57px solid;
		-webkit-transform: rotate(45deg);
		transform: rotate(45deg);
		z-index: -1;
	
		-webkit-animation: infobox02 10s linear infinite paused;
		animation: infobox02 10s linear infinite paused;
	}
	.infobox-02 .pic img{
		max-width: 100%;
	}
	.infobox-02 .content{
		flex-basis: 100%;
	}
	.infobox-02 .button{
		position: relative;
		display: inline-block;
		margin: 21px 0 auto;
		z-index: 1;
	}
	
	
	.infobox-02:hover .pic::before{
		-webkit-animation-play-state:running;
		animation-play-state:running;
	}
	
	@media only screen and (max-width: 767px) {
		.infobox-02{
			height:auto;
		}
	}
	
	@-webkit-keyframes infobox02 {
		0% {
			-webkit-transform: rotate(45deg);
		}
		100% {
			-webkit-transform: rotate(405deg);
		}
	}
	
	@keyframes infobox02 {
		100% {
			transform: rotate(405deg);
		}
	}
	`,
	"infobox-03": `
	.infobox-03{
		position: relative;
		text-align: center;
	}
	.infobox-03 .pic-box{
		position: relative;
		display: inline-block;
		margin-bottom: 18px;
	}
	.infobox-03 .pic-box .pic{
		max-width: 280px;
		height: auto;
	
		border-radius: 50%;
		overflow: hidden;
	
		-webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.3);
		box-shadow: 0px 0px 25px rgba(0,0,0,0.3);
	}
	.infobox-03 .pic-box > a{
		position: absolute;
	
		display: inline-flex;
		justify-content: center;
		align-items: center;
	
		width: 46px;
		height: 46px;
		font-size: 16px;
		text-align: center;
		color: #fff;
		background-color: var(--accent-color);
		border-radius: 50%;
	
		margin: 0;
		-webkit-backface-visibility: hidden;
		backface-visibility: hidden;
		overflow: visible;
		visibility: hidden;
	
		-webkit-transform: translateY(5px) scale(0) translateZ(0);
		transform: translateY(5px) scale(0) translateZ(0);
	
		-webkit-transition: .3s cubic-bezier(.1,1.02,.58,1);
		transition: .3s cubic-bezier(.1,1.02,.58,1);
	}
	
	.infobox-03 .pic-box > a:nth-child(-n+7){
		visibility: visible;
	}
	.infobox-03 .pic-box > a:nth-of-type(1){
		left: 4%;
		bottom: 4%;
	
		font-size: 25px;
		width: 60px;
		height: 60px;
		-webkit-transform: translateY(0) scale(1) translateZ(0);
		transform: translateY(0) scale(1) translateZ(0);
	}
	.infobox-03 .pic-box > a:nth-of-type(2){
		left: -6%;
		bottom: 27%;
	
		-webkit-transition-delay: .3s;
		transition-delay: .3s;
	}
	.infobox-03 .pic-box > a:nth-of-type(3){
		left: -7.6%;
		bottom: 47.8%;
	
		-webkit-transition-delay: .25s;
		transition-delay: .25s;
	}
	.infobox-03 .pic-box > a:nth-of-type(4){
		left: -1%;
		bottom: 67.8%;
	
		-webkit-transition-delay: .2s;
		transition-delay: .2s;
	}
	.infobox-03 .pic-box > a:nth-of-type(5){
		left: 14.6%;
		bottom: 84.8%;
	
		-webkit-transition-delay: .15s;
		transition-delay: .15s;
	}
	.infobox-03 .pic-box > a:nth-of-type(6){
		left: 33.6%;
		bottom: 91.8%;
	
		-webkit-transition-delay: .1s;
		transition-delay: .1s;
	}
	.infobox-03 .pic-box:hover > a{
		-webkit-transform: translateY(0) scale(1) translateZ(0);
		transform: translateY(0) scale(1) translateZ(0);
	}
	.infobox-03 .pic-box:hover > a:nth-of-type(2){
		-webkit-transition-delay: .1s;
		transition-delay: .1s;
	}
	.infobox-03 .pic-box:hover > a:nth-of-type(3){
		-webkit-transition-delay: .15s;
		transition-delay: .15s;
	}
	.infobox-03 .pic-box:hover > a:nth-of-type(4){
		-webkit-transition-delay: .2s;
		transition-delay: .2s;
	}
	.infobox-03 .pic-box:hover > a:nth-of-type(5){
		-webkit-transition-delay: .25s;
		transition-delay: .25s;
	}
	.infobox-03 .pic-box:hover > a:nth-of-type(6){
		-webkit-transition-delay: .3s;
		transition-delay: .3s;
	}
	.infobox-03 .content{
		padding-left: 15px;
		padding-right: 15px;
	}
	
	@media (max-width: 991px) {
		.infobox-03 .pic-box > a{
			width: 36px;
			height: 36px;  
		}
		.infobox-03 .pic-box > a:nth-of-type(1){
			font-size: 20px;
			width: 48px;
			height: 48px;
			left: 10%;
			bottom: 4%;
		}
		.infobox-03 .pic-box > a:nth-of-type(2){
			left: -3%;
			bottom: 27%;
		}
		.infobox-03 .pic-box > a:nth-of-type(3){
			left: -6.6%;
			bottom: 47.8%;
		}
		.infobox-03 .pic-box > a:nth-of-type(4){
			left: -1%;
			bottom: 67.8%;
		}
		.infobox-03 .pic-box > a:nth-of-type(5){
			left: 14.6%;
			bottom: 84.8%;
		}
		.infobox-03 .pic-box > a:nth-of-type(6){
			left: 33.6%;
			bottom: 92.8%;
		}
	}
	`,
	"infobox-04": `
	.infobox-04{
		position: relative;
		padding: 109px 15px 111px;
	
		overflow: hidden;
		height: 100%;
	}
	.infobox-04 .box{
		position: relative;
		margin-left: auto;
		margin-right: auto;
		max-width: 370px;
		z-index: 1;
	
		display: flex;
		flex-direction: column;
		height: 100%;
	}
	.infobox-04 .title {
		margin-bottom: 17px;
	}
	.infobox-04 .title small{
		display: inline-block;
		margin-bottom: 7px;
		font-size: 18px;
		font-weight: 600;
		color: #333333;
	}
	.infobox-04 .title small::before{
		content: "";
		width: 30px;
		display: inline-block;
		color: var(--accent-color);
		border-bottom: 2px solid currentColor;
		vertical-align: middle;
		margin: 0 10px 3px 0;
	}
	.infobox-04 .content{
		flex-grow: 1;
	}
	.infobox-04 .link{
		margin-top: 19px;
	}
	.infobox-04 .link a{
		color: #787878;
		font-weight: 600;
	}
	.infobox-04 .link a:hover{
		color: var(--accent-color);
	}
	.infobox-04 .link a span{
		color: var(--accent-color);
		display: inline-block;
		height: 100%;
		font-size: 1.5em;
		line-height: 1;
		vertical-align: middle;
	}
	.infobox-04 .icon{
		position: absolute;
		right: -40px;
		bottom: -105px;
		font-size: 286px;
		line-height: 1;
		color: rgba(0,0,0,.03);
		z-index: 0;
	
		-webkit-transform: rotate(30deg);
		transform: rotate(30deg);
	}
	.row [class*='col']:nth-child(even) .infobox-04{
		background: #f4f4f4;
	}
	
	.infobox-04,
	.infobox-04 .title small,
	.infobox-04 .title small::before,
	.infobox-04 .title h1,
	.infobox-04 .title h2,
	.infobox-04 .title h3,
	.infobox-04 .title h4,
	.infobox-04 .title h5,
	.infobox-04 .title h6,
	.infobox-04 .link a,
	.infobox-04 .link a span{
		-webkit-transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.infobox-04:hover,
	.row [class*='col']:nth-child(even) .infobox-04:hover{
		background: var(--accent-color);
	}
	.infobox-04:hover,
	.infobox-04:hover .title small,
	.infobox-04:hover .title small::before,
	.infobox-04:hover .title h1,
	.infobox-04:hover .title h2,
	.infobox-04:hover .title h3,
	.infobox-04:hover .title h4,
	.infobox-04:hover .title h5,
	.infobox-04:hover .title h6,
	.infobox-04:hover .link a,
	.infobox-04:hover .link a span{
		color:#fff;
	}
	`,
	"infobox-05": `
	.infobox-05{
		text-align: center;
		margin-bottom: 60px;
	}
	.infobox-05 .number{
		width: 86px;
		height: 86px;
		line-height: 86px;
		background-color: var(--accent-color);
		display: inline-block;
		border-radius: 50%;
		font-size: 40px;
		margin-bottom: 40px;
		position: relative;
		color: #fff;
		font-weight: 600;
	}
	.infobox-05 .number::after{
		content: "";
		position: absolute;
		color: var(--accent-color);
		border: 2px solid transparent;
		border-top-color:currentColor;
		top:-10px;
		left: -10px;
		right: -10px;
		bottom: -10px;
		border-radius: 50%;
		transform: rotate(45deg);
		pointer-events: none;
	}
	.infobox-05 .number.number-02::after{
		border-right-color:currentColor;
	}
	.infobox-05 .number.number-03::after{
		border-right-color:currentColor;
		border-bottom-color:currentColor;
	}
	.infobox-05 .number.number-04::after{
		border-color:currentColor;
	}
	.infobox-05 .title{
		margin: 0 0 18px;
	}
	.infobox-05 p{
	   color: #e3e3e3;
	}
	`,
	"infobox-06": `
	.infobox-06{
		background-color: #FFF;
		border-radius: 6px;
		box-shadow: 0 0 10px rgba(0,0,0,.15);
		padding: 40px 35px 18px;
		text-align: center;
		margin-bottom: 30px;
	
		font-size: 16px;
	}
	.infobox-06 .pic img{
		border-radius: 50%;   
	}
	.infobox-06 .pic{
		width: 175px;
		border-radius: 50%;
		margin: 0 auto 29px;
		box-shadow:3px 3px 0 3px currentColor;
		color: currentColor;
		position: relative;
		max-width: 100%;
	}
	.infobox-06 .title *{
		color: #555555;
		margin: 0;
		font-size: 18px;
	}
	.infobox-06 .pic::after{
		content: "+";
		font-family: "Times New Roman",Georgia,sans-serif;
		width: 50px;
		height: 50px;
		background-color: var(--accent-color);
		position: absolute;
		top: 25px;
		left: -10px;
		border-radius: 50%;
		color: #fff;
		font-size: 36px;
		font-weight: normal;
		line-height: 48px;
		opacity: 0;
		pointer-events: none;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		transform: scale(.8);
		font-weight: 100;
	}
	.infobox-06 .pic:hover::after{
		opacity: 1;
		-webkit-transform: scale(1);  
		transform:  scale(1);
	   
	}
	`,
	"infobox-07": `
	.infobox-07{
		position: relative;
		display: inline-block;
		text-align: left;
	}
	.infobox-07::before{
		content: '';
		position: absolute;
		display: block;
		left: 0;
		right: 0;
		top: 0;
		bottom: 0;
		z-index: 1;
		pointer-events: none;
		background-image: -webkit-linear-gradient(180deg ,rgba(0, 0, 0, 0) 0% ,rgba(0, 0, 0, 0) 52% ,rgba(0, 0, 0, 0.7) 100% );
		background-image: linear-gradient(180deg ,rgba(0, 0, 0, 0) 0% ,rgba(0, 0, 0, 0) 52% ,rgba(0, 0, 0, 0.7) 100% );
	}
	.infobox-07 .pic{
		-webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.3) ;
		box-shadow: 0px 0px 25px rgba(0,0,0,0.3) ;
	}
	.infobox-07 .pic img{
		max-width: 100%;
	}
	.infobox-07 .content{
		position: absolute;
		left: 0;
		bottom: 0;
		padding: 40px 28px;
		z-index: 1;
	}
	.infobox-07 .content *{
		color: #ffffff;
	}
	.infobox-07 .content p:last-of-type{
		margin-bottom: 0;
	}
	`,
	"infobox-08": `
	.infobox-08{
		position: relative;
		text-align: center;
		margin-bottom: 44px;
	}
	.infobox-08 .pic{
		margin-bottom: 18px;
	}
	.infobox-08 .pic img{
		max-width: 100%;
	}
	.infobox-08 .content p:first-of-type{
		margin-top: 17px;
	}
	.infobox-08 .content :last-child{
		margin-bottom: 0;
	}
	`,
	"infobox-09": `
	.infobox-09{
		position: relative;
		display: flex;
		justify-content: center;
		align-items: center;
		text-align: center;
	}
	.infobox-09 .content{
		max-width: 650px;
		pointer-events: all;
		padding: 93px 15px;
	}
	.infobox-09 .content .icon{
		margin-bottom: 18px;
	}
	`,
	"infobox-10": `
	.infobox-10{
		position: relative;
		margin-bottom: 30px;
		padding: 50px 30px 40px;
		background: #f6f7fc;
		text-align: center;
		-webkit-box-shadow: 0px 0px 20px rgba(0,0,0,0.2);
		box-shadow: 0px 0px 20px rgba(0,0,0,0.2);
	
		-webkit-transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1) 0s;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1) 0s;
	}
	.infobox-10 .pic{
		display: inline-flex;
		justify-content: center;
		align-items: center;
		margin-bottom: 20px;
		width: 122px;
		height: 122px;
		padding: 4px;
		background: #ffffff;
		border-radius: 50%;
		overflow: hidden;
		-webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.3) ;
		box-shadow: 0px 0px 25px rgba(0,0,0,0.3) ;
	}
	.infobox-10 .pic img{
		max-width: 100%;
		max-height: 100%;
		border-radius: 50%;
	}
	.infobox-10 .content p:first-of-type{
		margin-top: 18px;
	}
	.infobox-10 .social{
		padding-top: 4px;
		font-size: 0;
	}
	.infobox-10 .social a{
		color: currentColor;
		margin: 0 10px;
		font-size: 16px;
	}
	.infobox-10 .content *,
	.infobox-10 .social a{
		-webkit-transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1) 0s;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1) 0s;
	}
	.infobox-10:hover{
		background: var(--accent-color);
	}
	.infobox-10:hover .content *,
	.infobox-10:hover .social a{
		color: #ffffff;
	}
	
	`,
	"infobox-11": `
	.infobox-11{
		display: flex;
		align-items: center;
		padding-bottom: 30px;
	}
	.infobox-11 .index{
		position: relative;
		flex-shrink: 0;
		display: inline-block;
		width: 3.5em;
		height: 3.5em;
		font-size: 24px;
		text-align: center;
		line-height: 3.5em;
	
		margin-right: 20px;
		color: var(--accent-color);
		border-radius: 50%;
		overflow: hidden;
	}
	.infobox-11 .index::before{
		content: '';
		position: absolute;
		top:0;
		right: 0;
		bottom: 0;
		left: 0;
		border: 2px solid currentColor;
		border-radius: 50%;
		z-index: 0;
	}
	.infobox-11 .index::after{
		content: '';
		position: absolute;
		top:10px;
		right: 10px;
		bottom: 10px;
		left: 10px;
		background: currentColor;
		border-radius: 50%;
		z-index: 0;
	}
	.infobox-11 .index span{
		color: #ffffff;
		position: relative;
		z-index: 1;
	}
	.infobox-11 .content > *{
		margin: 0 0 8px 0;
	}
	.infobox-11 .content > *:last-child{
		margin-bottom: 0;
	}
	`,
	"infobox-12": `
	.infobox-12{
		position: relative;
		-webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.1);
		box-shadow: 0px 0px 25px rgba(0,0,0,0.1);
		background-color: #FFF;
		padding: 36px 40px 38px 110px;
		border-radius: 3px;
		vertical-align: bottom;
		overflow: hidden;
	}
	.infobox-12::before{
		content: '';
		position: absolute;
		top: -78px;
		left: -70px;
		background-color: currentColor;
		width: 163px;
		height: 163px;
	
		border-radius: 50%;
	
		-webkit-transition: all cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
		transition: all cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
	}
	.infobox-12 .icon{
		position: absolute;
		left: 0;
		top: 0;
		width: 87px;
		height: 63px;
		display: flex;
		justify-content: center;
		align-items: center;
		color: #ffffff;
		font-size: 50px;
	}
	.infobox-12 *{
		position: relative;
		margin: 0;
		-webkit-transition: all cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
		transition: all cubic-bezier(0.420, 0.000, 1.000, 1.000) 300ms;
	}
	.infobox-12 p{
		font-size: 16px;
		line-height: 26px;
		color: #666666;
	}
	.infobox-12 p:first-of-type{
		margin-top: 5px;
	}
	.infobox-12:hover::before{
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		border-radius: initial;
	}
	.infobox-12:hover *{
		color: #ffffff !important;
	}
	`,
	"infobox-13": `
	.infobox-13{
		display: flex;
		justify-content: flex-start;
		align-items: flex-start;
		margin-bottom: 47px;
	}
	.infobox-13 .pic{
		margin-right: 29px;
		margin-left: 29px;
		flex-shrink: 0;
	}
	.infobox-13 .content >*:first-child{
		margin-top: 0;
	}
	.infobox-13 .content >*:last-child{
		margin-bottom: 0;
	}
	@media (max-width: 768px) {
		.infobox-13 .pic{
			margin-left: 0;
		}
	}
	`,
	"infobox-15": `
	.infobox-15 {
		background-color: #ffffff;
		padding: 23px 37px 25px 37px;
		margin-bottom: 30px;
		border-radius: 0 4px 4px 0;
		position: relative;
		z-index: 1;
		box-shadow: 0px 0 0 1px #e2e2e2 inset;
		transition: all ease-in 300ms;
	}

	.infobox-15:hover {
		background-color: var(--accent-color);
		border-color: rgba(0, 0, 0, .12);
		color: #FFF;
		box-shadow: 0 0 0 0 #e2e2e2 inset;
	}

	.infobox-15::before {
		content: "";
		top: 0;
		bottom: 0;
		left: 0;
		border-left: 6px solid var(--accent-color);
		position: absolute;
		transition: all ease-in 300ms;
	}

	.infobox-15:hover::before {
		border-left-color: rgba(0, 0, 0, .1) !important;
	}

	.infobox-15 .title {
		transition: all ease-in 300ms;
	}

	.infobox-15:hover .title {
		color: #FFF;
	}

	.infobox-15.color-1:hover {
		background-color: var(--accent-color);
	}

	.infobox-15.color-1::before {
		border-left-color: var(--accent-color);
	}

	.infobox-15.color-2:hover {
		background-color: var(--accent-color2);
	}

	.infobox-15.color-2::before {
		border-left-color: var(--accent-color2);
	}

	.infobox-15.color-3:hover {
		background-color: var(--accent-color3);
	}

	.infobox-15.color-3::before {
		border-left-color: var(--accent-color3);
	}

	.infobox-15.color-4:hover {
		background-color: var(--accent-color4);
	}

	.infobox-15.color-4::before {
		border-left-color: var(--accent-color4);
	}

	.infobox-15 p:last-child {
		margin: 0;
	}
	`,
	"infobox-16": `
	.infobox-16 {
		margin: 0 0 30px;
	}

	.infobox-16 .number {
		width: 104px;
		height: 91px;
		line-height: 108px;
		text-align: center;
		display: inline-block;
		font-size: 32px;
		color: #fff;
		margin-bottom: 18px;
	}

	.infobox-16 .title {
		margin-bottom: 12px;
	}`,
	"infobox-17": `.infobox-17 {
		display: flex;
		padding: 35px 48px 24px;
		border: 1px solid rgba(255, 255, 255, 0.4);
		border-radius: 3px;
	}

	.infobox-17 .icon {
		flex-shrink: 0;
		font-size: 42px;
		line-height: 1;
		margin-right: 20px;
	}

	.infobox-17 .content p {
		line-height: 1.625;
	}

	.infobox-17-list {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		height: 100%;
		list-style: none;
		margin: 0;
	}

	@media (max-width: 575px) {
		.infobox-17 {
			flex-wrap: wrap;
			text-align: center;
		}

		.infobox-17 .icon {
			margin: 0 auto;
		}

		.infobox-17 .content {
			width: 100%;
		}
	}

	.infobox-17-list li {
		margin-bottom: 30px;
	}

	.infobox-17-list li:last-child {
		margin-bottom: 0;
	}
	`,
	"iconbox-01": `
	.iconbox-01 {
		display: flex;
		flex-wrap: wrap;
		margin-left: -15px;
		margin-right: -15px;
		margin-bottom: 30px;
	}
	.iconbox-01 .icon{
		flex: 0 0 auto;
		width: auto;
		max-width: 100%;
		padding-left: 15px;
		padding-right: 15px;
		font-size: 30px;
	}
	.iconbox-01 .icon i{
		width: 2.4em;
		height: 2.4em;
		text-align: center;
		border-radius: 50%;
		color: var(--accent-color);
		background-color: transparent;
		-webkit-box-shadow: 0px 0px 25px rgba(0,0,0,0.1) ;
		box-shadow: 0px 0px 25px rgba(0,0,0,0.1) ;
	
		-webkit-transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.iconbox-01 .content{
		flex-basis: 0;
		flex-grow: 1;
		max-width: 100%;
		padding-left: 15px;
		padding-right: 15px;
	}
	.iconbox-01 .content h6{
		margin-top: 0;
	}
	.iconbox-01 .content .line{
		width: 30px;
		height: 1px;
		background-color: #e4e4e4;
		margin: 25px 0 22px;
	}
	.iconbox-01:hover .icon i{
		color: #ffffff;
		background-color: var(--accent-color);
		-webkit-box-shadow: 0px 0px 0px rgba(0,0,0,0);
		box-shadow: 0px 0px 0px rgba(0,0,0,0);
	}
	`,
	"iconbox-02": `
	.iconbox-02{
		padding: 0 0 38px;
		position: relative;
	}
	.iconbox-02::before{
		content: none;
		border-bottom: 1px solid #e4e4e4;
		width: 100px;
		display: inline-block;
		margin-bottom: 60px;
	}
	
	
	.iconbox-02 .icon i{
		width: 2em;
		height: 2em;
		text-align: center;
		position: relative;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		margin-bottom: 28px;
		z-index: 1;
	}
	.iconbox-02 .icon i::after{
		content: "";
		background-color:currentColor;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		opacity: .1;
		border-radius: 5px;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		z-index: -1;
	}
	.iconbox-02:hover .icon i::after{
		border-radius: 50%;
		opacity: 1;  
	}
	
	.iconbox-02 .icon i::before,
	.iconbox-02 .icon i svg{
		transition: color .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	
	}
	.iconbox-02:hover .icon i::before,
	.iconbox-02:hover .icon i svg{
		color: #fff;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.iconbox-02 .icon + *{
		margin-bottom: 16px;
	}
	
	.row + .row > div > .iconbox-02::before{
		content: "";
	}
	
	
	@media only screen and (min-width: 768px) {
		.row + .row > div > .iconbox-02.no-line::before{
		border-color: transparent;
		}
	}
	
	
	
	.row + .row:last-child > div > .iconbox-02{
		padding-bottom: 17px;
	}
	
	@media only screen and (max-width: 767px) {
		.row  > div + div > .iconbox-02::before{
			content: "";
		}
	}
	
	`,
	"iconbox-03": `
	.iconbox-03{
		padding-bottom: 43px;
	}
	.iconbox-03 p{
		margin: 0;
	}
	.iconbox-03 .icon{
		margin-bottom: 5px;
		font-size:32px;
	}
	@media only screen and (max-width: 767px) {
		.iconbox-03{
			text-align: center
		}
	}
	`,
	"iconbox-04": `
	.iconbox-04{
		text-align: center;
		margin: 0 0 20px;
	}
	.iconbox-04 .icon{
		font-size: 50px;
		line-height: 1.7;
	}
	.iconbox-04 .icon + * {
		font-size: 18px;
		line-height: 1.8;
	}
	
	`,
	"iconbox-05": `
	.iconbox-05{
		padding-bottom: 20px;
	}
	.iconbox-05 .icon{
		font-size: 42px;
		margin-bottom: -6px;
	}
	@media only screen and (max-width: 767px) {
		.iconbox-05{
			text-align: center
		}
	}
	
	`,
	"iconbox-06": `
	.iconbox-06{
		display: flex;
		align-items: center;
		padding-bottom: 30px;
	}
	.iconbox-06 .icon{
		position: relative;
		display: inline-block;
		margin-right: 20px;
		color: var(--accent-color);
		border-radius: 50%;
	}
	.iconbox-06 .icon::before{
		content: '';
		position: absolute;
		top:0;
		right: 0;
		bottom: 0;
		left: 0;
		border: 2px solid currentColor;
		border-radius: 50%;
		pointer-events: none;
	}
	
	.iconbox-06 .icon > *{
		display: inline-flex;
		justify-content: center;
		align-items: center;
		width: 2em;
		height: 2em;
		font-size: 32px;
	}
	.iconbox-06 .content > *{
		margin: 0;
		line-height: 30px;
	}
	
	`,
	"iconbox-07": `
	.iconbox-07{
		background-color: #FFF;
		box-shadow: 0 0 25px rgba(0,0,0,.1);
		padding:50px 40px;
		text-align: center;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		margin-bottom: 25px;
		height: calc( 100% - 25px );
		display: -ms-flexbox;
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	
	
	.iconbox-07 .icon{
		width: 2.2em;
		height: 2.2em;
		text-align: center;
		background-color: var(--accent-color);
		text-align: center;
		border-radius: 50%;
		font-size: 48px;
		margin:0 auto;
		color: #fff;
		margin-bottom: 33px;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.iconbox-07 .icon i{
		width: 2.2em;
		height: 2.2em;
	}
	.iconbox-07 .title::after{
		content: "";
		width: 52px;
		border-bottom: 1px solid var(--accent-color);
		display: block;
		margin:16px auto 20px;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.iconbox-07 .title *{
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.iconbox-07 .btn{
		margin-top: auto;
		padding-top: 15px;
	}
	.iconbox-07.active,
	.iconbox-07:hover{
		color: #fff;
		background-color: var(--accent-color);
	}
	.iconbox-07.active .icon,
	.iconbox-07:hover .icon{
		color: var(--accent-color);
		background-color: #FFF;
	}
	.iconbox-07.active .title *,
	.iconbox-07:hover .title *{
		color: #fff;
	}
	.iconbox-07.active .title::after,
	.iconbox-07:hover .title::after{
		border-bottom-color: #FFF;
	}
	.iconbox-07.active .button-01,
	.iconbox-07:hover .button-01{
		background-color: #FFF;
		color: var(--accent-color);
	}
	@media only screen and (max-width: 991px) {
		.iconbox-07 {
			padding:25px 15px;
		}
	}
	
	`,
	"iconbox-08": `
	
	.iconbox-08 .icon{
		font-size: 32px;
		margin-bottom: -3px;
	}
	.iconbox-08 .img{
	  
		margin-bottom: 19px;
	}
	.iconbox-08 .title{
		margin-bottom: 13px;
	}
	`,
	"iconbox-09": `
	.iconbox-09 {
		text-align: center;
		margin: 18px 0 36px;
	}
	.iconbox-09 .icon{
		text-align: center;
		font-size: 42px;
		background-color: #FFF;
		border-radius: 50%;
		margin: 0 auto 24px;
		box-shadow: 0 0 15px rgba(0,0,0,.3);
		display: inline-block;
	}
	.iconbox-09 .icon i{
		width: 2.3em;
		height: 2.3em;
	}
	
	`,
	"iconbox-10": `
	.iconbox-10{
		position: relative;
		margin-bottom: 52px;
	}
	.iconbox-10 .icon i{
		position: relative;
		display: inline-flex;
		justify-content: center;
		align-items: center;
		margin-bottom: 18px;
		width: 2.333333em;
		height: 2.333333em;
		font-size: 30px;
		background: #ffffff;
		border-radius: 50%;
		-webkit-box-shadow: 0 0 20px rgba(0,0,0,.1);
		box-shadow: 0 0 20px rgba(0,0,0,.1);
	}
	.iconbox-10 > .title{
		padding-bottom: 7px;
	}
	`,
	"iconbox-11": `
	.iconbox-11{
		box-shadow: 0 0 15px rgba(0,0,0,.2);
		border-radius: 4px;
		padding: 30px 40px 35px;
		margin:0 0 30px;
		border:3px solid transparent;
		text-align: center;
		transition: all ease-in-out 300ms;
		position: relative;
	}
	.iconbox-11 .icon{
		padding: 25px 0 ;
	}
	
	.iconbox-11 .title{
		padding: 0 0 7px;
	}
	.iconbox-11:hover{
		border-color:var(--accent-color);
	}
	.iconbox-11:before{
		content: "";
		position: absolute;
		background-color:var(--accent-color);
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		pointer-events: none;
		opacity: 0;
		transition: all ease-in-out 300ms;
	}
	.iconbox-11:hover::before{
		opacity: .1;
	}

	`,
	"iconbox-12": `
	.iconbox-12{
		display: -ms-flex;
		display: flex;
		padding-bottom: 10px;
	}
	.iconbox-12 .icon{
		margin-right: 20px;
		color: var(--accent-color);
		font-size: 42px;
	}
	.iconbox-12 .content > *{
		margin: 0;
		line-height: 30px;
	}
	.iconbox-12 h6{
		font-weight: 700;
		font-size: 16px;
	}
	`,
	"iconbox-13": `
	.iconbox-13{
		padding:30px 25px 25px;
		margin-bottom: 25px;
	}
	.iconbox-13.active{
		box-shadow: 0 0 20px rgba(0,0,0,.15);
	}
	
	.iconbox-13 .icon{
		margin-bottom: 28px;
	}
	.iconbox-13 .title{
		margin-bottom: 5px;
	}
	.iconbox-13 p:last-child{
		margin-bottom: 0
	}
	`,
	"iconbox-14": `
	.iconbox-14{
		display: -ms-flexbox;
		display: flex;
		-ms-flex-wrap: nowrap;
		flex-wrap: nowrap;
		margin-bottom: 47px;
	}
	.iconbox-14 .icon{
		padding:0 16px 10px 0 ;
		color: #4c4c4c;
		font-size: 40px;
		line-height: 1;
		
	}
	.iconbox-14 .title{
		margin: 0;
		font-size: 18px;
		line-height:1.2;
		font-weight:700;
	}
	.iconbox-14 .cont p{
		margin: 0;
		font-size: 14px;
	}
	`,
	"iconbox-15": `
	.iconbox-15 {
		color:#666666;
		margin-bottom: 56px;
	}
	.iconbox-15 .icon{
		 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='-17 -4.084 234 195' style='color:%23e0e8fd' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill='currentColor' d='M149.09,7.096h13.784c3.43,0,6.215-2.503,6.215-5.59c0-3.088-2.785-5.59-6.215-5.59H149.09 c-3.432,0-6.214,2.503-6.214,5.59C142.876,4.593,145.658,7.096,149.09,7.096z'/%3E%3Cpath fill='currentColor' d='M153.459,181.839h-7.769c-2.737,0-4.951,1.993-4.951,4.453c0,2.461,2.214,4.455,4.951,4.455h7.769 c2.734,0,4.951-1.994,4.951-4.455C158.41,183.834,156.193,181.839,153.459,181.839z'/%3E%3Cpath fill='currentColor' d='M207.456,131.304h-8.669c-7.293,0-13.204-5.318-13.204-11.879l0,0c0.491-9.23,2.166-9.95,5.971-11.851 l6.874-0.029c0,0,13.641,0.357,13.495-12.142c0-6.705-6.044-12.141-13.495-12.141h-11.262c-0.394,0-0.78,0.023-1.165,0.052 c-2.093-14.998-7.927-28.796-16.549-40.408h4.513c6.38,0,11.552-4.654,11.552-10.395c0-5.741-5.172-10.393-11.552-10.393h-22.331 c-1.156,0-2.269,0.157-3.319,0.44c-14.227-9.75-31.433-15.465-49.979-15.465c-4.639,0-9.193,0.36-13.64,1.048H42.318 c-5.2,0-9.417,3.793-9.417,8.472c0,4.679,4.216,8.473,9.417,8.473h2.536c-8.094,6.148-15.088,13.658-20.663,22.188H2.902 c-6.433,0-11.65,4.693-11.65,10.482v4.192c0,5.789,5.217,10.482,11.65,10.482h9.993c-2.008,7.406-3.1,15.191-3.1,23.234 c0,5.063,0.447,10.021,1.263,14.85H2.869C-8.104,110.515-17,118.846-17,129.12c0,10.273,8.896,18.604,19.869,18.604h23.852 c0.084,0.114,0.163,0.232,0.248,0.348c-2.563,0.986-4.357,3.276-4.357,5.942c0,3.569,3.217,6.463,7.185,6.463h5.339 c1.467,0,2.835,0.373,4.005,1.01c1.004,0.547,1.861,1.285,2.5,2.169c0.795,1.097,1.261,2.402,1.261,3.809 c0,3.859-3.476,6.987-7.766,6.987H20.96l0,0h14.173H20.96c-2.627,0-4.758,1.916-4.758,4.281c0,2.364,2.131,4.28,4.758,4.28h62.762 c4.755,0.79,9.632,1.223,14.612,1.223c17.108,0,33.077-4.869, 46.618-13.276h29.493c4.182,0,7.572-3.051,7.572-6.813 c0-3.764-3.391-6.814-7.572-6.814h-12.589c3.214-3.313,6.166-6.877,8.835-10.658c0.024,0,0.043,0.003,0.065,0.003h36.697 c4.719,0,8.544-3.441,8.544-7.687S212.175,131.304,207.456,131.304z'/%3E%3C/svg%3E");
		 width: 153px;
		 height: 127px;
		 line-height: 127px;
		 background-repeat: no-repeat;   
		 background-size:  100% 100%;
		 font-size: 52px;
		 margin: 0px 0 44px;
		 position: relative;
		 color: #2c5cda;
		 text-align: center;
		 display: inline-block;
	}
	.iconbox-15 .icon i{
		color: inherit;
		width: 100%;
		height: 100%;
   }
	 
	.row > div:nth-child(3n+2) .iconbox-15 .icon{
			 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='-17 -4.084 234 195' style='color:%23ffe6f2' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill='currentColor' d='M149.09,7.096h13.784c3.43,0,6.215-2.503,6.215-5.59c0-3.088-2.785-5.59-6.215-5.59H149.09 c-3.432,0-6.214,2.503-6.214,5.59C142.876,4.593,145.658,7.096,149.09,7.096z'/%3E%3Cpath fill='currentColor' d='M153.459,181.839h-7.769c-2.737,0-4.951,1.993-4.951,4.453c0,2.461,2.214,4.455,4.951,4.455h7.769 c2.734,0,4.951-1.994,4.951-4.455C158.41,183.834,156.193,181.839,153.459,181.839z'/%3E%3Cpath fill='currentColor' d='M207.456,131.304h-8.669c-7.293,0-13.204-5.318-13.204-11.879l0,0c0.491-9.23,2.166-9.95,5.971-11.851 l6.874-0.029c0,0,13.641,0.357,13.495-12.142c0-6.705-6.044-12.141-13.495-12.141h-11.262c-0.394,0-0.78,0.023-1.165,0.052 c-2.093-14.998-7.927-28.796-16.549-40.408h4.513c6.38,0,11.552-4.654,11.552-10.395c0-5.741-5.172-10.393-11.552-10.393h-22.331 c-1.156,0-2.269,0.157-3.319,0.44c-14.227-9.75-31.433-15.465-49.979-15.465c-4.639,0-9.193,0.36-13.64,1.048H42.318 c-5.2,0-9.417,3.793-9.417,8.472c0,4.679,4.216,8.473,9.417,8.473h2.536c-8.094,6.148-15.088,13.658-20.663,22.188H2.902 c-6.433,0-11.65,4.693-11.65,10.482v4.192c0,5.789,5.217,10.482,11.65,10.482h9.993c-2.008,7.406-3.1,15.191-3.1,23.234 c0,5.063,0.447,10.021,1.263,14.85H2.869C-8.104,110.515-17,118.846-17,129.12c0,10.273,8.896,18.604,19.869,18.604h23.852 c0.084,0.114,0.163,0.232,0.248,0.348c-2.563,0.986-4.357,3.276-4.357,5.942c0,3.569,3.217,6.463,7.185,6.463h5.339 c1.467,0,2.835,0.373,4.005,1.01c1.004,0.547,1.861,1.285,2.5,2.169c0.795,1.097,1.261,2.402,1.261,3.809 c0,3.859-3.476,6.987-7.766,6.987H20.96l0,0h14.173H20.96c-2.627,0-4.758,1.916-4.758,4.281c0,2.364,2.131,4.28,4.758,4.28h62.762 c4.755,0.79,9.632,1.223,14.612,1.223c17.108,0,33.077-4.869, 46.618-13.276h29.493c4.182,0,7.572-3.051,7.572-6.813 c0-3.764-3.391-6.814-7.572-6.814h-12.589c3.214-3.313,6.166-6.877,8.835-10.658c0.024,0,0.043,0.003,0.065,0.003h36.697 c4.719,0,8.544-3.441,8.544-7.687S212.175,131.304,207.456,131.304z'/%3E%3C/svg%3E");
			 color: #fd4ea5;
	}
	.row > div:nth-child(3n+3) .iconbox-15 .icon{
		background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='-17 -4.084 234 195' style='color:%23daf6ef' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill='currentColor' d='M149.09,7.096h13.784c3.43,0,6.215-2.503,6.215-5.59c0-3.088-2.785-5.59-6.215-5.59H149.09 c-3.432,0-6.214,2.503-6.214,5.59C142.876,4.593,145.658,7.096,149.09,7.096z'/%3E%3Cpath fill='currentColor' d='M153.459,181.839h-7.769c-2.737,0-4.951,1.993-4.951,4.453c0,2.461,2.214,4.455,4.951,4.455h7.769 c2.734,0,4.951-1.994,4.951-4.455C158.41,183.834,156.193,181.839,153.459,181.839z'/%3E%3Cpath fill='currentColor' d='M207.456,131.304h-8.669c-7.293,0-13.204-5.318-13.204-11.879l0,0c0.491-9.23,2.166-9.95,5.971-11.851 l6.874-0.029c0,0,13.641,0.357,13.495-12.142c0-6.705-6.044-12.141-13.495-12.141h-11.262c-0.394,0-0.78,0.023-1.165,0.052 c-2.093-14.998-7.927-28.796-16.549-40.408h4.513c6.38,0,11.552-4.654,11.552-10.395c0-5.741-5.172-10.393-11.552-10.393h-22.331 c-1.156,0-2.269,0.157-3.319,0.44c-14.227-9.75-31.433-15.465-49.979-15.465c-4.639,0-9.193,0.36-13.64,1.048H42.318 c-5.2,0-9.417,3.793-9.417,8.472c0,4.679,4.216,8.473,9.417,8.473h2.536c-8.094,6.148-15.088,13.658-20.663,22.188H2.902 c-6.433,0-11.65,4.693-11.65,10.482v4.192c0,5.789,5.217,10.482,11.65,10.482h9.993c-2.008,7.406-3.1,15.191-3.1,23.234 c0,5.063,0.447,10.021,1.263,14.85H2.869C-8.104,110.515-17,118.846-17,129.12c0,10.273,8.896,18.604,19.869,18.604h23.852 c0.084,0.114,0.163,0.232,0.248,0.348c-2.563,0.986-4.357,3.276-4.357,5.942c0,3.569,3.217,6.463,7.185,6.463h5.339 c1.467,0,2.835,0.373,4.005,1.01c1.004,0.547,1.861,1.285,2.5,2.169c0.795,1.097,1.261,2.402,1.261,3.809 c0,3.859-3.476,6.987-7.766,6.987H20.96l0,0h14.173H20.96c-2.627,0-4.758,1.916-4.758,4.281c0,2.364,2.131,4.28,4.758,4.28h62.762 c4.755,0.79,9.632,1.223,14.612,1.223c17.108,0,33.077-4.869, 46.618-13.276h29.493c4.182,0,7.572-3.051,7.572-6.813 c0-3.764-3.391-6.814-7.572-6.814h-12.589c3.214-3.313,6.166-6.877,8.835-10.658c0.024,0,0.043,0.003,0.065,0.003h36.697 c4.719,0,8.544-3.441,8.544-7.687S212.175,131.304,207.456,131.304z'/%3E%3C/svg%3E");
		color: var(--accent-color);
	}
	.iconbox-15 .title{
		font-weight: 700;
		margin-bottom: 17px;
	}
	`,
	"iconbox-16": `
	.iconbox-16{
		margin-bottom: 46px;
	}
	.iconbox-16 .icon{
		margin-bottom: 23px;
	}
	.iconbox-16 .title{
		margin: 0px 0px 18px;
	}
	.iconbox-16 p{
		color: #d5d6df;
	}
	`,
	"iconbox-17": `.iconbox-17{
		display: flex;
		justify-content: flex-start;
		align-items: flex-start;
		margin-bottom: 49px;
	}
	.iconbox-17 .icon{
		margin-right: 20px;
		margin-left: 20px;
		flex-shrink: 0;
		margin-top: 7px;
	}
	.iconbox-17 .icon > i{
		color: #fff;
		background:var(--accent-color);
		width: 2.63em;
		height: 2.63em;
		display: inline-flex;
		justify-content: center;
		align-items: center;
		border-radius: 50%;
	}
	.iconbox-17 .content p{
		line-height: 1.625;
	}
	.iconbox-17 .content >*:first-child{
		margin-top: 0;
	}
	.iconbox-17 .content >*:last-child{
		margin-bottom: 0;
	}
	@media only screen and (max-width: 991px) {
		.iconbox-17 .icon {
			margin-left: 0;
		}
	}
	`,
	"iconbox-18": `.iconbox-18 {
        padding: 40px 40px 34px;
        -webkit-transition: all 300ms ease-in;
        transition: all 300ms ease-in;
        margin: -1px;
        z-index: 1;
        position: relative;
        min-height: calc(100% + 2px);
        border-bottom: 4px solid transparent;
        border-radius: 3px;
    }
    
    .iconbox-18:hover,
    .iconbox-18.active {
        background-color: #FFF;
        box-shadow: 0 0 20px rgba(0, 0, 0, .1), 0 5px 15px rgba(0, 0, 0, .2);
        border-bottom-color: var(--accent-color2);
    }
    
    .iconbox-18 .icon {
        margin-bottom: 23px;
    }
    
    .iconbox-18 p {
        margin: 0 0 0;
    }
    
    .iconbox-18-line>div {
        border-left: 1px dashed #d5d5d5;
        padding: 0;
    }
    
    .iconbox-18-line+.iconbox-18-line>div {
        border-top: 1px dashed #d5d5d5;
    }
    
    .iconbox-18-line>div:first-child {
        border-left: none;
    }
    
    .is-light-text .iconbox-18 h3,
    .is-light-text .iconbox-18 h4,
    .is-light-text .iconbox-18 h5,
    .is-light-text .iconbox-18 h6,
    .is-light-text .iconbox-18 p {
        transition: color 300ms ease-in;
    }
    
    .is-light-text .iconbox-18:hover h3,
    .is-light-text .iconbox-18:hover h4,
    .is-light-text .iconbox-18:hover h5,
    .is-light-text .iconbox-18:hover h6 {
        color: #333333;
    }
    
    .is-light-text .iconbox-18:hover p {
        color: #787878;
    }
    
    @media only screen and (max-width: 991px) {
        .iconbox-18 {
            padding: 30px 18px;
        }
    }
    
    @media only screen and (max-width: 767px) {
        .iconbox-18-line>div {
            border-top: 1px dashed #d5d5d5;
            border-left: none;
        }
    }
	`,
	"iconbox-19": `.iconbox-19 {
		display: -ms-flexbox;
		display: flex;
		margin-bottom: 8px;
	}
	
	.iconbox-19 .icon {
		flex: 0 0 auto;
		width: auto;
		width: 2em;
		height: 2em;
		font-size: 40px;
		border-radius: 50%;
		text-align: center;
		margin: 10px 28px 0 0;
		color: #fff;
		position: relative;
		z-index: 10;
	}
	
	.iconbox-19 .icon::after {
		content: "";
		background-color: currentColor;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		opacity: .1;
		border-radius: 50%;
		z-index: -1;
		transition: all 0.3s ease-in;
	}
	
	.iconbox-19 .icon i {
		vertical-align: middle;
		transition: all 0.3s ease-in;
	}
	
	.iconbox-19:hover .icon::after {
		opacity: 1;
	}
	
	.iconbox-19:hover .icon i {
		color: #fff;
	}
	`,
	"iconbox-20": `.iconbox-20 {
		display: -ms-flexbox;
		display: flex;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		-ms-flex-align: center;
		align-items: center;
		margin-bottom: 30px;
	}
	.iconbox-20 .icon {
		width: 64px;
		height: 64px;
		text-align: center;
		background-color: var(--accent-color);
		border-radius: 50%;
		font-size: 26px;
		display: flex;
		align-items: center;
		justify-content: center;
		margin-right: 20px;
	}
	.iconbox-20 .title {
		margin: 0;
		font-weight: normal;
	}
	.iconbox-20 .subtitle {
		margin: 0;
	}`,
	"iconbox-21": `.iconbox-21 {
		margin: 0 0 10px;
	}
	.iconbox-21 .icon {
		position: relative;
		display: inline-block;
		z-index: 1;
		margin: 0 0 40px;
		height: 100px;
		line-height: 100px;
		width:80px;
	}
	
	.iconbox-21 .number {
		font-size: 150px;
		color: #f4f4f4;
		position: absolute;
		line-height: 1;
		font-style: italic;
		font-weight: 700;
		left: 50%;
		top: 50%;
		transform: translate(-55%, -50%);
		z-index: -1;
	}
	
	.iconbox-21 .link,
	.iconbox-21 .link:link {
		color: #787878;
		font-weight: 600;
	}
	
	.iconbox-21 .link:hover {
		color: var(--accent-color3);
	}
	
	.iconbox-21 .link::after {
		content: "+";
		font-size: 24px;
		line-height: 1;
		display: inline-block;
		vertical-align: top;
		margin: 0 0 0px 8px;
		color: var(--accent-color3);
	}
	
	.iconbox-21 p:last-child {
		margin: 0;
	}
	
	@media all and (max-width: 767px) {
		.iconbox-21 {
			margin: 0 0 40px;
		}
	
		.iconbox-21 .icon {
			margin: 0 0 20px;
		}
	}	`,
	"iconbox-22": `.iconbox-22 {
		display: -ms-flexbox;
		display: flex;
		-ms-flex-align: center;
		align-items: center;
		padding: 20px;
		border-radius: 3px;
		background-color: #FFF;
		margin: 0 0 30px;
		box-shadow: 0 0 20px rgba(0, 0, 0, .1);
		text-align: left;
	}

	.iconbox-22 .icon {
		width: 64px;
		height: 64px;
		background-color: var(--accent-color2);
		font-size: 30px;
		border-radius: 50%;
		display: flex;
		align-items: center;
		justify-content: center;
		margin-right: 18px;
		flex: 0 0 64px;
		color:#FFF;
	}

	.iconbox-22 .title {
		color: #333333;
		font-size: 20px;
		margin: 0;
		font-weight: 700;
	}`,
	"iconbox-23":`.iconbox-23 {
		position: relative;
		text-align: center;
		display: flex;
		flex-direction: column;
		padding: 72px 30px 72px;
		background: #293340;
		border-radius: 3px;
	}

	.iconbox-23 .icon,
	.iconbox-23 .title,
	.iconbox-23 .btn {
		flex-shrink: 0;
	}

	.iconbox-23 .content {
		flex-grow: 1;
	}

	.iconbox-23 .icon,
	.iconbox-23 .title>*,
	.iconbox-23 .content {
		color: #ffffff;
	}

	.iconbox-23 .icon {
		font-size: 0;
		margin-bottom: 16px;
	}

	.iconbox-23 .icon .sico {
		font-size: 63px;
	}

	.iconbox-23 .title {
		position: relative;
		padding-bottom: 17px;
		margin-bottom: 23px;
	}

	.iconbox-23 .title::after {
		content: '';
		position: absolute;
		bottom: 0;
		left: 50%;
		width: 50px;
		transform: translateX(-50%);
		height: 1px;
		background: #ffffff;
	}

	.iconbox-23 .title>* {
		margin: 0;
	}

	.iconbox-23 .content {
		margin-bottom: 40px;
	}

	.iconbox-23 .content p:last-child {
		margin-bottom: 0;
	}

	.iconbox-23 .btn a {
		position: relative;
		font-weight: 600;
		color: var(--accent-color);
	}

	.iconbox-23 .btn a::after {
		content: '+';
		font-weight: 800;
		font-size: 1.2em;
		line-height: 1;
		margin-left: 8px;
	}

	.iconbox-23.color-1 {
		background: var(--accent-color);
	}

	.iconbox-23.color-1 .btn a {
		color: #ffffff;
	}

	.iconbox-23-list {
		margin-bottom: -30px;
	}

	.iconbox-23-list .iconbox-23 {
		height: calc(100% - 30px);
		margin-bottom: 30px;
	}`,
	"iconbox-24": `.iconbox-24 {
		background-color: #ffffff;
		text-align: center;
		padding: 41px 35px 25px;
		box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
		margin-bottom: 30px;
	}
	.iconbox-24 .icon {
		font-size: 64px;
		line-height: 1;
	}
	.iconbox-24 .title {
		margin-bottom: 20px;
	}`,
	"iconbox-25": `
	.iconbox-25 {
		text-align: center;
	}
	.iconbox-25 .icon {
		margin: 0 0 33px;
	}
	.iconbox-25 .icon i {
		width: 2em;
		height: 2em;
		color: #fff;
		background-color: #527dd6;
		border-radius: 50%;
	}
	.iconbox-25 .title {
		margin: 0 0 18px;
	}
	.iconbox-25 .link {
		position: relative;
		padding-left: 24px;
	}
	.iconbox-25 .link::before,
	.iconbox-25 .link::after {
		content: "";
		width: 7px;
		height: 7px;
		display: inline-block;
		border-right: 1px solid currentColor;
		border-bottom: 1px solid currentColor;
		-webkit-transform: rotate(-45deg);
		transform: rotate(-45deg);
		margin: 0 10px 2px 0;
		position: absolute;
		left: 0;
		top: 7px;
	}
	.iconbox-25 .link::after {
		left: 4px;
	}
	.iconbox-25.color-2 .icon i {
		background-color: #5bc5db;
	}
	`,
	"iconbox-26": `.iconbox-26 {
		text-align: center;
		border: 1px solid #e5e5e5;
		padding: 42px 20px 36px;
		margin: 0 0 30px;
		background-color: #fff;
		transition: all 300ms ease-in;
	}

	.iconbox-26 .icon {
		width: 80px;
		height: 80px;
		display: inline-flex;
		justify-content: center;
		align-items: center;
		font-size: 42px;
		color: #FFF;
		background-color: var(--accent-color);
		line-height: 1;
		margin: 0 auto 24px;
		transition: all 300ms ease-in;
		border-radius: 50%;
	}

	.iconbox-26 .title {
		margin: 0 0 18px;
		transition: all 300ms ease-in;
	}

	.iconbox-26 p:last-child {
		margin: 0;
	}

	.iconbox-26:hover {
		background-color: var(--accent-color);
	}

	.iconbox-26:hover .icon,
	.iconbox-26:hover .title,
	.iconbox-26:hover {
		color: #fff;
	}

	.iconbox-26:hover .icon {
		background-color: rgba(0, 0, 0, .1);
	}`,
	"iconbox-27": `.iconbox-27 {
		display: -ms-flexbox;
		display: flex;
		margin-bottom: 8px;
	}
	
	.iconbox-27 .icon {
		flex: 0 0 auto;
		width: auto;
		width: 1.75em;
		height: 1.75em;
		font-size: 46px;
		border-radius: 50%;
		text-align: center;
		margin: 10px 28px 0 0;
		color: #fff;
		position: relative;
		z-index: 10;
		background-color: var(--accent-color);
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.iconbox-27 .icon i {
		vertical-align: middle;
		transition: all 0.3s ease-in;
	}`,
	"iconbox-28": `.iconbox-28 {
		overflow: hidden;
		height: 145px;
	}

	.iconbox-28 p {
		margin: 0;
	}

	.iconbox-28 .content {
		overflow: hidden;
		max-height: 0;
	}

	.iconbox-28 .icon {
		font-size: 42px;
		height: 64px;
		margin-bottom: 7px;
	}

	.iconbox-28 .icon,
	.iconbox-28 .content {
		transition: all 300ms ease-in;
	}

	.iconbox-28:hover .icon {
		margin-top: -67px;
	}

	.iconbox-28:hover .content {
		max-height: 100px;
	}

	.cell-active .iconbox-28 .icon {
		margin-top: 0;
	}

	.cell-active .iconbox-28 {
		overflow: visible;
		height: auto;
	}

	.cell-active .iconbox-28 .content {
		max-height: 100px;
	}`,
	"img-box01": `
	.img-box01{
		text-align: center;
		margin: 0 0 54px;
		color: #787878;
		font-weight: 600;
	}
	.img-box01 .pic{
		margin-bottom: 22px;
		position: relative;
	}
	.img-box01 .pic::before{
		content: "";
		background-color: currentColor;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		z-index: 1;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		opacity: 0;
		pointer-events: none;
	}
	.img-box01 .pic::after{
		content: "+";
		font-family: "Times New Roman",Georgia,sans-serif;
		position: absolute;
		color: currentColor;
		left: 50%;
		top: 50%;
		margin: -20px 0 0 -20px;
		z-index: 2;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		background-color: #fff;
		border-radius: 50%;
		font-size: 28px;
		font-weight: 100;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		opacity: 0;
		pointer-events: none;
	}
	.img-box01:hover .pic::before{
		opacity: .8;
	}
	.img-box01:hover .pic::after{
		opacity: 1;
	}
	 
	.img-box01 .pic + *{
		margin-bottom: 7px;
	}
	.img-box01 a,
	.img-box01 a:link,
	.img-box01 a:visited,
	.img-box01 a:active{
		color: #424242;
	}
	.img-box01 a:hover{
		color: var(--accent-color);
	}
	`,
	"img-box02": `
	.img-box02{
		position: relative;
	}
	.img-box02 .cont{
		position: absolute;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		display: flex;
		flex-direction: column;
		justify-content: flex-end;
		text-align: center;
		background-color: rgba(0,0,0,0);
		color: #fff;
		padding: 0px 30px;
		pointer-events: none;
		transition: background-color .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		overflow: hidden;
	}
	.img-box02 .cont p{
		opacity: 0;
		transform: translateY(30px);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.img-box02 .cont .title{
		margin: 8px -30px 0;
		padding:8px  0;
		white-space: nowrap;
		overflow: hidden;
		text-overflow:ellipsis;
		transform: translateY(100%);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.img-box02 .cont .title *{
		color: #fff;
		margin: 0;
		line-height: inherit;
		transform: translateY(30px);
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		transition-delay: .05s;
	
	}
	.img-box02 .cont > *{
		pointer-events: initial;
	}
	.img-box02:hover .cont{
		background-color: rgba(0,0,0,.35);
	}
	.img-box02:hover .cont p{
		opacity: 1;
		transform: translateY(0);
	}
	.img-box02:hover .cont .title,
	.img-box02:hover .cont .title *{
		transform: translateY(0);
	
	}
	@media only screen and (max-width:767px) {
		.img-box02{
			margin-bottom: 20px;
		}
	}
	`,
	"img-box03": `
	
	.img-box03{
		display: flex;
		flex-direction: column;
		justify-content: center;
		text-align: center;
		color: #fff;
		padding: 0px 20%;
		transition: opacity .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		min-height: 400px;
		height: 100%;
	}
	.img-box03  .title{
		margin: 8px -30px 0;
		padding: 8px 0;
	}
	.img-box03 .title *{
		color: #fff;
		margin: 0;
	}
	
	.img-box03 .icon{
		font-size: 45px;
		line-height: 1;
		margin-bottom: 8px;
	}
	.img-box03  .title{
		margin: 0 20px 21px
	}
	.img-box03 .link a,
	.img-box03 .link a:link,
	.img-box03 .link a:visited,
	.img-box03 .link a:active{
		color: #fff;
	}
	
	.img-box03 .link a i{
		margin-left: 5px;
		font-size: 13px;
		display: inline-block;
	}
	
	@media only screen and (max-width:1199px) {
		.img-box03{
			padding: 0px 25px;
		}
	}
	
	
	@media only screen and (max-width:767px) {
		.img-box03{
			padding: 0px 15px;
		}
	}
	`,
	"img-box04": `
	
	.img-box04{
		display: -ms-flexbox;
		display: flex;
		-ms-flex-wrap: nowrap;
		flex-wrap: nowrap;
		align-items: center;
		padding-bottom: 40px;
		position: relative;
	}
	.img-box04 .pic{
		width: 90px;
		height: 90px;
		overflow: hidden;
		border-radius: 50%;
		-ms-flex: 0 0 90px;
		flex: 0 0 90px;
		margin-right: 20px;
	}
	.img-box04 p:last-child{
		margin-bottom: 4px;
	}
	.img-box04::before{
	   content: "";
	   border-left: 1px solid #cccccc;
	   position: absolute;
	   top: 90px;
	   bottom: 0;
	   left: 45px;
	}
	.img-box04::after{
		content: "";
		position: absolute;
		bottom: 17px;
		left: 42px;
		width: 7px;
		height: 7px;
		background-color: var(--accent-color);
		border-radius: 50%;
	 }
	 .img-box04:last-child{
		 padding-bottom: 10px;
	 }
	.img-box04:last-child::after,
	.img-box04:last-child::before{
		content: none;
	}
	`,
	"img-box05": `
	
	.img-box05{
		text-align: center;
		margin: 0 0 30px;
		color: #787878;
		font-weight: 600;
		position: relative;
	}
	.img-box05 .pic{
		margin-bottom: 22px;
		position: relative;
	}
	.img-box05 .pic::before{
		content: "";
		background-color: currentColor;
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		z-index: 1;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		opacity: 0;
		pointer-events: none;
	}
	
	.img-box05:hover .pic::before{
		opacity: .8;
	}
	
	.img-box05 .content{
		position: absolute;
		top: 50%;
		left: 0;
		width: 100%;
		-webkit-transform: translateY(-50%) scale(.9);
		transform: translateY(-50%) scale(.9);
		z-index: 4;
		pointer-events: none;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		opacity: 0;
	}
	.img-box05:hover .content{
		opacity: 1;
		-webkit-transform: translateY(-50%) scale(1);
		transform: translateY(-50%) scale(1);
	}
	.img-box05 .content::before{
		content: "+";
		font-family: "Times New Roman",Georgia,sans-serif;
		color: currentColor;
		z-index: 2;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		background-color: #fff;
		border-radius: 50%;
		font-size: 28px;
		font-weight: 100;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		display: block;
		margin:0 auto 23px;
		color: var(--accent-color);
	}
	.img-box05 .content *{
		color: #fff;
		margin: 0;
	}
	.img-box05 .content[contenteditable],
	.img-box05 .content a,
	.img-box05 .content button{
		pointer-events: initial;
	}
	`,
	"img-box06": `
	.img-box06{
		position: relative;
		z-index: 1;
		margin-bottom: 30px;
	}
	.img-box06 .title{
		position: absolute;
		bottom: 0;
		right: 0;
		left: 0;
		background-color: rgba(0,0,0,.45);
		text-align: center;
		color: #fff;
		font-size: 18px;
		padding: 23px 0;
	}
	.img-box06 .title *{
		margin: 0;
	}
	`,
	"img-box07": `
	
	.img-box07{
		position: relative;
	}
	.img-box07 .title{
		background-color: rgba(0,0,0,.7);
		position: absolute;
		z-index: 1;
		top: 50%;
		left:68px;
		right: 68px;
		-webkit-transform: translateY(-50%) scale(0.8);
		transform: translateY(-50%) scale(0.8);
		color: #fff;
		text-align: center;
		padding: 20px 10px;
		opacity: 0;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}	
	.img-box07 .title::before{
		content: "";
		border:1px solid #666666;
		top: -7px;
		bottom: -7px;
		left: -7px;
		right: -7px;
		position: absolute;
		pointer-events: none;
	}
	.img-box07 .title *{
		color: inherit;
		margin: 0;
		font-size: 18px;
	}
	.img-box07:hover .title{
		opacity: 1;
		-webkit-transform: translateY(-50%) scale(1);
		transform: translateY(-50%) scale(1);
	}
	`,
	"img-box08": `
	
	.img-box08{
		box-shadow: 0 0 10px rgba(0,0,0,.1);
		margin-bottom: 50px;
		text-align: center;
		padding-bottom: 30px;
		height: calc(100% - 50px);
	}
	.img-box08 .product{
		margin-bottom: 16px;
	}
	
	.img-box08 .price{
		margin: 0;
		font-weight: 600;
	}
	.img-box08 .title{
		margin: 4px 0 4px;
		font-size: 18px;
	}`,
	"img-box09": `
	.img-box09 {
		position: relative;
	}
	.img-box09 .title{
		position: absolute;
		top: 50%;
		left: 0;
		width: 100%;
		text-align: center;
		padding: 20px;
		-webkit-transform: translateY(-50%) scale(.9);
		transform: translateY(-50%) scale(.9);
		color: #fff;
		opacity: 0;
		pointer-events: none;
		z-index: 4;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.img-box09:hover .title{
		opacity: 1;
		-webkit-transform: translateY(-50%) scale(1);
		transform: translateY(-50%) scale(1);
	}
	
	
	.builder-editor-mode .img-box09 .title{
		pointer-events: initial;
	}
	.img-box09 .title::before{
		content: "+";
		font-family: "Times New Roman",Georgia,sans-serif;
		color: var(--accent-color);
		z-index: 2;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		background-color: #fff;
		border-radius: 50%;
		font-size: 28px;
		font-weight: 100;
		pointer-events: none;
		display: block;
		margin:0 auto 23px;
	}
	.img-box09::before{
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background-color: var(--accent-color);
		opacity: 0;
		pointer-events: none;
		z-index: 3;
		transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	
	.img-box09:hover::before{
		opacity: .8;
	}
	`,
	"img-box10": `.img-box10 {
		position: relative;
		z-index: 1;
		overflow: hidden;
		margin: 0 0 30px;
		text-align: center;
		cursor: pointer;
	}
	
	.img-box10 .pic {
		position: relative;
		z-index: 0;
	}
	
	.img-box10 .pic::before {
		position: absolute;
		content: "";
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		background: rgba(0, 0, 0, 0.4);
		z-index: 1;
		transition: all .35s;
		pointer-events: none;
	}
	
	.img-box10 .pic img {
		width: calc(100% + 50px) !important;
		max-width: calc(100% + 50px) !important;
		transition: opacity .35s, transform .35s;
		transform: translate3d(-40px, 0, 0);
	}
	
	.img-box10 .content {
		position: absolute;
		left: 0;
		bottom: 0;
		width: 100%;
		min-height: 25%;
		max-height: 100%;
		text-align: left;
		padding: 30px 30px 20px 30px;
		color: #fff;
		font-size: 1em;
		backface-visibility: hidden;
	}
	
	.img-box10 .content>* {
		color: inherit;
	}
	
	.img-box10 .content .title {
		padding: 0;
		margin: 0;
		transform: translate3d(0, 50px, 0);
		transition: transform .35s;
	}
	
	.img-box10 .content .description {
		margin-top: 15px;
		opacity: 0;
		transform: translate3d(0, 40px, 0);
		transition: opacity .2s, transform .35s;
	}
	
	.img-box10:hover img {
		transform: translate3d(0, 0, 0);
		transition-delay: .05s;
		transition-duration: .35s;
	}
	
	.img-box10:hover .content .title {
		opacity: 1;
		transform: translate3d(0, 0, 0);
		transition-delay: .05s;
		transition-duration: .35s;
	}
	
	.img-box10:hover .content .description {
		opacity: 1;
		transform: translate3d(0, 0, 0);
		transition-delay: .05s;
		transition-duration: .35s;
	}
	`,
	"img-box11": `.img-box11 {
		position: relative;
		display: inline-block;
	}
	.img-box11 .cont {
		position: absolute;
		top: 0;
		left: 0;
		text-align: left;
		padding: 45px;
	}`,
	"img-box12": `.img-box12 {
		margin: 0 0 40px
	}
	.img-box12 .title {
		margin: 24px 0 15px;
	}
	.img-box12 .title .number {
		font-size: 48px;
		margin-right: 18px;
		display: inline-block;
		line-height: 1;
	}
	.img-box12 .title .number::after {
		content: "";
		width: 6px;
		height: 6px;
		background-color: var(--accent-color);
		display: inline-block;
		border-radius: 50%;
		margin-left: 5px;
	}`
	,
	"img-box13": `
	.img-box13 {
		display: flex;
		align-items: center;
		margin: 0 0 50px;
	}
	.img-box13 .pic {
		width: 110px;
		height: 110px;
		border-radius: 50%;
		overflow: hidden;
		margin-right: 24px;
		flex: 0 0 110px;
	}
	.img-box13 .title {
		font-size: 20px;
		margin: 0px 0px 8px;
	}
	.img-box13 .info {
		margin: 0;
		padding: 0;
		list-style: none;
		font-size: 14px;
	}
	.img-box13 .info li {
		display: inline-block;
		margin: 0 22px 0 0;
	}
	.img-box13 .info li .sico {
		margin-right: 10px;
		font-size: 1.1em;
	}
	.img-box13:last-child {
		margin: 0;
	}
	@media only screen and (max-width: 767px) {
		.img-box13 {
			display: block;
			text-align: center;
		}
		.img-box13 .pic {
			margin: 0 auto 25px;
		}
		.img-box13 .info li {
			margin: 0 12px;
		}
	}
	`
	,

	"social-01": `
	body .social-01,
	body .social-01:link,
	body .social-01:active,
	body .social-01:visited,
	body .social-01[type="button"],
	body .social-01[type="submit"] {
		width: 42px;
		height: 42px;
	    display: inline-flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		border-radius: 50%;
		border: 1px solid #787878;
		color: #787878;
		margin: 8px;
		text-decoration: none;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	
	body .social-01 i {
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .social-01:hover{
		background: var(--accent-color);
		border-color: var(--accent-color);
	}
	body .social-01:hover i {
		color: #ffffff;
	}
	`,
	"social-02": `
	
	
	body .social-02,
	body .social-02:link,
	body .social-02:active,
	body .social-02:visited,
	body .social-02[type="button"],
	body .social-02[type="submit"] {
	    display: inline-flex;
		justify-content: center;
		align-items: center;
		width: 40px;
		height: 40px;
		text-align: center;
		border-radius: 50%;
		margin: 8px;
		text-decoration: none;
		color: inherit;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		background-color: rgba(255,255,255,.1);
	}
	
	body .social-02 i {
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .social-02:hover{
		background: var(--accent-color);
		border-color: var(--accent-color);
	}
	body .social-02:hover i {
		color: #ffffff;
	}
	`,
	"social-03": `
	
	
	body .social-03,
	body .social-03:link,
	body .social-03:active,
	body .social-03:visited,
	body .social-03[type="button"],
	body .social-03[type="submit"] {
	    display: inline-flex;
		justify-content: center;
		align-items: center;
		width: 40px;
		height: 40px;
		background-color: rgba(255, 255, 255, .1);
		color: #fff;
		border-radius: 50%;
		margin: 0 10px 10px 0;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .social-03:hover{
		background: var(--accent-color);
	}
	`,
	"social-04": `
	body .social-04,
	body .social-04:link,
	body .social-04:active,
	body .social-04:visited,
	body .social-04[type="button"],
	body .social-04[type="submit"] {
		font-size: 32px;
		display: inline-block;
		text-align: center;
		color: #839eac;
		border-radius: 50%;
		margin: 0 32px 27px;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .social-04 i{
	   color: inherit;
	}
	
	body .social-04:hover{
		color: #fff;
	}
	@media only screen and (max-width: 787px) {
		body .social-04,
		body .social-04:link,
		body .social-04:active,
		body .social-04:visited,
		body .social-04[type="button"],
		body .social-04[type="submit"] {
			margin: 0 15px 15px;
		}
	}
	`,
	"social-05": `
	body .social-05,
	body .social-05:link,
	body .social-05:active,
	body .social-05:visited,
	body .social-05[type="button"],
	body .social-05[type="submit"] {
		display: inline-flex;
		justify-content: center;
		align-items: center;
		width: 42px;
		height: 42px;
		text-align: center;
		border-radius: 50%;
		border: 1px solid #424242;
		color: #424242;
		margin: 8px;
		text-decoration: none;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	
	body .social-05 i {
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}

	body .is-light-text .social-05,
	body .is-light-text .social-05:link,
	body .is-light-text .social-05:active,
	body .is-light-text .social-05:visited,
	body .is-light-text .social-05[type="button"],
	body .is-light-text .social-05[type="submit"] {
		border-color: #FFFFFF;
		color: #FFFFFF;
	}
	body .social-05:hover,
	body .is-light-text .social-05:hover{
		color: #ffffff;
		border-color: var(--accent-color);
		background-color: var(--accent-color); 
	}
	body .social-05:hover i {
		color: #ffffff;
	}
	`,
	"social-06": `
	
	body .social-06,
	body .social-06:link,
	body .social-06:active,
	body .social-06:visited,
	body .social-06[type="button"],
	body .social-06[type="submit"] {
		width: 50px;
		height: 50px;
	    display: inline-flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		border-radius: 50%;
		color: #ffff;
		margin:0 9px 20px;
		text-decoration: none;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		background-color: rgba(255,255,255,.1);
		font-size: 20px;
	}
	
	body .social-06 i {
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
	}
	body .social-06:hover{
		color: #ffffff;
		border-color: var(--accent-color);
		background-color: var(--accent-color); 
	}
	body .social-06:hover i {
		color: #ffffff;
	}
	`,
	"social-07": `
	
	body .social-07,
	body .social-07:link,
	body .social-07:active,
	body .social-07:visited,
	body .social-07[type="button"],
	body .social-07[type="submit"] {
		display: inline-block;
		color: currentColor;
		text-decoration: none;
		font-size: 16px;
		margin: 8px;
	}
	body .social-07 i{
		margin:0 8px 2px 0; 
		vertical-align: middle;
	}
	
	`,
	"social-08": `
	body .social-08,
	body .social-08:link,
	body .social-08:active,
	body .social-08:visited,
	body .social-08[type="button"],
	body .social-08[type="submit"] {
		display: inline-block;
		color: currentColor;
		text-decoration: none;
		font-size: 20px;
		margin: 6px;
	}
	body .social-08 i{
		margin-right: 8px;
	}
	body .social-08:hover{
		color: var(--accent-color);
	}
	`,
	"social-09": `
	
	body .social-09,
	body .social-09:link,
	body .social-09:active,
	body .social-09:visited,
	body .social-09[type="button"],
	body .social-09[type="submit"] {
	    display: inline-flex;
		justify-content: center;
		align-items: center;
		width: 42px;
		height: 42px;
		text-align: center;
		border-radius: 50%;
		color: #787878;
		margin: 0 18px 8px 0;
		text-decoration: none;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		box-shadow:0px 5px 15px rgba(0,0,0,.15)
	}
	body .social-09:hover{
		background-color: var(--accent-color);
		color: #fff;
	}`,
	"social-10": `
	body .social-10{
		min-width: 180px;
		display: inline-block;
		margin: 0 0 20px 0;
		font-size: 18px;
		color: #fff;
	}
	
	body .social-10 i {
		display: inline-flex;
		justify-content: center;
		align-items: center;
		width: 42px;
		height: 42px;
		text-align: center;
		border-radius: 50%;
		color: #ffffff;
		text-decoration: none;
		-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		background-color: var(--accent-color);
		margin-right: 12px;
	}
	body .social-10:hover i{
		background-color: var(--accent-color);
	}
	body .social-10:link,
	body .social-10:active,
	body .social-10:visited{
		color: #fff;
	}`,
	"social-11": `
	body .social-11,
		body .social-11:link,
		body .social-11:active,
		body .social-11:visited {
			display: inline-block;
			color: #424242;
			text-decoration: none;
			margin: 8px;
		}

		.is-light-text .social-11,
		.is-light-text .social-11:link,
		.is-light-text .social-11:active,
		.is-light-text .social-11:visited {
			color: #ffffff;
		}

		body .social-11 i {
			margin: 0 8px 4px 0;
			vertical-align: middle;
		}

		body .social-11::after {
			content: "";
			height: 24px;
			border-left: 1px solid currentColor;
			margin: 0 22px 0 32px;
			opacity: .25;
		}

		body .social-11:last-child::after {
			content: none;
		}
	`,
	"social-12": `
		body .social-list-12 {
			margin-left: -5px;
			margin-right: -5px;
			font-size: 0;
		}
		body .social-12 {
			display: inline-flex;
			justify-content: center;
			align-items: center;
			width: 40px;
			height: 40px;
			text-align: center;
			border-radius: 50%;
			color: #ffffff;
			text-decoration: none;
			background-color: var(--accent-color);
			-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
			transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
			backface-visibility: hidden;
			transform: scale(1.0001);
			margin: 0 5px 20px;
			font-size: 15px;
		}
		body .social-12 i {
			-webkit-transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
			transition: all 0.3s cubic-bezier(0.420, 0.000, 1.000, 1.000) 0s;
		}
		body .social-12:hover {
			transform: scale(1.1);
		}
		body .social-12:hover i {
			transform: scale(0.9);
		}
		body .social-12:link,
		body .social-12:active,
		body .social-12:visited {
			color: #fff;
		}
	`
	,
	"social-13": `
	body .social-13, 
	body .social-13:link, 
	body .social-13:active, 
	body .social-13:visited {
		color: #333333;
		display: inline-block;
		color: #ffffff;
		background-color: var(--button-color);
		overflow: hidden;
		box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, .2);
		transition: all ease-in 300ms;
		font-size: 15px;
		font-weight: 600;
		height: 50px;
		padding: 7px 7px 7px 30px;
		text-align: center;
		white-space: nowrap;
		vertical-align: middle;
		border-radius: 50px;
		margin: 0 0 40px;
	}
	body .social-13 i {
		width: 36px;
		height: 36px;
		background-color: #FFF;
		border-radius: 50%;
		color: var(--button-color);
		font-size: 1.1em;
	}
	body .social-13 span {
		display: inline-block;
		min-width: 110px;
		text-align: left;
		line-height: 36px;
		vertical-align: bottom;
	}
	`
	,
	"counter-01": `
	.counter-01 {
	   position: relative;
	   text-align: center;
   }
   .counter-01 .box-title{
	   font-size: 18px;
   }
   
   .counter-01 .box-title:after {
	   content: "";
	   display: block;
	   width: 20px;
	   height: 2px;
	   background: var(--accent-color);
	   margin: -2px auto 0;
   } 
  	.is-light-text .counter-01 .box-title:after {  
	   background: #FFF;
	}
   .counter-01 .custom-module,
   .counter-01 .custom-module .number{
	   margin-bottom: 3px;
	   font-size: 48px;
	   line-height: 1;
   }
   .counter-01 .custom-module .number::after{
	   content: '+';
	   display: inline-block;
	   position: relative;
   }
   .is-light-text .counter-01 .box-title{
	   color: #ffffff;
   }
   @media only screen and (max-width: 991px) {
   }
   @media only screen and (max-width: 767px) {
   }
	`,
	"counter-02": `
.counter-02 {
    position: relative;
    text-align: center;
}
.counter-02 .box-icon{
    font-size: 37px;
    margin-bottom: 7px;
}
.counter-02 .box-title{
    font-size: 48px;
}
.is-light-text .counter-02 .box-title{
    color: #ffffff;
}
.counter-02 .custom-module,
.counter-02 .custom-module .number{
    line-height: 1;
}
.counter-02 .subtitle {
    position: relative;
    font-size: 20px;
    font-weight: 400;
    margin: 18px 0 0;
}
.is-light-text .counter-02 .subtitle{
    color: #ffffff;
}
.counter-02 .subtitle::before{
    content: "";
    display: block;
    width: 30px;
    height: 2px;
    background: var(--accent-color);
    margin: 22px auto 25px;
}
@media only screen and (max-width: 991px) {
}

@media only screen and (max-width: 767px) {
}

`,
	"counter-03": `
.counter-03{
	position: relative;
}
.counter-03 .box-title{
	font-size: 16px;
}
.counter-03 .custom-module,
.counter-03 .custom-module .number{
	margin-bottom: 5px;
	font-size: 36px;
	font-weight: 700;
	line-height: 1;
	color: #222222;
}
.counter-03 .custom-module .number::after{
	content: '+';
	display: inline-block;
	position: relative;
}
.is-light-text .counter-03 .box-title,
.is-light-text .counter-03 .custom-module,
.is-light-text .counter-03 .custom-module .number{
	color: #ffffff;
}
`,
	"counter-05": `
.counter-05 {
	margin-bottom: 40px;
}
 .counter-05 .custom-module{
	 font-size: 60px;
	 font-weight: 700;
	 line-height: 1;
 margin:0;
 }
 .counter-05 .custom-module .number::after{
	 content: "+";
 }
 .counter-05 .title{
  margin-top: 14px;
	 margin-bottom: 24px;
 }
   `,
	"counter-06": `  .counter-06 {
	position: relative;
	text-align: center;
}
.counter-06 .box-title{
	font-size: 16px;
	display: inline-flex;
	align-items: center;
	flex-wrap: wrap;
	text-align: left;
}
.counter-06 .custom-module{
	margin-right: 6px;
}
.counter-06 .custom-module,
.counter-06 .custom-module .number{
	font-size: 60px;
	font-weight: 700;
	line-height: 1;
}
.counter-06 .custom-module .number::after{
	content: '+';
	display: inline-block;
	position: relative;
}
.counter-06 p{
	margin: 0;
    line-height: 26px;
    font-size: 18px;
    font-weight: 600;
    color: #333;
}
@media only screen and (max-width: 991px) {
}
@media only screen and (max-width: 767px) {
}`,


	"counter-07": `.counter-07 {
	position: relative;
	z-index: 1;
    padding:15px 0;
}
.counter-07 .icon{
	color: #55596f;
	font-size: 42px;position: absolute;
	left: 0px;
	z-index: -1;
}
.counter-07 .custom-module{
	display: inline-block;
	font-size: 48px;
	font-weight: 600;
	line-height: 1;
	margin: 22px 2px 0 0;
}
.counter-07 .custom-module *{
	color: inherit;
}
.counter-07 .custom-module .number::after{
	content: "+";
}
.counter-07 .title{
	display: inline-block;
	font-size: 16px;
	color: #8c8d9a;
	border-bottom: 1px solid #5f6377;
	margin: 0;
	vertical-align: super;
	padding-bottom: 2px;
}`,
	"counter-04": `.counter-04 {
    box-shadow: 0 0 15px rgba(0, 0, 0, .2);
    padding: 44px 0px 44px 36px;

    background-color: #FFF;
}

.counter-04 p {
    margin-bottom: 0;
}

.counter-04 .custom-module {
    display: inline-block;
    font-weight: bold;
    font-size: 36px;
    color: #222222;
}

.counter-04 .plus {
    display: inline-block;
    font-size: 34px;
    color: #222222;
    font-weight: bold;
}

.counter-04 .box-title {
    line-height: 1;
    margin-bottom: 5px;
}

@media only screen and (max-width:991px) {
    .ourteamsingle-section01 {
        margin: 0px;
    }

}

@media only screen and (max-width:767px) {
    .counter-04 {
        margin: 0;
        text-align: center;
        padding: 0;
    }

    .counter-04>div {
        padding: 25px 0
    }
}
`,
	"counter-08": `    
.counter-08 .box-title{
	display: inline-flex;
	margin-bottom: 3px;
	font-size: 48px;
	font-weight: 600;
	line-height: 1;
	color: #333;
}
.counter-08 > p{
	font-size: 18px;
	line-height: 26px;
	color: #666;
} 
`,
	"counter-09": `
.counter-09{
	position: relative;
	text-align: center;
	margin-bottom: 40px;
}
.counter-09 .icon {
	font-size: 38px;
	color: var(--accent-color);
	line-height: 1.3;
}
.counter-09 .number {
	font-size: 50px;
	color: #272727;
	font-weight: 600;
	line-height: 1.6;
}
.counter-09 .subtitle {
	color: #787878;
	font-weight: normal;
	line-height: 1;
}


.is-light-text .counter-03 .subtitle,
.is-light-text .counter-03 .custom-module,
.is-light-text .counter-03 .custom-module .number{
	color: #ffffff;
}

`,
	"counter-10": `.counter-10 {
	display: flex;
	border-bottom:1px dashed #d5d5d5;
	padding: 42px 0;
	align-items: center;
}
.counter-10 .icon{
	width: 125px;
	text-align: center;
	padding-right:5px;
}
.counter-10 .custom-module{
	color: #333333;
	font-size: 40px;
	font-weight: 700;
	line-height: 1;
}
.counter-10 .title{
	font-size: 16px;
	margin:3px 0 0;
}`,
	"counter-11": `.counter-11 {
	position: relative;
	display: inline-block;
}

.counter-11 .counter-box {
	position: absolute;
	top: 42%;
	left: -80px;
	background-color: #ffffff;
	box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
	width: 200px;
	text-align: center;
	border-radius: 3px;
	padding: 40px 10px;
}

.counter-11 .counter-box.box-right {
	left: auto;
	right: -82px;
	top: 25%;
}

.counter-11 .counter-box .custom-module {
	font-size: 48px;
	font-weight: 600;
	line-height: 1;
}

.counter-11 .counter-box .custom-module .number {
	color: #333333;
}

.counter-11 .counter-box .custom-module .number::after {
	content: "+";
}

.counter-11 .counter-box .title {
	font-size: 18px;
	color: #666666;
	margin: 0 0 10px;
}

@media only screen and (max-width: 767px) {
	.counter-11 .counter-box {
		position: static;
		margin: 0 auto 15px;
	}
}
`,
"counter-12": `.counter-12 {
	margin-bottom: 30px
}

.counter-12 .number {
	font-size: 48px;
	font-weight: bold;
}

.counter-12 .number::after {
	content: "+";
	font-size: 26px;
	vertical-align: top;
	font-size: 30px;
}

.counter-12 .title {
	margin: 0;
	font-weight: 400;
}

.counter-12 .custom-module .number {
	line-height: 1.2;
}`,
"counter-13": `.counter-13 {
	position: relative;
	padding: 70px 0 0 40px;
}

.counter-13 .icon {
	display: inline-block;
	font-size: 80px;
	position: absolute;
	bottom: 0;
	left: 0;
	opacity: .2;
}

.counter-13 .number {
	font-size: 50px;
	line-height: 1;
	margin-bottom: 5px;
	display: inline-block;
}

.counter-13 .title {
	margin: 0;
	font-size: 20px;
	font-weight: normal;
}`,
"counter-14": `.counter-14 {
	text-align: center;
}
.counter-14 .title {
	font-size: 18px;
	font-weight: 400;
	margin: 5px 0 5px;
}

.counter-14 .number {
	font-size: 80px;
	font-weight: 600;
	line-height: 1.3;
}

.counter-14 .number::after {
	content: '+';
	display: inline-block;
	position: relative;
}

.counter-14::after {
	content: "";
	border-bottom: 2px solid var(--accent-color);
	width: 30px;
	display: inline-block;
}

@media only screen and (max-width:767px) {
	.counter-14 .number {
		font-size: 46px;
	}
}`,
"counter-15": `
.counter-15 {
	display: flex;
}

.counter-15 .icon {
	width: 60px;
	font-size: 60px;
	line-height: 1;
	margin-right: 15px;
}

.counter-15 .number {
	display: flex;
	font-size: 38px;
	line-height: 1;
	font-weight: 600;
}

.counter-15 .title {
	margin: 5px 0 0;
	font-size: 18px;
	font-weight: normal;
}`,
	"clientlist01": `
.clientlist01{
	text-align: center;
}
.clientlist01 a img{
	opacity: .5;
	margin: 15px 0;
	transition: opacity ease-in 300ms;
}
.clientlist01 a:hover img{
	opacity: 1;
}
`,
	"clientlist02": `.clientlist02{
	box-shadow:0 0 40px rgba(0,0,0,.1);
	border-radius: 3px;
	padding: 30px 50px;
	text-align: center;
	margin: 0px 0 15px;
	background-color: #FFF;
}

.clientlist02 img{
	opacity: .5;
	-webkit-transition: all ease-in 300ms;  
	transition: all ease-in 300ms;
	padding:15px 0;
}
.clientlist02 img:hover{
	opacity: 1;
}`,
	"clientlist03": `
.clientlist03{
	text-align: center;
}
.clientlist03 img{
    box-shadow: 0 0 10px rgba(0,0,0,.3);
    opacity: 0.3;
    transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	margin-bottom: 30px;
}
.clientlist03 a:hover img{
    opacity: 0.5;
}
`,
	"clientlist04": `
	.clientlist04 a {
		display: inline-block;
		margin: 0px 13px 20px;
	}
`,
"clientlist05": `.clientlist05 {
	text-align: center;
	overflow: hidden;
	padding-top:0;
	padding-bottom:0;
}

.clientlist05>div[class*="col"] {
	position: relative;
	padding: 30px 15px;
}

.clientlist05>div::after {
	content: "";
	position: absolute;
	top: -1px;
	right: 14px;
	left: 14px;
	border-bottom: 1px solid #ebebeb;
}

.clientlist05>div::before {
	content: "";
	position: absolute;
	left: -1px;
	top: 14px;
	bottom: 14px;
	border-left: 1px solid #ebebeb;
}

.clientlist05 img {
	opacity: 0.6;
	transition: all 0.3s ease-in;
}
.clientlist05.border-style2>div::after ,
.clientlist05.border-style2>div::before {
	border-color:#dddddd
}
.clientlist05 img:hover {
	opacity: 1;
}`,

	"blockquotes-02": `.blockquotes-02 {
    position: relative;
    font-style: normal;
    color: inherit;
    text-align: center;
    padding: 0 0 20px;

    display: flex;
    height: 100%;
    flex-direction: column;
}

.blockquotes-02 img {
    width: 100%;
}

.blockquotes-02::before {
    content: "“";
    speak: none;
    font-style: italic;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    color: currentColor;
    font-size: 56px;
    display: inline-block;
    margin: 30px auto 20px;
    line-height: 48px;

    position: absolute;
    left: 20px;
    top: 18px;
    z-index: 1;
}

.blockquotes-02 .content {
    flex-grow: 1;
    font-weight: normal;
    position: relative;
    text-indent: inherit;
    background-color: #fff;
    padding: 55px 30px 44px 60px;
    color: #787878;
    border-radius: 5px;
    text-align: left;
    -webkit-box-shadow: 0px 0px 25px rgba(15, 32, 93, 0.1);
    box-shadow: 0px 0px 25px rgba(15, 32, 93, 0.1);
}

.blockquotes-02 .content::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50px;
    border: 7px solid transparent;
    border-top-color: #fff;
}

.blockquotes-02 .title {
    display: block;
    font-size: 20px;
    margin: 0px 0px 12px;
    color: #424242;
}

.blockquotes-02 .content p {
    font-size: 16px;
    line-height: 28px;
    color: #787878;
}

.blockquotes-02 .content p:last-child {
    margin-bottom: 0;
}

.blockquotes-02 footer {
    font-size: 16px;
    line-height: 1.7;
    text-align: left;
    color: #ffffff;
    margin: 38px 0 0;
    padding: 0 0 0 20px;
    display: block;
    vertical-align: middle;
}

.blockquotes-02 footer:before {
    content: normal;
}

.blockquotes-02 .pic {
    position: relative;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
    vertical-align: middle;
    margin: 0 20px 0 auto;
    border: 3px solid #ffffff;
    background-color: #ffffff;
    width: 70px;
    height: 70px;


    border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
}

.blockquotes-02 .pic::before {
    position: absolute;
    content: '';
    display: block;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    border: 1px solid #d7dae2;
    pointer-events: none;
}

.blockquotes-02 .info {
    display: inline-block;
    font-size: 18px;
    vertical-align: middle;
    font-style: normal;
    text-align: left;
}

.blockquotes-02 .info cite {
    color: #787878;
    font-weight: normal;
    display: block;
    font-size: 16px;
}

@media only screen and (max-width: 991px) {
    .blockquotes-02 .content {
        padding: 30px 30px 30px 50px;
    }

    .blockquotes-02:before {
        left: 15px;
        top: 0px;
    }
}

@media only screen and (max-width: 767px) {}
`,
	"blockquotes-03": `
	.blockquotes-03 {
		position: relative;
		font-style: normal;
		color: inherit;
		padding: 0 0 20px;
		z-index: 2;
		display: flex;
		height: 100%;
		flex-direction: column;
	}

	.blockquotes-03 img {
		max-width: 100%;
	}

	.blockquotes-03::after {
		content: '';
		background: url("data:image/svg+xml;utf8,<svg _tmplitem='2' width='200' height='200' xmlns='http://www.w3.org/2000/svg'><path _tmplitem='2' d='M56.856,58.019 c-2.686,2.145-5.552,3.754-8.594,4.826c-3.046,1.073-6.538,1.609-10.474,1.609c-8.417,0-15.308-2.547-20.679-7.642 c-5.371-5.094-8.057-11.663-8.057-19.706c0-8.219,2.773-15.148,8.325-20.779c5.547-5.63,12.53-8.445,20.947-8.445 10.024,0,18.215,4.021,24.573,12.065c6.353,8.043,9.534,18.68,9.534,31.905c0,16.623-7.297,33.782-21.887,51.478 c-14.594,17.695-26.184,26.543-34.778,26.543c-1.435,0-2.644-0.489-3.625-1.475c-0.986-0.979-1.477-2.187-1.477-3.619 c0-1.784,3.042-4.733,9.131-8.848C41.456,100.741,53.81,81.437,56.856,58.019z M148.701,58.019 c-2.686,2.145-5.551,3.754-8.594,4.826c-3.047,1.073-6.537,1.609-10.473,1.609c-8.594,0-15.623-2.589-21.082-7.775 c-5.463-5.182-8.191-11.705-8.191-19.572c0-8.219,2.773-15.148,8.326-20.779c5.547-5.63,12.529-8.445,20.947-8.445 c10.023,0,18.303,4.068,24.84,12.199c6.535,8.136,9.803,18.726,9.803,31.771c0,16.623-7.385,33.782-22.156,51.478 c-14.77,17.695-26.451,26.543-35.045,26.543c-1.436,0-2.645-0.489-3.627-1.475c-0.984-0.979-1.477-2.187-1.477-3.619 c0-1.784,3.043-4.733,9.131-8.848C133.125,100.741,145.654,81.437,148.701,58.019z' stroke-width='15' fill='%23f6f6f6'  stroke='%23f6f6f6'></path></svg>");
		background-size: 203px;
		background-repeat: no-repeat;
		position: absolute;
		right: 15px;
		top: 32px;
		width: 176px;
		height: 140px;
		z-index: -1;
	}

	.blockquotes-03 .content {
		flex-grow: 1;
		font-weight: normal;
		position: relative;
		text-indent: inherit;
		color: #787878;
	}

	.blockquotes-03 .content p {
		font-size: 20px;
		font-style: italic;
		line-height: 32px;
		color: #666666;
	}

	.blockquotes-03 .content p:last-child {
		margin-bottom: 0;
	}

	.blockquotes-03 footer {
		text-align: left;
		margin: 32px 0 0;
		padding: 0;
		display: flex;
		align-items: center;
	}

	.blockquotes-03 .pic {
		position: relative;
		display: inline-flex;
		justify-content: center;
		align-items: center;
		flex-shrink: 0;
		overflow: hidden;
		margin: 0 20px 0 0;
		padding: 2px;
		border: 2px solid var(--accent-color);
		background-color: #ffffff;
		width: 91px;
		height: 91px;
		border-radius: 50%;
	}

	.blockquotes-03 .pic img {
		border-radius: 50%;
	}

	.blockquotes-03 .info {
		display: inline-block;
		font-size: 20px;
		line-height: 24px;
		color: #424242;
		vertical-align: middle;
		font-style: normal;
		text-align: left;
	}

	.blockquotes-03 .info cite {
		color: #787878;
		font-weight: normal;
		display: block;
		font-size: 16px;
		line-height: 20px;
		margin-top: 4px;
	}
`,
	"blockquotes-04": `
.blockquotes-04 {
	position: relative;
	padding-top: 40px;
}

.blockquotes-04::before {
	position: absolute;
	left: 0;
	top: -6px;
	content: "“";
	font-size: 180px;
	font-weight: 600;
	line-height: 1;
	color: var(--accent-color3);
	opacity: 0.15;
	pointer-events: none;
}

.blockquotes-04 .content {
	margin-bottom: 25px;
}

.blockquotes-04 .content p {
	font-size: 18px;
	font-weight: 600;
	font-style: italic;
	line-height: 28px;
	color: #666666;
}

.blockquotes-04 .content p:last-child {
	margin-bottom: 0;
}

.blockquotes-04 footer {
	display: flex;
	align-items: center;
}

.blockquotes-04 footer .pic {
	width: 80px;
	height: 80px;
	border-radius: 50%;
	flex-shrink: 0;
	margin-right: 20px;
}

.blockquotes-04 footer .info {
	display: flex;
	flex-direction: column;
}

.blockquotes-04 footer .info * {
	font-weight: 600;
}

.blockquotes-04 footer .info strong {
	color: var(--accent-color2);
	font-size: 18px;
}

.blockquotes-04 footer .info cite {
	color: #787878;
	font-size: 16px;
}

.blockquotes-04 footer .info strong+cite {
	margin-top: 5px;
}
`,
	"faq-01": `
	.faq-01 {
		margin-bottom: 51px;
		color: #666
	}
	.faq-01::before {
		content: none;
		display: block;
		width: 170px;
		border-bottom: 1px dashed #e2e2e2;
		margin-bottom: 68px;
	}
	.faq-01 .title {
		margin-bottom: 17px;
	}
	.faq-01 .link {
		font-weight: 500;
		margin-top: -2px;
	}
	.faq-01 .link i {
		margin-left: 12px;
		font-size: 13px;
		vertical-align: middle;
		display: inline-block;
		margin-bottom: -3px;
	}
	.row.faq-01-list + .row.faq-01-list > div > .faq-01::before {
		content: "";
	}

	.row.faq-01-list + .row.faq-01-list:last-child > div > .faq-01 {
		margin-bottom: 17px;
	}
	@media only screen and (max-width: 767px) {
		.row.faq-01-list > div + div > .faq-01::before {
			content: "";
		}
		.faq-01 {
			margin-bottom: 32px !important;
		}
		.faq-01::before {
			margin-bottom: 35px !important;
		}
	}
`,
	"faq-02": `.faq-02 {
	margin: 0;
	padding: 0;
	list-style: none;
}
.faq-02 li {
	padding: 28px 40px 28px 122px;
	box-shadow: 0 0 15px rgba(0, 0, 0, .1);
	margin: 0 0 30px;
	position: relative;
}

.faq-02 li .title {
	margin-bottom: 14px;
}

.faq-02 li p {
	line-height: inherit;
}

.faq-02 li p:last-child {
	margin-bottom: 0
}

.faq-02 li .q {
	content: "Q";
	position: absolute;
	width: 52px;
	height: 52px;
	line-height: 52px;
	color: var(--accent-color);
	left: 40px;
	top: 40px;
	text-align: center;
	font-weight: 600;
	font-size: 24px;
}

.faq-02 li .q::after {
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
	background-color: currentColor;
	border-radius: 50%;
	opacity: 0.1;
}

.faq-02 li:nth-child(5n+1) .q {
	color: var(--accent-color);
}

.faq-02 li:nth-child(5n+2) .q {
	color: #21a2fd;
}

.faq-02 li:nth-child(5n+3) .q {
	color: #3cb33d;
}

.faq-02 li:nth-child(5n+4) .q {
	color: #fe6e2f;
}

.faq-02 li:nth-child(5n) .q {
	color: #f6223f;
}

@media (max-width: 767px) {
	.faq-02 li {
		padding: 20px 20px 20px 90px;
	}

	.faq-02 li .q {
		left: 18px;
		top: 33px;
	}
}
	`,
	"faq-03": `
	.faq-03 {
		margin: 0 -15px;
		list-style: none;
		padding: 0;
		display: -ms-flexbox;
		display: flex;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
	}
	.faq-03 li{
		box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
		padding: 26px 40px 18px 125px;
		margin: 0px 15px 30px;
		position: relative;
		width: calc( 50% - 30px );
	transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	}
	.faq-03 li p{
		line-height: inherit;
	}
	
	.faq-03 .q {
		content: "Q";
		position: absolute;
		width: 52px;
		height: 52px;
		line-height: 52px;
		color: var(--accent-color);
		left: 40px;
		top: 40px;
		text-align: center;
		font-weight: 600;
		font-size: 24px;
	z-index:2;
	}
	
	.faq-03 .q::after {
		content: "";
		position: absolute;
		top: 0;
		bottom: 0;
		right: 0;
		left: 0;
		background-color: currentColor;
		border-radius: 50%;
		opacity: 0.1;
	z-index:-1;
	}
	.faq-03 .title{
		margin-bottom: 15px;
	}
	
	.faq-03 li:nth-child(8n+1) .q {
		color: var(--accent-color);
	}
	
	.faq-03 li:nth-child(8n+2) .q {
		color: #f6223f;
	}
	
	.faq-03 li:nth-child(8n+3) .q {
		color: #21a2fd;
	}
	
	.faq-03 li:nth-child(8n+4) .q {
		color: #24c6c6;
	}
	
	.faq-03 li:nth-child(8n+5) .q {
		color: #3cb33d;
	}
	
	.faq-03 li:nth-child(8n+6) .q {
		color: #f19800;
	}
	
	.faq-03 li:nth-child(8n+7) .q {
		color: #fe6e2f;
	}
	
	.faq-03 li:nth-child(8n) .q {
		color: #2071ef;
	}
	
	.faq-03 li:hover {
		background-color: var(--accent-color);
		color: #fff;
	}
	.faq-03 li:hover * {
		color: inherit;	
	}
	.faq-03 li:hover .q{
		color: var(--accent-color)!important;
	}
	.faq-03 li:hover .q::after{
		opacity: 1;
		background-color: #FFF;
	}
	
	@media (max-width: 991px) { 
	
		.faq-03 {
			margin: 0;
		}
		.faq-03 li{
	width:100%;
			margin: 0px 0 30px;
		}
	
	}
	@media (max-width: 767px) { 
	.faq-03 li{
	padding: 20px 20px 10px 90px;
	}
	.faq-03 .q{
		left: 18px;
		top: 33px;
	}
	}`,
	"faq-04": `.faq-04{
		text-align: left;
		padding: 0 0 0 45px;
		position: relative;
		min-height: 170px;
		margin-bottom: 18px;
	}
	.faq-04 .title{
		font-size: 18px;
		margin: 0 0 12px;
	}
	.faq-04::before{
		content: "Q";
		position: absolute;
		top: -3px;
		left: 0;
		width: 32px;
		height: 32px;
		line-height: 32px;
		text-align: center;
		background-color: var(--accent-color);
		color: #fefefe;
		font-size: 20px;
		border-radius: 50%;
	}
	.faq-04::after{
		content: "";
		position: absolute;
		top: 44px;
		left: 15px;
		bottom: 0;
		text-align: center;
		border-left:1px solid #d0d0d0;
	}`,
	"faq-05": `
	.faq-05 {
		margin-bottom: 44px;
		color: #666;
		padding: 0 0 0 48px;
	}
	
	.faq-05::before {
		content: none;
		display: block;
		width: 200px;
		border-bottom: 1px solid #d5d5d5;
		margin-bottom: 54px;
		margin-left: -48px;
	}
	
	.faq-05 .title {
		margin-bottom: 27px;
		position: relative;
	}
	
	.faq-05 .title::before,
	.faq-05 .title::after {
		position: absolute;
		left: -48px;
		width: 36px;
		height: 36px;
		line-height: 34px;
		font-size: 18px;
		text-align: center;
		border-radius: 50%;
		font-weight: 700;
	}
	
	.faq-05 .title::before {
		content: "Q";
		top: -4px;
		color: var(--accent-color2);
		border: 1px solid var(--accent-color2);
	}
	
	.faq-05 .title::after {
		content: "A";
		top: 100%;
		color: #787878;
		border: 1px solid #d6d6d6;
		margin-top: 23px;
	}
	
	.row.faq-05-list+.row.faq-05-list>div>.faq-05::before {
		content: "";
	}
	
	.row.faq-05-list+.row.faq-05-list:last-child>div>.faq-05 {
		margin-bottom: 17px;
	}
	
	@media only screen and (max-width: 767px) {
		.row.faq-05-list>div+div>.faq-05::before {
			content: "";
		}
	
		.faq-05 {
			margin-bottom: 32px !important;
		}
	
		.faq-05::before {
			margin-bottom: 35px !important;
		}
	}
	`,
	"step-01": `.step-01 {
    margin: 0;
    padding: 0;
    list-style: none;
}

.step-01 p {
    line-height: inherit;
}
.is-light-text .step-01 p{
	color:#d5d6df;
}

.step-01 .title {
    margin: 0 0 16px;
}

.step-01>li {
    position: relative;
    padding-bottom: 50px;
}

.step-01 {
    margin-bottom: -50px;
}

.step-01>li>.pic {
    margin-bottom: 18px;
}

.step-01>li>.icon {
    content: "";
    width: 42px;
    height: 42px;
    line-height: 42px;
    border: 2px solid #5c6087;
    color: #5c6087;
    position: absolute;
    border-radius: 50%;
    z-index: 2;
    text-align: center;
    transition: background-color 200ms ease-in 400ms, border-color 200ms ease-in 400ms, color 200ms ease-in 400ms, box-shadow 200ms ease-in 400ms;
    left: 50%;
    top: 50%;
    margin: -46px 0 0 -21px;
}

.step-01>li.active>.icon {
    background-color: var(--accent-color);
    border-color: var(--accent-color);
    color: #ffff;
}

.step-01>li.current.active>.icon {
    box-shadow: 0 0 20px rgba(255, 255, 255, .5);
}

.step-01>li>.top-line,
.step-01>li>.bottom-line {
    content: "";
    left: 50%;
    position: absolute;
    width: 2px;
    background-color: #5c6087;
    z-index: 1;
    margin-left: -1px;

}

.step-01>li>.top-line {
    top: 0;
    bottom: calc(50% + 45px);
}

.step-01>li>.bottom-line {
    top: calc(50% - 4px);
    bottom: 0;
}

.step-01>li>.top-line span,
.step-01>li>.bottom-line span {
    display: block;
    width: 2px;
    height: 0%;
    background-color: var(--accent-color);
    transition: all 300ms ease-in;
}

.step-01>li.active>.top-line span,
.step-01>li.prev>.bottom-line span {
    height: 100%;
}

.step-01>li>.top-line span {
    transition-delay: 300ms;
    transition-timing-function: ease-out;
}

.step-01>li:first-of-type>.top-line {
    display: none;
}

.step-01>li:last-of-type>.bottom-line {
    display: none;
}

@media only screen and (min-width:768px) {
    .step-01>li {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        -ms-flex-align: center;
        align-items: center;
        -ms-flex-pack: center !important;
        justify-content: center !important;
    }

    .step-01>li>.pic {
        text-align: right;
        padding-right: 85px;
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
    }

    .step-01>li>.content {
        text-align: left;
        padding-left: 85px;
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
    }

    .step-01>li:nth-child(2n)>.pic {
        text-align: left;
        padding-left: 85px;
        padding-right: 15px;
    }

    .step-01>li:nth-child(2n)>.content {
        text-align: right;
        -ms-flex-order: -1;
        order: -1;
        padding-left: 15px;
        padding-right: 85px;
    }
}
@media only screen and (max-width:767px) {
    .step-01>li {
        text-align: left;
        padding-left: 70px;
    }

    .step-01>li .top-line,
    .step-01>li .bottom-line {
        left: 21px;
    }

    .step-01>li>.icon {
        top: 50%;
        left: 0;
        margin: -45px 0 0 0;
    }
}
`,
	"step-02": `.step-02 {
	margin: 0;
	padding: 0;
	list-style: none;
	position: relative;
	border-color: var(--accent-color2);
}

.step-02 li {
	display: flex;
	align-items: center;
	position: relative;
	z-index: 1;
}

.step-02 li .icon {
	border-radius: 50%;
	width: 228px;
}

.step-02 li .icon img {
	max-width: 100%;
}

.step-02 li .content {
	width: 430px;
	padding-left: 30px;
}

.step-02 .content p {
	line-height: inherit;
}

.step-02 li:nth-child(2n) {
	justify-content: flex-end;
}

.step-02 li:nth-child(2n) .content {
	order: -1;
	padding-left: 0px;
	padding-right: 30px;
	text-align: right;
}

.step-02::before {
	margin: 0 auto 60px;
	background: url('data:image/svg+xml;utf8,<svg width="400" height="400" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg"><path d="M279.964,399.707c2.558,0,5.116-0.975,7.078-2.914c3.896-3.888,3.896-10.222,0-14.109l-172.872-172.55L287.042,37.584 c3.896-3.888,3.896-10.222,0-14.11c-3.895-3.888-10.241-3.888-14.137,0L92.956,203.089c-3.896,3.888-3.896,10.222,0,14.11 l179.95,179.613c1.962,1.959,4.521,2.914,7.078,2.914L279.964,399.707z" fill="rgb(255,255,255)"></path></svg>');
	width: 34px;
	height: 34px;
	line-height: 34px;
}

.step-02::after {
	margin: 40px auto 0;
	margin-left: 60%;
	background: url('data:image/svg+xml;utf8,<svg width="400" height="400" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg"><path d="M110.012,349.814c-2.558,0-5.116-0.975-7.078-2.914L2.961,247.115c-3.896-3.889-3.896-10.223,0-14.11 c3.896-3.889,10.241-3.889,14.137,0l92.894,92.721L382.836,53.391c3.896-3.888,10.241-3.888,14.137,0s3.896,10.222,0,14.11 L117.051,346.9c-1.962,1.959-4.52,2.914-7.078,2.914H110.012z" fill="rgb(255,255,255)"></path></svg>');
	width: 50px;
	height: 50px;
	line-height: 50px;
}

.step-02::before,
.step-02::after {
	content: "";
	text-align: center;
	display: block;
	border-radius: 50%;
	background-color: var(--accent-color2);
	background-size: 18px 18px;
	background-position: center center;
	background-repeat: no-repeat;
	z-index: 10;
	position: relative;
}

.step-02 canvas {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	pointer-events: none;
	z-index: 0;
	opacity: .6;
}
`,
	"step-03": `.step-03 {
	position: relative;
	text-align: center;
}

.step-03::before {
	content: "";
	width: calc(100% - 30px);
	margin: auto;
	height: 2px;
	background-image: linear-gradient(to right, #1abc9c, #367ec2, #5042e6);
	display: block;
}

.step-03>div {
	padding-top: 70px;
}

.step-03::after,
.step-03>div::after {
	content: "";
	width: 11px;
	height: 11px;
	background-color: #FFF;
	display: block;
	margin: 0px 0px 70px;
	border: 2px solid #1abc9c;
	border-radius: 50%;
	position: absolute;
	left: 15px;
	top: -4px;
}

.step-03>div>.step-dot {
	width: 37px;
	height: 37px;
	line-height: 33px;
	border: 2px solid #FFF;
	position: absolute;
	top: -20px;
	left: 50%;
	margin-left: -19px;
	border-radius: 50%;
	font-size: 20px;
	font-weight: 700;
}

.step-03>div:nth-child(1)>.step-dot {
	content: "1";
	box-shadow: 0 0 0 2px #1abc9c;
	background-color: #ddf5f0;
	color: #1abc9c;
}

.step-03>div:nth-child(2)>.step-dot {
	content: "2";
	box-shadow: 0 0 0 2px #367ec2;
	background-color: #e1ecf6;
	color: #367ec2;
}

.step-03>div:nth-child(3)>.step-dot,
.step-03>div:nth-child(4)>.step-dot {
	content: "3";
	box-shadow: 0 0 0 2px #5141e6;
	background-color: #e5e2fc;
	color: #5141e6;
}

.step-03>div>.step-dot::after {
	content: "";
	position: absolute;
	width: 10px;
	height: 10px;
	border: inherit;
	border-top: none;
	border-left: none;
	background-color: inherit;
	box-shadow: inherit;
	transform: rotate(45deg);
	top: 28px;
	left: 11px;
	border-radius: 2px;
}

.step-03>div:nth-child(1)>.step-dot::after {
	box-shadow: 2px 2px 0 0px #1abc9c;
}

.step-03>div:nth-child(2)>.step-dot::after {
	box-shadow: 2px 2px 0 0px #367ec2;
}

.step-03>div:nth-child(3)>.step-dot::after,
.step-03>div:nth-child(4)>.step-dot::after {
	box-shadow: 2px 2px 0 0px #5141e6;
}

.step-03>div::after {
	left: auto;
	right: 15px;
	top: -6px;
}

.step-03>div:nth-child(1)::after {
	border-color: #1f9faf;
}

.step-03>div:nth-child(2)::after {
	border-color: #4263d2;
}

.step-03>div:nth-child(3)::after,
.step-03>div:nth-child(4)::after {
	border-color: #523fe8;
}

@media only screen and (max-width: 767px) {

	.step-03::after,
	.step-03::before,
	.step-03>div::after {
		content: none !important;
	}

	.step-03>div {
		padding: 50px 30px 0;
		margin: 40px 0 0;
	}
}
`,
"step-04": `.step-04 {
	position: relative;
	text-align: center;
}

.step-04>div {
	padding: 0px 42px;
}

.step-04>div>.step-number {
	width: 52px;
	height: 52px;
	line-height: 46px;
	color: var(--accent-color);
	border: 4px solid currentColor;
	position: absolute;
	border-radius: 50%;
	font-size: 18px;
	background-color: #ffffff;
	position: relative;
	display: inline-block;
	margin: 10px 0 39px;
}

.step-04>div>.step-number::before {
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
	opacity: 0.2;
	pointer-events: none;
	box-shadow: 0 0 0 14px currentColor;
	border-radius: 50%;
}

.step-04>div::after,
.step-04>div::before {
	content: "";
	position: absolute;
	top: 36px;
	border-bottom: 2px solid #ededed;
}

.step-04>div::before {
	left: 0;
	right: calc(50% + 48px);
}

.step-04>div::after {
	left: calc(50% + 48px);
	right: 0;
}

.step-04::after,
.step-04::before {
	content: "";
	position: absolute;
	top: 31px;
	background-color: #f0f0f0;
	width: 12px;
	height: 12px;
	border-radius: 50%;
	z-index: 1;
}

.step-04::before {
	left: 0;
}

.step-04::after {
	right: 0;
}

.step-04 .title {
	margin-bottom: 17px;
}

@media only screen and (max-width: 991px) {
	.step-04>div {
		padding: 0px 10px;
	}
}

@media only screen and (max-width: 767px) {
	.step-04>div {
		margin-bottom: 20px
	}

	.step-04::after,
	.step-04::before,
	.step-04>div::after,
	.step-04>div::before {
		content: none
	}
}`,
"step-05": `.step-05 {
	text-align: center;
}

.step-05 .icon {
	width: 114px;
	height: 114px;
	position: relative;
	font-size: 42px;
	color: #333333;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 18px;
}

.step-05 .icon::after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: var(--accent-color);
	opacity: 0.1;
	border-radius: 50%;
	pointer-events: none;
}

.step-05 .step-number {
	background-color: var(--accent-color);
	width: 45px;
	height: 45px;
	line-height: 42px;
	border-radius: 50%;
	position: absolute;
	top: 0;
	right: 50%;
	color: #FFF;
	border: 3px solid #FFF;
	z-index: 1;
	margin-right: 32px;
}

.step-05 .title::after {
	content: "";
	border-bottom: 1px solid #d3d3d3;
	display: block;
	width: 30px;
	margin: 20px auto;
}

.step-05>div[class*="col"] {
	position: relative;
}

.step-05>div::after,
.step-05>div::before {
	content: "";
	position: absolute;
	top: 57px;
	border-bottom: 2px solid #ededed;
}

.step-05>div::after {
	left: calc(50% + 88px);
	right: 0;
}

.step-05>div::before {
	left: 0;
	right: calc(50% + 88px);
}

@media only screen and (max-width:767px) {

	.step-05>div::after,
	.step-05>div::before {
		content: none;
	}
}
`,
"flipbox-01": `
.flipbox-01 {
	position: relative;
	overflow: visible;
	text-align: center;
	-webkit-perspective: 1000;
	-moz-perspective: 1000;
	perspective: 1000;
	width: 100%;
	margin-bottom: 30px;
}

.flipbox-01 .front {
	padding: 42px 30px;
	background: #ffffff;
	z-index: 0;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	transition: all 500ms ease-in-out;
	-webkit-transition: all 500ms ease-in-out;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	border: 1px solid #d5d5d5;
	border-radius: 5px;
}

.flipbox-01 .front .flipbox-title {
	margin: 5px 0 15px 0;
}

.flipbox-01 .front .flipbox-title * {
	margin: 0;
	color: #333333;
}

.flipbox-01 .front .flipbox-info * {
	color: #787878;
}

.flipbox-01 .front .icon {
	width: 100px;
	height: 85px;
	font-size: 42px;
	text-align: center;
	position: relative;
	display: inline-flex;
	justify-content: center;
	color: #fff;
	z-index: 1;
	margin-bottom: 28px;
}

.flipbox-01 .front .icon .bg {
	position: absolute;
	width: 100px;
	height: 85px;
	line-height: 1;
	z-index: 0;
}

.flipbox-01 .front .icon .bg svg {
	width: 100%;
	fill: currentColor;
	-webkit-transform-origin: center;
	transform-origin: center;
}

.flipbox-01 .front .icon .bg-shadow {
	-webkit-filter: drop-shadow(-5px 5px 8px currentColor);
	filter: drop-shadow(-5px 5px 8px currentColor);
	opacity: .3;
}

.row>div:nth-child(3n-2)>.flipbox-01 .bg svg {
	-webkit-transform: rotate(180deg);
	transform: rotate(180deg);
}

.row>div:nth-child(3n-1)>.flipbox-01 .bg svg {
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.flipbox-01 .front .icon i {
	z-index: 1;
}

.flipbox-01 .back {
	display: flex;
	flex-direction: column;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: -2;
	padding: 42px 30px;
	min-height: 100%;
	background: #523ee8;
	-webkit-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transition: all 500ms ease-in-out;
	-webkit-transition: all 500ms ease-in-out;
	border-radius: 5px;
}

.flipbox-01 .back .flipbox-title {
	flex-shrink: 0;
	margin: 21px 0 14px 0;
}

.flipbox-01 .back .flipbox-title * {
	margin: 0;
	color: #ffffff;
}

.flipbox-01 .back .flipbox-info {
	flex-grow: 1;
}

.flipbox-01 .back .flipbox-info * {
	color: #ffffff;
}

.flipbox-01 .back .flipbox-btn {
	flex-shrink: 0;
	margin-top: 20px;
}

.flipbox-01 .back .button-flipbox {
	display: inline-block;
	font-size: 16px;
	font-weight: 700;
	color: #523ee8;
	padding: 0 30px;
	background-color: #ffffff;
	transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
	box-shadow: 3px 4px 16px rgba(0, 0, 0, 0.1);
}

.flipbox-01:hover .front {
	-webkit-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.flipbox-01:hover .back {
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	z-index: 3;
}

.cell-active .flipbox-01 .front,
.cell-active .flipbox-01 .back {
	position: relative;
	-webkit-transform: rotateY(0deg) !important;
	transform: rotateY(0deg) !important;
}
`,
	"flipbox-02": `
.flipbox-02 {
	-webkit-perspective: 1000;
	perspective: 1000;
	overflow: visible;
	margin-bottom: 15px;
	position: relative;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-transform-origin: center;
	transform-origin: center;
	-webkit-transition: z-index 750ms ease;
	transition: z-index 750ms ease;
	opacity: 1;
	z-index: 0;
}

.flipbox-02 .front,
.flipbox-02 .back {
	-webkit-transition: all 750ms ease 0s;
	transition: all 750ms ease 0s;
	position: relative;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.flipbox-02 .front {
	position: relative;
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	z-index: 1;
}

.flipbox-02 .back {
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	min-height: 100%;
	z-index: 0;
	-webkit-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
	display: flex;
	justify-content: center;
	align-items: Center;
	background: #523ee8;
	color: #FFF;
	text-align: center;
	padding: 25px;
}

.flipbox-02:hover {
	z-index: 100;
}

.flipbox-02:hover .front {
	background-color: #FFF;
	-webkit-transform: rotateY(180deg);
	-moz-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.flipbox-02:hover .back {
	-webkit-transform: rotateY(0deg);
	-moz-transform: rotateY(0deg);
	transform: rotateY(0deg);
	z-index: 1;
}

.flipbox-02 .front .title {
	position: absolute;
	bottom: 38px;
	left: 30px;
	right: 30px;
	background-color: #ffffff;
	border-radius: 4px;
	text-align: center;
	padding: 12px 5px 11px;
	font-size: 18px;
	margin: 0;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
}

.flipbox-02 .back .icon {
	font-size: 60px;
	background-color: #ffffff;
	display: inline-block;
	width: 2.135em;
	height: 2.135em;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 26px;
}

.flipbox-02 .back .title {
	color: inherit;
	margin-bottom: 18px;
}

.flipbox-02 .back .flip_link {
	display: inline-block;
	border-bottom: 1px solid currentColor;
	padding: 15px 0 3px;
	color: currentColor;
}

.flipbox-02 .back a,
.flipbox-02 .back a:link,
.flipbox-02 .back a:visited,
.flipbox-02 .back a:hover {
	color: inherit;
}

.flipbox-02 .back a i {
	vertical-align: middle;
	display: inline-block;
	margin: 0 0 -1px 2px;
}

.flipbox-02 .description {
	margin: 0;
}

.flipbox-02 .icon img {
	max-width: 60%;
}
.cell-active .flipbox-02 .front,
.cell-active .flipbox-02 .back {
	position: relative;
	-webkit-transform: rotateY(0deg) !important;
	transform: rotateY(0deg) !important;
}

`,
"flipbox-03": `.flipbox-03 {
	position: relative;
	overflow: visible;
	text-align: center;
	-webkit-perspective: 1000;
	-moz-perspective: 1000;
	perspective: 1000;
	width: 100%;
	margin-bottom: 30px;
}

.flipbox-03 .front,
.flipbox-03 .back {
	display: flex;
	flex-direction: column;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: -2;
	padding: 30px;
	min-height: 100%;
	-webkit-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transition: all 500ms ease-in-out;
	-webkit-transition: all 500ms ease-in-out;
	border-radius: 5px;
	border: 1px solid #ebebeb;
	align-items: center;
	justify-content: center;
}

.flipbox-03 .front {
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	position: relative;
	padding: 50px 30px 30px;
}

.flipbox-03:hover .front {
	-webkit-transform: rotateY(180deg);
	transform: rotateY(180deg);
}

.flipbox-03:hover .back {
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	z-index: 3;
}

.cell-active .flipbox-03 .front,
.cell-active .flipbox-03 .back {
	position: relative;
	-webkit-transform: rotateY(0deg) !important;
	transform: rotateY(0deg) !important;
}

.flipbox-03 .icon {
	color: var(--accent-color);
	font-size: 36px;
	border-radius: 50%;
	border: 2px solid currentColor;
	width: 2em;
	height: 2em;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 0 28px;
}

.flipbox-03 .flipbox-title {
	margin-bottom: 7px;
}

.flipbox-03 .button-flipbox {
	line-height: inherit;
	height: auto;
}

.flipbox-03 .button-flipbox i {
	vertical-align: middle;
	font-size: 16px;
	margin-bottom: 4px;
}`,
"flipbox-04": `
.flipbox-04 {
	position: relative;
	overflow: visible;
	text-align: center;
	-webkit-perspective: 1000;
	-moz-perspective: 1000;
	perspective: 1000;
	width: 100%;
	margin-bottom: 30px; 
}
.flipbox-04 .front, 
.flipbox-04 .back {
	display: flex;
	flex-direction: column;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 2;
	min-height: 100%;
	-webkit-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transition: all 500ms ease-in-out;
	-webkit-transition: all 500ms ease-in-out;
	border-radius: 5px;
	align-items: center;
	justify-content: center;
	color: #fff;
	padding: 50px 50px 30px; 
}
.flipbox-04 .front {
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	position: relative; 
}
.flipbox-04:hover .front {
	-webkit-transform: rotateY(180deg);
	transform: rotateY(180deg); 
}
.flipbox-04:hover .back {
	-webkit-transform: rotateY(0deg);
	transform: rotateY(0deg);
	z-index: 3; 
}
.cell-active .flipbox-04 .front, 
.cell-active .flipbox-04 .back {
	position: relative;
	-webkit-transform: rotateY(0deg) !important;
	transform: rotateY(0deg) !important; 
}
.flipbox-04 .icon {
	color:currentColor;
	font-size:60px;
	line-height: 1;
	margin: 0 0 20px; 
} 
.flipbox-04 *{
	color: #fff; 
} 
.flipbox-04 .button-flipbox {
	line-height: inherit;
	height: auto; 
} 
.flipbox-04 .button-flipbox i {
	vertical-align: middle;
	font-size: 16px;
	margin-bottom: 4px; 
}
`,
"list-02": `
.list-02 {
	list-style: none;
	margin: 0;
	padding: 0;
}

.list-02 a,
.list-02 a:link {
	color: inherit;
}

.list-02 i {
	margin-right: 15px;
	vertical-align: middle;
	flex-shrink: 0;
}

.list-02 li {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	margin-bottom: 8px;
}
`,
	"list-03": `.list-03 {
	margin: 0;
	padding: 0;
	list-style: none;
}

.list-03 i {
	width: 24px;
	height: 24px;
	border: 1px solid currentColor;
	border-radius: 12px;
	margin-right: 10px;
	font-size: 10px;
	flex: 0 0 24px;
}

.list-03 li {
	margin-bottom: 14px;
	display: flex;
}
`,
	"list-04": `
.list-04 {
	margin: 0;
	padding: 0;
	list-style: none;
}

.list-04 li {
	margin-bottom: 14px;
	display: flex;
}

.list-04 i {
	width: 24px;
	height: 24px;
	margin-right: 10px;
	flex: 0 0 24px;
	color: var(--accent-color2);
}
`,"list-05": `
.list-05 {
	margin: 0;
	padding: 0;
	list-style: none;
}

.list-05 li {
	margin-bottom: 14px;
	display: flex;
}

.list-05 i {
	width: 24px;
	height: 24px;
	margin-right: 10px;
	flex: 0 0 24px;
}
`,
	"infolist-01": `
.infolist-01 {
	margin: 0;
	padding: 0;
}

.infolist-01 li {
	list-style: none;
	padding: 0 0 27px 80px;
	position: relative;
}

.infolist-01 .number {
	position: absolute;
	top: 0;
	left: 0;
	width: 56px;
	height: 56px;
	line-height: 56px;
	text-align: center;
	z-index: 1;
	color: #2c5cda;
}

.infolist-01 .number::after {
	content: "";
	position: absolute;
	top: 27px;
	left: -3px;
	border-radius: 50% 70% 50% 70% / 70% 50% 70% 50%;
	transform: rotate(30deg) translate(-20%, -45%);
	width: 100%;
	height: 100%;
	box-shadow: 5px 5px 26px currentColor;
	z-index: -1;
	opacity: .3;
}

.infolist-01 .number::before {
	content: "";
	position: absolute;
	top: 27px;
	left: -3px;
	border-radius: 50% 70% 50% 70% / 70% 50% 70% 50%;
	transform: rotate(30deg) translate(-20%, -45%);
	width: 100%;
	height: 100%;
	z-index: -1;
	background-color: currentColor;
	opacity: 0;
	transition: all ease-in-out 300ms;
}

.infolist-01 .number span {
	font-size: 24px;
	font-weight: 700;
	transition: all ease-in-out 300ms;
}

.infolist-01 li:hover .number::before {
	opacity: 1;
}

.infolist-01 li:hover .number span {
	color: #ffffff;
}

.infolist-01 li:nth-child(3n+1) .number {
	color: #2c5cda;
}

.infolist-01 li:nth-child(3n+2) .number {
	color: #fc7b35;
}

.infolist-01 li:nth-child(3n) .number {
	color: #28b089;
}

.infolist-01 .title {
	margin: 0 0 10px;
	font-size: 18px;
}
`,
	"infolist-02": `.infolist-02 {
	margin: 0;
	padding: 0;
}

.infolist-02 li {
	list-style: none;
	padding: 0 0 27px 80px;
	position: relative;
}

.infolist-02 .number {
	position: absolute;
	top: 0;
	left: 0;
	width: 56px;
	height: 56px;
	line-height: 56px;
	text-align: center;
	z-index: 1;
	color: #2c5cda;
}

.infolist-02 .number::after {
	content: "";
	position: absolute;
	top: 27px;
	left: -3px;
	border-radius: 50% 70% 50% 70% / 70% 50% 70% 50%;
	transform: rotate(30deg) translate(-20%, -45%);
	width: 100%;
	height: 100%;
	box-shadow: 5px 5px 26px currentColor;
	z-index: -1;
	opacity: .3;
}

.infolist-02 .number::before {
	content: "";
	position: absolute;
	top: 27px;
	left: -3px;
	border-radius: 50% 70% 50% 70% / 70% 50% 70% 50%;
	transform: rotate(30deg) translate(-20%, -45%);
	width: 100%;
	height: 100%;
	z-index: -1;
	background-color: currentColor;
	opacity: 0;
	transition: all ease-in-out 300ms;
}

.infolist-02 .number span {
	font-size: 24px;
	font-weight: 600;
	transition: all ease-in-out 300ms;
}

.infolist-02 li:hover .number::before {
	opacity: 1;
}

.infolist-02 li:hover .number span {
	color: #ffffff;
}

.infolist-02 li:nth-child(4n+1) .number {
	color: var(--accent-color2);
}

.infolist-02 li:nth-child(4n+2) .number {
	color: var(--accent-color3);
}

.infolist-02 li:nth-child(4n+3) .number {
	color: var(--accent-color4);
}

.infolist-02 li:nth-child(4n) .number {
	color: var(--accent-color);
}

.infolist-02 .title {
	margin: 0 0 10px;
	font-size: 18px;
}`,
"promo01": `
.promo01 {
	display: table;
	width: 100%;
	font-size: 18px
}

.promo01>* {
	display: table-cell;
	vertical-align: middle;
}

.promo01 .promo-icon>i {
	width: 100px;
	height: 100px;
	text-align: center;
	line-height: 100px;
	border: 2px solid currentColor;
	border-radius: 50%;
	font-size: 48px;
}

.promo01 .promo-button {
	text-align: right;
}

.promo01 .promo-content>*:first-child {
	margin-bottom: 16px
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
	.promo01 .promo-content {
		padding: 0px 30px;
	}
}

@media only screen and (max-width: 767px) {
	.promo01 {
		display: block;
		text-align: center;
	}

	.promo01>* {
		display: block;
		text-align: center !important;
		margin-bottom: 20px
	}
}
`
}



// Button
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/button/button-01.jpg',
	'category': '700',
	'name': 'button-01',
	'html': `<a href="#" title="LEARN MORE" class="button-01 border-radius-3">LEARN MORE</a>
		<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>
	`
}, {
	'thumbnail': 'minis-shortcode/button/button-02.jpg',
	'category': '700',
	'name': 'button-02',
	'html': `<a href="#" title="CONTACT US" class="button-01">CONTACT US</a>
	<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>
`

}, {
	'thumbnail': 'minis-shortcode/button/button-05.jpg',
	'category': '700',
	'name': 'button-05',
	'html': `<a class="button-04" href="#" title="LEARN MORE">LEARN MORE<i class="sico lnr-chevron-right"></i></a>
	<style class="build-css" data-class="button-04">${csstemplate["button-04"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-07.jpg',
	'category': '700',
	'name': 'button-07',
	'html': `<a href="#" title="WATCH VIDEO" class="button-06">WATCH VIDEO <i class="sico lnr-arrow-right"></i></a>
	<style class="build-css" data-class="button-06">${csstemplate["button-06"]}</style>
`

}, {
	'thumbnail': 'minis-shortcode/button/button-08.jpg',
	'category': '700',
	'name': 'button-08',
	'html': `<a href="#" title="VIEW MORE" class="button-07"><span>VIEW MORE</span><i class="sico lnr-binoculars"></i></a>
	<style class="build-css" data-class="button-07">${csstemplate["button-07"]}</style>
`

}, {
	'thumbnail': 'minis-shortcode/button/button-09.jpg',
	'category': '700',
	'name': 'button-09',
	'html': `<a href="#" title="LEARN MORE" class="button-13">LEARN MORE</a>
	<style class="build-css" class="build-css" data-class="button-13">${csstemplate["button-13"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-11.jpg',
	'category': '700',
	'name': 'button-11',
	'html': `<a class="button-01 border-radius-0" href="#" title="LEARN MORE">LEARN MORE</a>
	<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-14.jpg',
	'category': '700',
	'name': 'button-14',
	'html': `<a href="#" title="LEARN MORE" class="button-12">LEARN MORE</a>
	<style class="build-css" data-class="button-12">${csstemplate["button-12"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-10.jpg',
	'category': '700',
	'name': 'button-10',
	'html': `<a href="#" title="Buy It Now" class="button-08">Buy It Now<i class="sico lnr-arrow-right"></i></a>
	<style class="build-css" data-class="button-08">${csstemplate["button-08"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-15.jpg',
	'category': '700',
	'name': 'button-15',
	'html': `<a href="#" title="LEARN MORE" class="button-14">LEARN MORE</a>
	<style class="build-css" data-class="button-14">${csstemplate["button-14"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-06.jpg',
	'category': '700',
	'name': 'button-06',
	'html': `<a class="button-05 is-lightbox" data-ilightbox="youtube" href="https://www.youtube.com/embed/AkcUoA2f-jU" data-type="iframe" data-options="width: '1280',height: '720',skin:'dark'" title=""><span><i class="sico fas-play"></i></span>WATCH VIDEO</a>
	<style class="build-css" data-class="button-05">${csstemplate["button-05"]}</style>
`

}, {
	'thumbnail': 'minis-shortcode/button/button-12.jpg',
	'category': '700',
	'name': 'button-12',
	'html': `<a class="button-09" href="#" title="BUY IT NOW">BUY IT NOW</a>
	<style class="build-css" data-class="button-09">${csstemplate["button-09"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-13.jpg',
	'category': '700',
	'name': 'button-13',
	'html': `<a class="button-10" href="#" title="WATCH VIDEO"><i class="sico fas-play"></i>WATCH VIDEO</a>
	<style class="build-css" data-class="button-10">${csstemplate["button-10"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/button-03.jpg',
	'category': '700',
	'name': 'button-03',
	'html': `<a class="button-02" href="#"><i class="sico lnr-plus"></i></a>
	<style class="build-css" data-class="button-02">${csstemplate["button-02"]}</style>
`

}, {
	'thumbnail': 'minis-shortcode/button/button-04.jpg',
	'category': '700',
	'name': 'button-04',
	'html': `<a href="https://www.youtube.com/embed/AkcUoA2f-jU" title="How we work" class="button-03 is-lightbox" data-ilightbox="youtube"><i class="sico fas-play"></i>How we work</a>
	<style class="build-css" data-class="button-03">${csstemplate["button-03"]}</style> 
`

}, {
	'thumbnail': 'minis-shortcode/button/play-button-01.jpg',
	'category': '700',
	'name': 'play-button-01',
	'html': `<a class="play-button is-lightbox" href="https://www.youtube.com/embed/AkcUoA2f-jU" data-ilightbox="youtube" title=""><span><i class="sico fas-play color-accent size-18"></i></span></a>
	<style class="build-css" data-class="play-button">${csstemplate["play-button"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/button/play-button-02.jpg',
	'category': '700',
	'name': 'play-button-02',
	'html': `<a class="play-button2 is-lightbox bg-accent m-auto" href="https://www.youtube.com/embed/AkcUoA2f-jU" data-ilightbox="youtube" title="" style="position: relative; top: 0px; left: 0px;"><span class="icon"></span></a>
	<style class="build-css" data-class="play-button2">${csstemplate["play-button2"]}</style>
`
});

// Title
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/title/title-style-03.jpg',
	'category': '701',
	'name': 'title-style-03',
	'html': `<div class="title-01">
	<h2>How Do <span class="color-accent">We Work</span></h2>
</div>
	<style class="build-css" data-class="title-01">${csstemplate["title-01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-01.jpg',
	'category': '701',
	'name': 'title-style-01',
	'html': `<div class="title-02">
	<small class="color-accent">OUR FEATURES</small>
	<h3>We Specialize In Quality Design</h3>
	</div>
	<style class="build-css" data-class="title-02">${csstemplate["title-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-02.jpg',
	'category': '701',
	'name': 'title-style-02',
	'html': `<div class="title-03">
	<small class="color-accent">ABOUT US</small>
	<h3>We Develop Products That Are Ahead Of The Curve</h3>
	</div>
	<style class="build-css" data-class="title-03">${csstemplate["title-03"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-04.jpg',
	'category': '701',
	'name': 'title-style-04',
	'html': `<div class="title-04">
	<small class="color-accent">WHAT WE DO</small>
	<h3>Our Experienced Developers Can Turn Your Brief Ideas Into Powerful Features Like A Magic.</h3>
</div>
	<style class="build-css" data-class="title-04">${csstemplate["title-04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-05.jpg',
	'category': '701',
	'name': 'title-style-05',
	'html': `<div class="title-05" style="max-width: 700px;">
	<small class="color-accent">OUR LATEST PROJECTS</small>
	<h3 style="font-weight:600;">These Are Only Some Of The Great Works We Delivered To Our Clients</h3>
</div>
	<style class="build-css" data-class="title-05">${csstemplate["title-05"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-22.jpg',
	'category': '701',
	'name': 'title-style-22',
	'html': `<div class="title-07">
	<small class="color-accent">About us</small>
	<h2>We Are Always Your Solid Backing!</h2>
	</div>
	<style class="build-css" data-class="title-07">${csstemplate["title-07"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-06.jpg',
	'category': '701',
	'name': 'title-style-06',
	'html': `<div class="title-08 m-auto text-center" style="max-width: 650px;">
	<small class="color-accent">ABOUT US</small>
	<h3>Skilled People Come Up With Creative Ideas When Together</h3>
</div>
	<style class="build-css" data-class="title-08">${csstemplate["title-08"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-07.jpg',
	'category': '701',
	'name': 'title-style-07',
	'html': `<div class="title-08">
	<small class="color-accent">Our Strength</small>
	<h3>Use superb Skills To Design You A Beautiful And Stylish Site</h3>
</div>
	<style class="build-css" data-class="title-08">${csstemplate["title-08"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-08.jpg',
	'category': '701',
	'name': 'title-style-08',
	'html': `<div class="title-09">
	<small>ABOUT US</small>
	<h3>Offering Unique Solutions For <span class="color-accent">You Business</span></h3>
</div>
	<style class="build-css" data-class="title-09">${csstemplate["title-09"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-09.jpg',
	'category': '701',
	'name': 'title-style-09',
	'html': `<div class="title-11"><h3 style="max-width:500px;">We Provide Website Solutions&nbsp; With Powerful Technology</h3></div>
	<style class="build-css" data-class="title-11">${csstemplate["title-11"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-10.jpg',
	'category': '701',
	'name': 'title-style-10',
	'html': `<div class="title-13 text-left">
	<h3>How Do <span class="color-accent">We Work</span></h3>
	<div class="line color-accent"></div>
</div>
	<style class="build-css" data-class="title-13">${csstemplate["title-13"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-11.jpg',
	'category': '701',
	'name': 'title-style-11',
	'html': `<div class="title-13 text-center" style="padding-bottom: 16px;">
	<h3>Our <span class="color-accent">Projects</span></h3>
	<div class="line color-accent"></div>
</div>
	<style class="build-css" data-class="title-13">${csstemplate["title-13"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-13.jpg',
	'category': '701',
	'name': 'title-style-13',
	'html': `<div class="title-14">
	<small class="color-accent">About us</small>
	<h3>We Provide Professional Furniture Website</h3>
</div>
	<style class="build-css" data-class="title-14">${csstemplate["title-14"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-12.jpg',
	'category': '701',
	'name': 'title-style-12',
	'html': `<div class="title-15">
    <h3>Development <b>History</b></h3>
</div>
	<style class="build-css" data-class="title-15">${csstemplate["title-15"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-14.jpg',
	'category': '701',
	'name': 'title-style-14',
	'html': `<div class="title-16">
	<small>New Product Seckilling</small>
	<h1 class="size-50 mb-25">Simple <span class="color-accent">Bedroom LaCmp</span></h1>
</div>
	<style class="build-css" data-class="title-16">${csstemplate["title-16"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-15.jpg',
	'category': '701',
	'name': 'title-style-15',
	'html': `<h6 class="title-17">About Us</h6>
	<style class="build-css" data-class="title-17">${csstemplate["title-17"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-16.jpg',
	'category': '701',
	'name': 'title-style-16',
	'html': `<h3 class="title-18 m-auto text-center" style="max-width: 550px;">We Provide Website <span>Solutions With</span> Powerful Technology</h3>
	<style class="build-css" data-class="title-18">${csstemplate["title-18"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-21.jpg',
	'category': '701',
	'name': 'title-style-21',
	'html': `<h3 class="title-18">We Provide Website <span>Solutions With</span> Powerful Technology</h3>
	<style class="build-css" data-class="title-18">${csstemplate["title-18"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-19.jpg',
	'category': '701',
	'name': 'title-style-19',
	'html': `<div class="title-19 text-center">
	<h3><span style="font-weight: 600;">Awesome Apps </span><span class="color-accent">Features</span></h3>
</div>
	<style class="build-css" data-class="title-19">${csstemplate["title-19"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-20.jpg',
	'category': '701',
	'name': 'title-style-20',
	'html': `<div class="title-19">
	<h3><span class="color-accent">All The Medical </span><span style="font-weight: 600;">Info You Care Is Gathered In This Wonderful APP</span></h3>
	</div>
	<style class="build-css" data-class="title-19">${csstemplate["title-19"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-17.jpg',
	'category': '701',
	'name': 'title-style-17',
	'html': `<div class="title-20">
	<h2 class="title">What We Do</h2>
	</div>
	<style class="build-css" data-class="title-20">${csstemplate["title-20"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-18.jpg',
	'category': '701',
	'name': 'title-style-18',
	'html': `<div class="title-20 text-center mt-10 mt-md-25">
	<h2 class="title"> Many Features For Your Needs</h2>
	</div>
	<style class="build-css" data-class="title-20">${csstemplate["title-20"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-23.jpg',
	'category': '701',
	'name': 'title-style-23',
	'html': ` <h1 style="font-weight: 700;" class="mb-20">Awesome App Template</h1>
	<h3 style="font-weight: 300;">Visitors Linger In Its <b style=" font-style: italic; " class="custom-module loading" data-effect="texttabs" id="module-{id}" data-module-desc="Text Slider" data-moduleid="{id}" data-settings="%7B%22moduleid%22%3A%22sgDwM2%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Unique%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Modern%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Stylish%22%7D%7D%7D"></b> Design And Features</h3>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-24.jpg',
	'category': '701',
	'name': 'title-style-24',
	'html': `<div class="title-22 pr-lg-80">
	<small class="bg-accent2">ABOUT US</small>
	<h3>We Are A professional Team Who Are Full Of Passion.</h3>
</div><style class="build-css" data-class="title-22">${csstemplate["title-22"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-25.jpg',
	'category': '701',
	'name': 'title-style-25',
	'html': `<h3 class="title-23 ml-auto mr-auto mt-10" style="max-width: 500px;">Our Product
	<span class="border-accent3">Speaks For Itself</span>, Nothing Else Needed</h3><style class="build-css" data-class="title-23">${csstemplate["title-23"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/title/title-style-26.jpg',
	'category': '701',
	'name': 'title-style-26',
	'html': `<fieldset class="title-24">
	<legend>OUR SERVICE FEATURES</legend>
</fieldset><style class="build-css" data-class="title-24">${csstemplate["title-24"]}</style>`
});

// Pricing
data_basic.snippets.push({
		'thumbnail': 'minis-shortcode/pricing/pricing-01.jpg',
		'category': '702',
		'name': 'price-03',
		'html': `<div class="row">
    <div class="col-md-6 col-lg-4">
        <div class="price-03">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/home13/homepage13-price-bg01.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;" data-keep-background="">
                        <span class="pricing">$105</span>
                        <div class="unit">
                            <span>Per</span>
                            <span>Month</span>
                        </div>
                        <h4 class="price-title">Standard Plan</h4>
                    </div>
                </div>
                <div class="price-content">
                    <div class="icon">
                        <img src="/Portals/_default/ContentBuilder/minis-page/home13/homepage13-icon01.png" class="img-Lazy">
                    </div>
                    <div class="price-features">
                        <ul>
                            <li>Full Time Support</li>
                            <li>Unlimited Data Transfer</li>
                            <li>50GB Space</li>
                            <li>Multiple Header Styles</li>
                        </ul>
                    </div>
                </div>
                <div class="price-footer">
                    <a class="button-01" href="#" title="">START NOW </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="price-03">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/home13/homepage13-price-bg02.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
                        <span class="pricing">$150</span>
                        <div class="unit">
                            <span>Per</span>
                            <span>Month</span>
                        </div>
                        <h4 class="price-title">Basic Plan</h4>
                    </div>
                </div>
                <div class="price-content">
                    <div class="icon">
                        <img src="/Portals/_default/ContentBuilder/minis-page/home13/homepage13-icon02.png" class="img-Lazy">
                    </div>
                    <div class="price-features">
                        <ul>
                            <li>Full Time Support</li>
                            <li>Unlimited Data Transfer</li>
                            <li>100GB Space</li>
                            <li>Multiple Header Styles</li>
                        </ul>
                    </div>
                </div>
                <div class="price-footer">
                    <a class="button-01" href="#" title="">START NOW </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="price-03">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/home13/homepage13-price-bg03.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
                        <span class="pricing">$200</span>
                        <div class="unit">
                            <span>Per</span>
                            <span>Month</span>
                        </div>
                        <h4 class="price-title">Maximum Plan</h4>
                    </div>
                </div>
                <div class="price-content">
                    <div class="icon">
                        <img src="/Portals/_default/ContentBuilder/minis-page/home13/homepage13-icon03.png" class="img-Lazy">
                    </div>
                    <div class="price-features">
                        <ul>
                            <li>Full Time Support</li>
                            <li>Unlimited Data Transfer</li>
                            <li>200GB Space</li>
                            <li>Multiple Header Styles</li>
                        </ul>
                    </div>
                </div>
                <div class="price-footer">
                    <a class="button-01" href="#" title="">START NOW </a>
                </div>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="price-03">${csstemplate["price-03"]}</style>
	<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-02.jpg',
		'category': '702',
		'name': 'price-04',
		'html': `<div class="row">
    <div class="col-md-4">
        <div class="price-04">
            <div class="price-item">
                <div class="price-header">
                    <h6 class="price-title">Standard Plan</h6>
                    <p>Donec consectetur hendrerit sapien.</p>
                </div>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li>Full Time Support</li>
                            <li>Unlimited Data Transfer</li>
                            <li>20GB Space</li>
                            <li>Multiple Header Styles</li>

                        </ul>
                    </div>
                </div>
                <div class="price-box">
                    <span class="pricing">$55</span>
                    <span class="unit">Per Month</span>
                </div>

                <div class="price-footer">
                    <a class="button-12" href="#" title="">START NOW </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="price-04 active">
            <div class="price-item">
                <div class="price-header">
                    <h6 class="price-title">Superior Plan</h6>
                    <p>Donec consectetur hendrerit sapien.</p>
                </div>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li>Full Time Support</li>
                            <li>Unlimited Data Transfer</li>
                            <li>50GB Space</li>
                            <li>Multiple Header Styles</li>
                        </ul>
                    </div>
                </div>
                <div class="price-box">
                    <span class="pricing">$105</span>
                    <span class="unit">Per Month</span>
                </div>

                <div class="price-footer">
                    <a class="button-12" href="#" title="">START NOW </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="price-04">
            <div class="price-item">
                <div class="price-header">
                    <h6 class="price-title">Maximum Plan</h6>
                    <p>Donec consectetur hendrerit sapien.</p>
                </div>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li>Full Time Support</li>
                            <li>Unlimited Data Transfer</li>
                            <li>100GB Space</li>
                            <li>Multiple Header Styles</li>
                        </ul>
                    </div>
                </div>
                <div class="price-box">
                    <span class="pricing">$140</span>
                    <span class="unit">Per Month</span>
                </div>
                <div class="price-footer">
                    <a class="button-12" href="#" title="" data-saveforundo="">START NOW</a>
                </div>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="price-04">${csstemplate["price-04"]}</style>
	<style class="build-css" data-class="button-12">${csstemplate["button-12"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-06.jpg',
		'category': '702',
		'name': 'price-05',
		'html': `
	<div class="row">
		<div class="col-md-4">
			<div class="price-05">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box">
							<div class="pricing">
								<sup>$</sup><span>105</span>
							</div>
							<div class="unit">
								<span>Per
									Month</span>
							</div>
						</div>
					</div>
					<div class="price-content">
						<h4 class="price-title">
							Standard Plan</h4>
						<div class="price-features">
							<ul>
								<li>Full Time
									Support</li>
								<li>Unlimited
									Data
									Transfer
								</li>
								<li>50GB Space
								</li>
								<li style="text-decoration: line-through;">
									Multiple
									Header
									Styles</li>
								<li style="text-decoration: line-through;">
									Free Mockup
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="price-05">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box">
							<div class="pricing">
								<sup>$</sup><span>150</span>
							</div>
							<div class="unit">
								Per Month</div>
						</div>
					</div>
					<div class="price-content">
						<h4 class="price-title">
							Basic Plan</h4>
						<div class="price-features">
							<ul>
								<li>Full Time
									Support</li>
								<li>Unlimited
									Data
									Transfer
								</li>
								<li>50GB Space
								</li>
								<li>Multiple
									Header
									Styles</li>
								<li style="text-decoration: line-through;">
									Free Mockup
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="price-05">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box">
							<div class="pricing">
								<sup>$</sup><span>200</span>
							</div>
							<div class="unit">
								<span>Per
									Month</span>
							</div>
						</div>
					</div>
					<div class="price-content">
						<h4 class="price-title">
							Maximum Plan</h4>
						<div class="price-features">
							<ul>
								<li>Full Time
									Support</li>
								<li>Unlimited
									Data
									Transfer
								</li>
								<li>50GB Space
								</li>
								<li>Multiple
									Header
									Styles</li>
								<li>Free Mockup
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<style class="build-css" data-class="price-05">${csstemplate["price-05"]}</style>
	`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-03.jpg',
		'category': '702',
		'name': 'price-02',
		'html': `<div class="row justify-content-center">
    <div class="col-md-6 col-lg-4">
        <div class="price-02">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-title">
                        <h6>Standard Plan</h6>
                    </div>
                    <div class="price-box">
                        <span class="pricing color-accent"><sup>$</sup>105</span>
                        <span class="unit">/m</span>
                        <div class="icon"><img alt="" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/our-service/price-icon01.png"></div>
                    </div>
                </div>
                <p>Orci varius natoque penatibus et magnis dis parturient montes.</p>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li><i class="sico lnr-check color-accent"></i> Full Time Support</li>
                            <li><i class="sico lnr-check color-accent"></i> Unlimited Data Transfer</li>
                            <li><i class="sico lnr-check color-accent"></i> 20GB Space</li>
                            <li><i class="sico lnr-check color-accent"></i> Multiple Header Styles</li>
                        </ul>
                        <a href="#" title="learn more" class="button-01">GET START</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="price-02">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-title">
                        <h6>Superior Plan</h6>
                    </div>
                    <div class="price-box">
                        <span class="pricing color-accent"><sup>$</sup>150</span>
                        <span class="unit">/m</span>
                        <div class="icon"><img alt="" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/our-service/price-icon02.png"></div>
                    </div>
                </div>
                <p>Orci varius natoque penatibus et magnis dis parturient montes.</p>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li><i class="sico lnr-check color-accent"></i> Full Time Support</li>
                            <li><i class="sico lnr-check color-accent"></i> Unlimited Data Transfer</li>
                            <li><i class="sico lnr-check color-accent"></i> 50GB Space</li>
                            <li><i class="sico lnr-check color-accent"></i> Multiple Header Styles</li>
                        </ul>
                        <a href="#" title="learn more" class="button-01">GET START</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="price-02">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-title">
                        <h6>Maximum Plan</h6>
                    </div>
                    <div class="price-box">
                        <span class="pricing color-accent"><sup>$</sup>200</span>
                        <span class="unit">/m</span>
                        <div class="icon"><img alt="" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/our-service/price-icon03.png"></div>
                    </div>
                </div>
                <p>Orci varius natoque penatibus et magnis dis parturient montes.</p>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li><i class="sico lnr-check color-accent"></i> Full Time Support</li>
                            <li><i class="sico lnr-check color-accent"></i> Unlimited Data Transfer</li>
                            <li><i class="sico lnr-check color-accent"></i> 120GB Space</li>
                            <li><i class="sico lnr-check color-accent"></i> Multiple Header Styles</li>
                        </ul>
                        <a href="#" title="learn more" class="button-01">GET START</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="price-02">${csstemplate["price-02"]}</style>
	<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-05.jpg',
		'category': '702',
		'name': 'price-01',
		'html': `<div class="row">
    <div class="col-md-6 col-lg-4">
        <div class="price-01">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/app01/app01-section06-bg-01.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
                        <div class="price-icon">
                            <i class="sico lnr-cog color-accent"></i>
                        </div>
                        <h4 class="price-title">Standard Plan</h4>
                    </div>
                </div>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li>20GB disk space</li>
                            <li>80GB disk space</li>
                            <li>All-in-one theme</li>
                            <li>Full time support</li>
                        </ul>
                    </div>
                    <div class="price-info">
                        <span class="pricing"><sub>$</sub>100</span>
                        <span class="unit">Month</span>
                    </div>
                </div>
                <div class="price-footer">
                    <a class="button-13" href="#">PURCHASE NOW</a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-6 col-lg-4">
        <div class="price-01">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/app01/app01-section06-bg-02.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
                        <div class="price-icon">
                            <i class="sico lnr-trophy" style="color: rgb(255, 255, 255);"></i>
                        </div>
                        <h4 class="price-title" style="color: rgb(255, 255, 255);">Maximum Plan</h4>
                    </div>
                </div>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li>80GB disk space</li>
                            <li>200GB disk space</li>
                            <li>All-in-one theme</li>
                            <li>Full time support</li>
                        </ul>
                    </div>
                    <div class="price-info">
                        <span class="pricing"><sub>$</sub>200</span>
                        <span class="unit">Month</span>
                    </div>
                </div>
                <div class="price-footer">
                    <a class="button-13" href="#">PURCHASE NOW</a>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-6 col-lg-4">
        <div class="price-01">
            <div class="price-item">
                <div class="price-header">
                    <div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/app01/app01-section06-bg-03.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
                        <div class="price-icon">
                            <i class="sico lnr-thumbs-up color-accent"></i>
                        </div>
                        <h4 class="price-title">Superior Plan</h4>
                    </div>
                </div>
                <div class="price-content">
                    <div class="price-features">
                        <ul>
                            <li>40GB disk space</li>
                            <li>120GB disk space</li>
                            <li>All-in-one theme</li>
                            <li>Full time support</li>
                        </ul>
                    </div>
                    <div class="price-info">
                        <span class="pricing"><sub>$</sub>150</span>
                        <span class="unit">Month</span>
                    </div>
                </div>
                <div class="price-footer">
                    <a class="button-13" href="#">PURCHASE NOW</a>
                </div>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="price-01">${csstemplate["price-01"]}</style>
	<style class="build-css" data-class="button-13">${csstemplate["button-13"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-04.jpg',
		'category': '702',
		'name': 'price-01-2',
		'html': `<div class="row price-01-list">
		<div class="col-md-6 col-lg-4 column-01">
			<div class="price-01">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/app01/app01-section06-bg-01.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
							<div class="price-icon">
								<i class="sico lnr-cog" style="color: rgb(26, 188, 156);"></i>
							</div>
							<h4 class="price-title">Standard Plan</h4>
						</div>
					</div>
					<div class="price-content">
						<div class="price-features">
							<ul>
                            <li>10M band width</li>
                            <li>80GB disk space</li>
                            <li>All-in-one theme</li>
                            <li>Full time support</li>
							</ul>
						</div>
						<div class="price-info">
							<span class="pricing"><sub>$</sub>100</span>
							<span class="unit">Month</span>
						</div>
					</div>
					<div class="price-footer">
						<a class="button-13" href="#">PURCHASE NOW</a>
					</div>
				</div>
			</div>
		</div>
	
		<div class="col-md-6 col-lg-4 column-02">
			<div class="price-01">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/app01/app01-section06-bg-02.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
							<div class="price-icon">
								<i class="sico lnr-trophy" style="color: rgb(255, 255, 255);"></i>
							</div>
							<h4 class="price-title" style="color: rgb(255, 255, 255);">Maximum Plan</h4>
						</div>
					</div>
					<div class="price-content">
						<div class="price-features">
							<ul>
								<li>100M band width</li>
								<li>200GB disk space</li>
								<li>All-in-one theme</li>
								<li>Full time support</li>
								<li>Free Mockup</li>
							</ul>
						</div>
						<div class="price-info">
							<span class="pricing"><sub>$</sub>200</span>
							<span class="unit">Month</span>
						</div>
					</div>
					<div class="price-footer">
						<a class="button-13" href="#">PURCHASE NOW</a>
					</div>
				</div>
			</div>
		</div>
	
		<div class="col-md-6 col-lg-4 column-03">
			<div class="price-01">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/app01/app01-section06-bg-03.png&quot;); background-position: center top; background-repeat: no-repeat; background-size: 100% 100%;">
							<div class="price-icon">
								<i class="sico lnr-thumbs-up" style="color: rgb(26, 188, 156);"></i>
							</div>
							<h4 class="price-title">Superior Plan</h4>
						</div>
					</div>
					<div class="price-content">
						<div class="price-features">
							<ul>
								<li>50M band width</li>
								<li>120GB disk space</li>
								<li>All-in-one theme</li>
								<li>Full time support</li>
							</ul>
						</div>
						<div class="price-info">
							<span class="pricing"><sub>$</sub>150</span>
							<span class="unit">Month</span>
						</div>
					</div>
					<div class="price-footer">
						<a class="button-13" href="#">PURCHASE NOW</a>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	<style class="build-css" data-class="price-01">${csstemplate["price-01"]}</style>
	<style class="build-css" data-class="price-01-list">${csstemplate["price-01-list"]}</style>
	<style class="build-css" data-class="button-13">${csstemplate["button-13"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-07.jpg',
		'category': '702',
		'name': 'price-06',
		'html': `
		<div class="row" style="margin-bottom: -20px;">

		<div class="col-lg-4 col-md-6">
			<div class="price-06">
				<div class="front">
					<div class="price-header">
						<div class="price-pic">
							<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section05-img01.png" class="img-Lazy" data-src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section05-img01.png">
						</div>
						<div class="price-title">
							<h5>Standard Plan</h5>
						</div>
					</div>
					<div class="price-info">
						<span class="pricing"><sup>$</sup>105</span>
						<span class="unit">Per Month</span>
					</div>
					<div class="price-description">
						<p>Fusce velit tellus, elementum et libero mollis, pulvinar varius massa. Nullam at rhoncus augue.</p>
					</div>
					<div class="price-btn">
						<p>LEARN MORE <i class="sico lnr-arrow-right"></i></p>
					</div>
				</div>

				<div class="back">
					<div class="price-title">
						<h5>Achievable</h5>
					</div>
					<div class="price-features">
						<ul>
							<li><i class="sico lnr-check"></i>60 Change Keywords</li>
							<li><i class="sico lnr-check"></i>20 Social Media Reviews</li>
							<li><i class="sico lnr-check"></i>10 Blog Posts</li>
							<li><i class="sico lnr-check"></i>Full Time Support</li>
							<li><i class="sico lnr-check"></i>Free Optimization</li>
						</ul>
					</div>
					<div class="price-btn">
						<a href="#" title="WATCH VIDEO" class="button-06">GET START NOW</a>
					</div>
				</div>
			</div>
		</div>


		<div class="col-lg-4 col-md-6">
			<div class="price-06">
				<div class="front">
					<div class="price-header">
						<div class="price-pic">
							<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section05-img02.png" class="img-Lazy" data-src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section05-img02.png">
						</div>
						<div class="price-title">
							<h5>Superior Plan</h5>
						</div>
					</div>
					<div class="price-info">
						<span class="pricing"><sup>$</sup>120</span>
						<span class="unit">Per Month</span>
					</div>
					<div class="price-description">
						<p>Ut venenatis tincidunt nibh, vitae pellentesque arcu imperdiet consequat. Vestibulum non mollis.</p>
					</div>
					<div class="price-btn">
						<p>LEARN MORE <i class="sico lnr-arrow-right"></i></p>
					</div>
				</div>

				<div class="back">
					<div class="price-title">
						<h5>Achievable</h5>
					</div>
					<div class="price-features">
						<ul>
							<li><i class="sico lnr-check"></i>100 Change Keywords</li>
							<li><i class="sico lnr-check"></i>40 Social Media Reviews</li>
							<li><i class="sico lnr-check"></i>25 Blog Posts</li>
							<li><i class="sico lnr-check"></i>Full Time Support</li>
							<li><i class="sico lnr-check"></i>Free Optimization</li>
						</ul>
					</div>
					<div class="price-btn">
						<a href="#" title="WATCH VIDEO" class="button-06">GET START NOW</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="price-06">
				<div class="front">
					<div class="price-header">
						<div class="price-pic">
							<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section05-img03.png" class="img-Lazy" data-src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section05-img03.png">
						</div>
						<div class="price-title">
							<h5>Maximum Plan</h5>
						</div>
					</div>
					<div class="price-info">
						<span class="pricing"><sup>$</sup>150</span>
						<span class="unit">Per Month</span>
					</div>
					<div class="price-description">
						<p>Nam volutpat pulvinar iaculis. Suspendisse erat eros, semper eget egestas sit amet.</p>
					</div>
					<div class="price-btn">
						<p>LEARN MORE <i class="sico lnr-arrow-right"></i></p>
					</div>
				</div>

				<div class="back">
					<div class="price-title">
						<h5>Achievable</h5>
					</div>
					<div class="price-features">
						<ul>
							<li><i class="sico lnr-check"></i>180 Change Keywords</li>
							<li><i class="sico lnr-check"></i>100 Social Media Reviews</li>
							<li><i class="sico lnr-check"></i>50 Blog Posts</li>
							<li><i class="sico lnr-check"></i>Full Time Support</li>
							<li><i class="sico lnr-check"></i>Free Optimization</li>
						</ul>
					</div>
					<div class="price-btn">
						<a href="#" title="WATCH VIDEO" class="button-06">GET START NOW</a>
					</div>
				</div>
			</div>

		</div>

	</div>
	<style class="build-css" data-class="price-06">${csstemplate["price-06"]}</style>
	<style class="build-css" data-class="button-06">${csstemplate["button-06"]}</style>
	`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-08.jpg',
		'category': '702',
		'name': 'price-07',
		'html': `<div class="row">
		<div class="col-md-6 col-lg-4">
			<div class="price-07 color3">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box">
							<div class="price-image">
								<img alt="" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section07-img01.png"></div>
						</div>
					</div>
					<div class="price-content">
						<div class="price-title">
							<h4>Standard Plan</h4>
						</div>
						<div class="price-description">
							<p>Morbi venenatis venenatis elit</p>
						</div>
						<div class="price-features">
							<ul>
								<li>Full Time Support</li>
								<li>Unlimited Data Transfer</li>
								<li>10GB Space</li>
								<li>Multiple Header Styles</li>
							</ul>
						</div>
						<div class="price-info">
							<span class="pricing">$50</span>
							<span class="unit">Month</span>
						</div>
					</div>
					<div class="price-footer">
						<a class="button-price" href="#">PURCHASE NOW</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-4">
			<div class="price-07 color2">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box">
							<div class="price-image">
								<img alt="" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section07-img02.png"></div>
						</div>
					</div>
					<div class="price-content">
						<div class="price-title">
							<h4>Basic Plan</h4>
						</div>
						<div class="price-description">
							<p>Fusce malesuada vestibulum turpis</p>
						</div>
						<div class="price-features">
							<ul>
								<li>Full Time Support</li>
								<li>Unlimited Data Transfer</li>
								<li>40GB Space</li>
								<li>Multiple Header Styles</li>
							</ul>
						</div>
						<div class="price-info">
							<span class="pricing">$98</span>
							<span class="unit">Month</span>
						</div>
					</div>
					<div class="price-footer">
						<a class="button-price" href="#">PURCHASE NOW</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-4">
			<div class="price-07 color4">
				<div class="price-item">
					<div class="price-header">
						<div class="price-box">
							<div class="price-image">
								<img alt="" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section07-img03.png"></div>
						</div>
					</div>
					<div class="price-content">
						<div class="price-title">
							<h4>Maximum Plan</h4>
						</div>
						<div class="price-description">
							<p>Curabitur id quam porta justo vulputate</p>
						</div>
						<div class="price-features">
							<ul>
								<li>Full Time Support</li>
								<li>Unlimited Data Transfer</li>
								<li>100GB Space</li>
								<li>Multiple Header Styles</li>
							</ul>
						</div>
						<div class="price-info">
							<span class="pricing">$120</span>
							<span class="unit">Month</span>
						</div>
					</div>
					<div class="price-footer">
						<a class="button-price" href="#">PURCHASE NOW</a>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<style class="build-css" data-class="price-07">${csstemplate["price-07"]}</style>
		`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-09.jpg',
		'category': '702',
		'name': 'price-08',
		'html': ` <div class="row">
	<div class="col-md-6 col-lg-4">
		<div class="price-08 color-1">
			<div class="price-item">
				<div class="price-header">
					<div class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon09.png" class="img-Lazy" alt=""></div>
					<h4 class="price-title">Standard Plan</h4>
					<p>Nulla fringilla aliquet est nec dapibus</p>
				</div>
				<div class="price-content">
					<div class="price-features">
						<ul>
							<li>Full Time Support</li>
							<li>Unlimited Data Transfer</li>
							<li>5GB Space</li>
							<li>Multiple Header Styles</li>
						</ul>
					</div>
				</div>
				<div class="price-box">
					<span class="pricing"><sup>$</sup>19</span>
				</div>
			</div>
			<div class="price-footer">
				<a href="#" title="">PURCHASE NOW 
					<i class="sico lnr-arrow-right"><svg><use xlink:href="#lnr-arrow-right"></use></svg></i>
				</a>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="price-08 color-2">
			<div class="price-item">
				<div class="price-header">
					<div class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon10.png" class="img-Lazy" alt=""></div>
					<h4 class="price-title">Superior Plan</h4>
					<p>Nulla fringilla aliquet est nec dapibus</p>
				</div>
				<div class="price-content">
					<div class="price-features">
						<ul>
							<li>Full Time Support</li>
							<li>Unlimited Data Transfer</li>
							<li>10GB Space</li>
							<li>Multiple Header Styles</li>
						</ul>
					</div>
				</div>
				<div class="price-box">
					<span class="pricing"><sup>$</sup>39</span>
				</div>
			</div>
			<div class="price-footer">
				<a href="#" title="">PURCHASE NOW 
					<i class="sico lnr-arrow-right"><svg><use xlink:href="#lnr-arrow-right"></use></svg></i>
				</a>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="price-08 color-3">
			<div class="price-item">
				<div class="price-header">
					<div class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon11.png" class="img-Lazy" alt=""></div>
					<h4 class="price-title">Maximum Plan</h4>
					<p>Nulla fringilla aliquet est nec dapibus</p>
				</div>
				<div class="price-content">
					<div class="price-features">
						<ul>
							<li>Full Time Support</li>
							<li>Unlimited Data Transfer</li>
							<li>20GB Space</li>
							<li>Multiple Header Styles</li>
						</ul>
					</div>
				</div>
				<div class="price-box">
					<span class="pricing"><sup>$</sup>59</span>
				</div>
			</div>
			<div class="price-footer">
				<a href="#" title="">PURCHASE NOW 
					<i class="sico lnr-arrow-right"><svg><use xlink:href="#lnr-arrow-right"></use></svg></i>
				</a>
			</div>
		</div>
	</div>
</div><style class="build-css" data-class="price-08">${csstemplate["price-08"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-11.jpg',
		'category': '702',
		'name': 'price-11',
		'html': `<div class="row text-center align-items-start justify-content-start">
		<div class="col-md-3">
			<div class="price-11 price-title price-color2">
				<div class="price-header">
					<div class="price-box">
						<h3 class="title">Achievable</h3>
						<p class="mb-0">Duis vulputate tincidunt.</p>
					</div>
				</div>
				<div class="price-features">
					<ul>
						<li>Band width</li>
						<li>Disk space</li>
						<li>All-in-one theme</li>
						<li>Full time support</li>
						<li>Screen sharing</li>
						<li>Multiple header styles</li>
						<li>Free mockup</li>
					</ul>
				</div>
				<div class="price-footer">
					<h6>Are you ready?</h6>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="price-11 price-color1">
				<div class="price-header">
					<div class="price-box">
						<h3 class="title">Standard Plan</h3>
						<div class="price-info">
							<span class="pricing">$99</span>
							<span class="unit">/ Month</span>
						</div>
					</div>
				</div>
				<div class="price-features">
					<ul>
						<li>
							<span class="title">Band width</span>10M</li>
						<li>
							<span class="title">Disk space</span>50GB</li>
						<li>
							<span class="title">All-in-one theme</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Full time support</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Screen sharing</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Multiple Header Styles</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Free Mockup</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
					</ul>
				</div>
				<div class="price-footer">
					<a href="#" title="BUY NOW" class="price-button">BUY NOW</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="price-11 best-value price-color2">
				<div class="price-header">
					<div class="price-box">
						<div class="icon">
							<i class="sico lnr-trophy"><svg>
									<use xlink:href="#lnr-trophy"></use>
								</svg></i>
						</div>
						<h3 class="title">Maximum Plan</h3>
						<div class="price-info">
							<span class="pricing">$260</span>
							<span class="unit">/ Month</span>
						</div>
					</div>
				</div>
				<div class="price-features">
					<ul>
						<li>
							<span class="title">Band width</span>150M</li>
						<li>
							<span class="title">Disk space</span>200GB </li>
						<li>
							<span class="title">All-in-one theme</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Full time support</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Screen sharing</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Multiple Header Styles</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Free Mockup</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
					</ul>
				</div>
				<div class="price-footer">
					<a href="#" title="BUY NOW" class="price-button">BUY NOW</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="price-11 price-color3">
				<div class="price-header">
					<div class="price-box">
						<h3 class="title">Superior Plan</h3>
						<div class="price-info">
							<span class="pricing">$99</span>
							<span class="unit">/ Month</span>
						</div>
					</div>
				</div>
				<div class="price-features">
					<ul>
						<li>
							<span class="title">Band width</span>60M</li>
						<li>
							<span class="title">Disk space</span>120GB</li>
						<li>
							<span class="title">All-in-one theme</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Full time support</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Screen sharing</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Multiple Header Styles</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
						<li>
							<span class="title">Free Mockup</span>
							<i class="sico lnr-checkmark-circle"><svg>
									<use xlink:href="#lnr-checkmark-circle"></use>
								</svg></i>
						</li>
					</ul>
				</div>
				<div class="price-footer">
					<a href="#" title="BUY NOW" class="price-button">BUY NOW</a>
				</div>
			</div>
		</div>
	</div>	<style class="build-css" data-class="price-11">${csstemplate["price-11"]}</style>
	`
	}, {
		'thumbnail': 'minis-shortcode/pricing/pricing-10.jpg',
		'category': '702',
		'name': 'price-10',
		'html': `
	<div class="row">
	<div class="col-md-4">
		<div class="price-10 best-value price-color2">
			<div class="price-header">
				<div class="price-box">
					<div class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-icon04.png" alt="" class="img-Lazy"></div>
					<h3 class="title">Standard Plan</h3>
					<p>Cras vulputate eget magna sed viverra.</p>
				</div>
			</div>
			<div class="price-info">
				<span class="pricing">$55</span>
				<div class="unit">
					<span>Per</span>
					<span>Month</span>
				</div>
			</div>
			<div class="price-features">
				<ul>
					<li>Full Time Support</li>
					<li>Unlimited Data Transfer</li>
					<li>50GB Space</li>
					<li>Free Mockup</li>
				</ul>
			</div>
			<div class="price-footer">
				<a href="#" title="START NOW" class="button-01 border-radius-3 price-button">START NOW</a>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="price-10 best-value price-color1">
			<div class="price-header">
				<div class="price-box">
					<div class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-icon05.png" alt="" class="img-Lazy"></div>
					<h3 class="title">Superior Plan</h3>
					<p> Cras vulputate eget magna sed viverra. </p>
				</div>
			</div>
			<div class="price-info">
				<span class="pricing">$95</span>
				<div class="unit">
					<span>Per</span>
					<span>Month</span>
				</div>
			</div>
			<div class="price-features">
				<ul>
					<li>Full Time Support</li>
					<li>Unlimited Data Transfer</li>
					<li>100GB Space</li>
					<li>Free Mockup</li>
				</ul>
			</div>
			<div class="price-footer">
				<a href="#" title="START NOW" class="button-01 border-radius-3 price-button">START NOW</a>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="price-10 best-value price-color3">
			<div class="price-header">
				<div class="price-box">
					<div class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-icon06.png" alt="" class="img-Lazy"></div>
					<h3 class="title">Maximum Plan</h3>
					<p> Cras vulputate eget magna sed viverra. </p>
				</div>
			</div>
			<div class="price-info">
				<span class="pricing">$135</span>
				<div class="unit">
					<span>Per</span>
					<span>Month</span>
				</div>
			</div>
			<div class="price-features">
				<ul>
					<li>Full Time Support</li>
					<li>Unlimited Data Transfer</li>
					<li>200GB Space</li>
					<li>Free Mockup</li>
				</ul>
			</div>
			<div class="price-footer">
				<a href="#" title="START NOW" class="button-01 border-radius-3 price-button">START NOW</a>
			</div>
		</div>
	</div>
</div>
<style class="build-css" data-class="price-10">${csstemplate["price-10"]}</style>
<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>
	`
	}


);
// Our Team
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/ourteam/ourteam03.jpg',
	'category': '703',
	'name': 'ourteam-01',
	'html': `
			<div class="ourteam-01">
				<div class="pic">
					<img class="img-Lazy" alt="David Parker" src="/Portals/_default/ContentBuilder/minis-page/home02/ourTeam-02.jpg">
				</div>
				<div class="content">
					<h6 class="title">David Parker</h6>
					<small>Interdum et malesuada fames</small>
					<span class="icon">
						<a  href="#" title="sico fab-facebook-f"><i class="sico fab-facebook-f"></i></a>
						<a  href="#" title="sico fab-twitter"><i class="sico fab-twitter"></i></a>
						<a  href="#" title="sico fab-linkedin-in"><i class="sico fab-linkedin-in"></i></a>
					</span>
				</div>
			</div>
			<style class="build-css" data-class="ourteam-01">${csstemplate["ourteam-01"]}</style>
		`
}, {
	'thumbnail': 'minis-shortcode/ourteam/ourteam01.jpg',
	'category': '703',
	'name': 'ourteam-01-list',
	'html': `<div class="row col-no-padding">
    <div class="col-lg col-md-4 col-sm-6">
        <div class="ourteam-01">
            <div class="pic">
                <img class="img-Lazy" alt="Ross Williams" src="/Portals/_default/ContentBuilder/minis-page/home02/ourTeam-01.jpg">
            </div>
            <div class="content">
                <h6 class="title">Ross Williams</h6>
                <small>Interdum et malesuada fames</small>
                <span class="icon">
                    <a  href="#" title="sico fab-facebook-f"><i class="sico fab-facebook-f"></i></a>
                    <a  href="#" title="sico fab-twitter"><i class="sico fab-twitter"></i></a>
                    <a  href="#" title="sico fab-linkedin-in"><i class="sico fab-linkedin-in"></i></a>
                </span>
            </div>
        </div>
    </div>
    <div class="col-lg col-md-4 col-sm-6">
        <div class="ourteam-01">
            <div class="pic">
                <img class="img-Lazy" alt="David Parker" src="/Portals/_default/ContentBuilder/minis-page/home02/ourTeam-02.jpg">
            </div>
            <div class="content">
                <h6 class="title">David Parker</h6>
                <small>Interdum et malesuada fames</small>
                <span class="icon">
                    <a  href="#" title="sico fab-facebook-f"><i class="sico fab-facebook-f"></i></a>
                    <a  href="#" title="sico fab-twitter"><i class="sico fab-twitter"></i></a>
                    <a  href="#" title="sico fab-linkedin-in"><i class="sico fab-linkedin-in"></i></a>
                </span>
            </div>
        </div>
    </div>
    <div class="col-lg col-md-4 col-sm-6">
        <div class="ourteam-01">
            <div class="pic">
                <img class="img-Lazy" alt="Ettle Halsey" src="/Portals/_default/ContentBuilder/minis-page/home02/ourTeam-03.jpg" >
            </div>
            <div class="content">
                <h6 class="title">Ettle Halsey</h6>
                <small>Interdum et malesuada fames</small>
                <span class="icon">
                    <a href="#" title="sico fab-facebook-f"><i class="sico fab-facebook-f"></i></a>
                    <a href="#" title="sico fab-twitter"><i class="sico fab-twitter"></i></a>
                    <a href="#" title="sico fab-linkedin-in"><i class="sico fab-linkedin-in"></i></a>
                </span>
            </div>
        </div>
    </div>
    <div class="col-lg col-md-4 col-sm-6">
        <div class="ourteam-01">
            <div class="pic">
                <img class="img-Lazy" alt="John Neo" src="/Portals/_default/ContentBuilder/minis-page/home02/ourTeam-04.jpg" >
            </div>
            <div class="content">
                <h6 class="title">John Neo</h6>
                <small>Interdum et malesuada fames</small>
                <span class="icon">
                    <a href="#" title="sico fab-facebook-f"><i class="sico fab-facebook-f"></i></a>
                    <a href="#" title="sico fab-twitter"><i class="sico fab-twitter"></i></a>
                    <a href="#" title="sico fab-linkedin-in"><i class="sico fab-linkedin-in"></i></a>
                </span>
            </div>
        </div>
    </div>
    <div class="col-lg col-md-4 col-sm-6">
        <div class="ourteam-01">
            <div class="pic">
                <img class="img-Lazy" alt="Monica Wood" src="/Portals/_default/ContentBuilder/minis-page/home02/ourTeam-05.jpg">
            </div>
            <div class="content">
                <h6 class="title">Monica Wood</h6>
                <small>Interdum et malesuada fames</small>
                <span class="icon">
                    <a href="#" title="sico fab-facebook-f"><i class="sico fab-facebook-f"></i></a>
                    <a href="#" title="sico fab-twitter"><i class="sico fab-twitter"></i></a>
                    <a href="#" title="sico fab-linkedin-in"><i class="sico fab-linkedin-in"></i></a>
                </span>
            </div>
        </div>
    </div>
</div>
<style class="build-css" data-class="ourteam-01">${csstemplate["ourteam-01"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/ourteam/ourteam02.jpg',
	'category': '703',
	'name': 'ourteam-02',
	'html': `<div class="ourteam-02">
    <div class="pic">
        <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home08/homepage08-team01.jpg" >
    </div>
    <div class="content">
        <div class="title">
            <h5>Ross Williams <small>/ Photographer</small> </h5>
        </div>
        <ul class="info">
            <li> <i class="color-accent sico lnr-phone-wave"></i> (845) 359-7667 </li>
            <li> <i class="color-accent sico lnr-envelope-open"></i> ross.williams@gmail.com</li>
        </ul>
    </div>
</div>
<div class="ourteam-02">
    <div class="pic">
        <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home08/homepage08-team02.jpg">
    </div>
    <div class="content">
        <div class="title">
            <h5>Jessica McDade <small>/ Website Designer</small> </h5>
        </div>
        <ul class="info">
            <li> <i class="color-accent sico lnr-phone-wave"></i> (845) 359-8321 </li>
            <li> <i class="color-accent sico lnr-envelope-open"></i> jessica.mcdade@gmail.com</li>
        </ul>


    </div>
</div>
<div class="ourteam-02">
    <div class="pic">
        <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home08/homepage08-team03.jpg">
    </div>
    <div class="content">
        <div class="title">
            <h5>Henry Smith <small>/ Senior Programmer</small> </h5>
        </div>

        <ul class="info">
            <li> <i class="color-accent sico lnr-phone-wave"></i> (845) 359-7654 </li>
            <li> <i class="color-accent sico lnr-envelope-open"></i> henry.smith@gmail.com</li>
        </ul>

    </div>
</div>
<div class="ourteam-02">
    <div class="pic">
        <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home08/homepage08-team04.jpg">
    </div>
    <div class="content">
        <div class="title">
            <h5>John Neo <small>/ Senior Programmer</small> </h5>
        </div>

        <ul class="info">
            <li> <i class="color-accent sico lnr-phone-wave"></i> (845) 359-5794 </li>
            <li> <i class="color-accent sico lnr-envelope-open"></i> john neo@gmail.com</li>
        </ul>
 
  

    </div>
</div>
<div class="ourteam-02">
    <div class="pic">
       <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home08/homepage08-team05.jpg">
    </div>
    <div class="content">
        <div class="title">
            <h5>Teena Jhon <small>/ Lead Desinger</small> </h5>
        </div>
         
        <ul class="info">
            <li> <i class="color-accent sico lnr-phone-wave"></i> (845) 359-5330 </li>
            <li> <i class="color-accent sico lnr-envelope-open"></i> Teena.Jhon@gmail.com</li>
        </ul>

    </div>
</div>
<style class="build-css" data-class="ourteam-02">${csstemplate["ourteam-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/ourteam/ourteam04.jpg',
	'category': '703',
	'name': 'ourteam-03',
	'html': `<div class="row ourteam-03-list">
	<div class="col-lg-6">
		<div class="ourteam-03">
			<div class="pic">
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section07-img01.jpg" alt="image" class="img-Lazy">
				<div class="share">
					<a href="#">
						<i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
					</a>
				</div>
			</div>
			<div class="content">
				<div class="title">
					<h6>Michale Joe</h6>
				</div>
				<div class="info">
					<p>Integer non nisl commodo, tincidunt ligula eget, tincidunt odio. Interdum et fames ac ante ipsum primis in faucibus.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="ourteam-03">
			<div class="pic">
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section07-img02.jpg" alt="image" class="img-Lazy">
				<div class="share">
					<a href="#">
						<i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
					</a>
				</div>
			</div>
			<div class="content">
				<div class="title">
					<h6>Jack Simmons</h6>
				</div>
				<div class="info">
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row ourteam-03-list">
	<div class="col-lg-6">
		<div class="ourteam-03">
			<div class="pic">
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section07-img03.jpg" alt="image" class="img-Lazy">
				<div class="share">
					<a href="#">
						<i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
					</a>
				</div>
			</div>
			<div class="content">
				<div class="title">
					<h6>Alyssa Hiyama</h6>
				</div>
				<div class="info">
					<p>Vivamus hendrerit sem vel libero facilisis, consectetur interdum est ultrices. Orci varius natoque penatibus.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="ourteam-03">
			<div class="pic">
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section07-img04.jpg" alt="image" class="img-Lazy">
				<div class="share">
					<a href="#">
						<i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
					</a>
					<a href="#">
						<i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
					</a>
				</div>
			</div>
			<div class="content">
				<div class="title">
					<h6>Renita Gillenwater</h6>
				</div>
				<div class="info">
					<p>Etiam auctor est quis metus tristique pharetra. Maecenas fermentum est nec nulla viverra efficitur.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<style class="build-css" data-class="ourteam-03">${csstemplate["ourteam-03"]}</style>
	`
}, {
	'thumbnail': 'minis-shortcode/ourteam/ourteam05.jpg',
	'category': '703',
	'name': 'ourteam-04',
	'html': `
		<div class="row ourteam-04-list">
    <div class="col-md-6">
        <div class="ourteam-04">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section09-img01.png" class="img-Lazy" alt="David Parker"></div>
            <div class="title">
                <h6>David Parker</h6>
            </div>
            <div class="info">
                <p>CEO</p>
            </div>
            <div class="description">
                <p>Donec eu posuere ligula. Curabitur egestas ipsum sit amet eros.</p>
            </div>
            <div class="social">
                <a href="#">
                    <i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
                </a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="ourteam-04 color3">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section09-img02.png" class="img-Lazy" alt="Lorene Howard"></div>
            <div class="title">
                <h6>Lorene Howard</h6>
            </div>
            <div class="info">
                <p>Programmer</p>
            </div>
            <div class="description">
                <p>Fusce venenatis dignissim ligula, dignissim ultrices nunc varius vel.</p>
            </div>
            <div class="social">
                <a href="#">
                    <i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="row ourteam-04-list">
    <div class="col-md-6">
        <div class="ourteam-04 color2">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section09-img03.png" class="img-Lazy" alt="Alice Blanche"></div>
            <div class="title">
                <h6>Alice Blanche</h6>
            </div>
            <div class="info">
                <p>Director</p>
            </div>
            <div class="description">
                <p>Pellentesque et volutpat nisi. Duis ac commodo nulla. In hac habitasse platea.</p>
            </div>
            <div class="social">
                <a href="#">
                    <i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
                </a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="ourteam-04 color4">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section09-img04.png" class="img-Lazy" alt="Julie Ann"></div>
            <div class="title">
                <h6>Julie Ann</h6>
            </div>
            <div class="info">
                <p>Design director</p>
            </div>
            <div class="description">
                <p>Integer eget dictum elit, sed cursus nunc. Nullam est leo, suscipit quis turpis.</p>
            </div>
            <div class="social">
                <a href="#">
                    <i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-pinterest-p"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>
                </a>
                <a href="#">
                    <i class="sico fab-linkedin-in"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
                </a>
            </div>
        </div>
    </div>
</div> <style class="build-css" data-class="ourteam-04">${csstemplate["ourteam-04"]}</style>
		`
}, 
{
	'thumbnail': 'minis-shortcode/ourteam/ourteam05-5.jpg',
	'category': '703',
	'name': 'ourteam-05',
	'html': `<div class="ourteam-05">
	<div class="pic">
		<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas2/saas2-img08.jpg" alt=""></div>
	<div class="content edit-box">
		<div class="rating">
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
		</div>
		<p>Easy module to work with, awesome addition to any website. And their always quick to respond to any support questions.</p>
		<p class="mb-0">
			<span class="name">Lana Adams</span> - Faithful client</p>
	</div>
</div>
<div class="ourteam-05 active">
	<div class="pic">
		<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas2/saas2-img09.jpg" alt=""></div>
	<div class="content edit-box">
		<div class="rating">
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
		</div>
		<p>Great package! The support is outstanding. Courteous, prompt and very helpful. </p>
		<p class="mb-0">
			<span class="name">Laura Nixon</span> - Faithful client</p>
	</div>
</div>
<div class="ourteam-05">
	<div class="pic">
		<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas2/saas2-img10.jpg" alt=""></div>
	<div class="content edit-box">
		<div class="rating">
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
			<i class="sico fas-star"><svg><use xlink:href="#fas-star"></use></svg></i>
		</div>
		<p>They surprised us with their innovative products every time. We have been enjoying their great skins, modules and services all the time.</p>
		<p class="mb-0">
			<span class="name">Harry Brown</span> - Faithful client</p>
	</div>
</div><style class="build-css" data-class="ourteam-05">${csstemplate["ourteam-05"]}</style>`}
, 
{
	'thumbnail': 'minis-shortcode/ourteam/ourteam06.jpg',
	'category': '703',
	'name': 'ourteam-06',
	'html': `
	<div class="row">
    <div class="col-lg-6">
        <div class="ourteam-06">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-img01.jpg" class="img-Lazy" alt=""></div>
            <div class="cont edit-box">
                <h6 class="title">Willie Perry</h6>
                <p class="color-accent">Senior Programmer</p>
                <div class="spacer height-20"></div>
                <p>Vivamus suscipit tempus nunc eget mattis. Orci varius natoque penatibus et magnis dis parturient.</p>
                <div class="spacer height-20"></div>
                <div class="edit-box">
                    <a href="#" title="">
                        <i class="sico fab-facebook-f"><svg>
                                <use xlink:href="#fab-facebook-f"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-twitter"><svg>
                                <use xlink:href="#fab-twitter"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-linkedin-in"><svg>
                                <use xlink:href="#fab-linkedin-in"></use>
                            </svg></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="ourteam-06">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-img02.jpg" class="img-Lazy" alt=""></div>
            <div class="cont edit-box">
                <h6 class="title">Ross Williams</h6>
                <p class="color-accent">Web Designer</p>
                <div class="spacer height-20"></div>
                <p>Vivamus suscipit tempus nunc eget mattis. Orci varius natoque penatibus et magnis dis parturient.</p>
                <div class="spacer height-20"></div>
                <div class="edit-box">
                    <a href="#" title="">
                        <i class="sico fab-facebook-f"><svg>
                                <use xlink:href="#fab-facebook-f"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-twitter"><svg>
                                <use xlink:href="#fab-twitter"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-linkedin-in"><svg>
                                <use xlink:href="#fab-linkedin-in"></use>
                            </svg></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-6">
        <div class="ourteam-06">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-img03.jpg" class="img-Lazy" alt=""></div>
            <div class="cont edit-box">
                <h6 class="title">Greg Wilson</h6>
                <p class="color-accent">Photographer</p>
                <div class="spacer height-20"></div>
                <p>Vivamus suscipit tempus nunc eget mattis. Orci varius natoque penatibus et magnis dis parturient.</p>
                <div class="spacer height-40"></div>
                <div class="edit-box">
                    <a href="#" title="">
                        <i class="sico fab-facebook-f"><svg>
                                <use xlink:href="#fab-facebook-f"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-twitter"><svg>
                                <use xlink:href="#fab-twitter"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-linkedin-in"><svg>
                                <use xlink:href="#fab-linkedin-in"></use>
                            </svg></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="ourteam-06">
            <div class="pic">
                <img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-img04.jpg" class="img-Lazy" alt=""></div>
            <div class="cont edit-box">
                <h6 class="title">Willie Perry</h6>
                <p class="color-accent">Senior Programmer</p>
                <div class="spacer height-20"></div>
                <p>Vivamus suscipit tempus nunc eget mattis. Orci varius natoque penatibus et magnis dis parturient.</p>
                <div class="spacer height-40"></div>
                <div class="edit-box">
                    <a href="#" title="">
                        <i class="sico fab-facebook-f"><svg>
                                <use xlink:href="#fab-facebook-f"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-twitter"><svg>
                                <use xlink:href="#fab-twitter"></use>
                            </svg></i>
                    </a>
                    <a href="#" title="">
                        <i class="sico fab-linkedin-in"><svg>
                                <use xlink:href="#fab-linkedin-in"></use>
                            </svg></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="ourteam-06">${csstemplate["ourteam-06"]}</style>`}
);

// Info Box
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/infobox/infobox-01.jpg',
	'category': '704',
	'name': 'infobox-01',
	'html': `<div class="content">
    <div class="infobox-01">
        <div class="counter">
            <span>01</span>
        </div>
        <div class="content edit-box">
            <h5>Share your thought</h5>
            <p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
        </div>
    </div>
    <div class="infobox-01">
        <div class="counter">
            <span>02</span>
        </div>
        <div class="content edit-box">
            <h5>Analyze your requirements</h5>
            <p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
        </div>
    </div>
    <div class="infobox-01">
        <div class="counter">
            <span>03</span>
        </div>
        <div class="content edit-box">
            <h5>Work on web design</h5>
            <p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-01">${csstemplate["infobox-01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-02.jpg',
	'category': '705',
	'name': 'infobox-02',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="infobox-02">
            <div class="pic color-accent">
                <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home04/infobox-icon-01.png" alt="icon" >
            </div>
            <div class="content edit-box">
                <h6>Website SEO</h6>
                <p>Etiam id quam sit amet leo pharetra congue. Mauris eget metus et magna accumsan pellentesque id non velit. </p>
            </div>
            <div class="button"><a class="button-02" href="#"><i class="sico lnr-plus"></i></a></div>
        </div>
        <div class="spacer height-40 d-md-none"></div>
    </div>
    <div class="col-md-4">
        <div class="infobox-02">
            <div class="pic color-accent">
                <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home04/infobox-icon-02.png" alt="icon" >
            </div>
            <div class="content edit-box">
                <h6>Website Design</h6>
                <p>Praesent eget ex vel libero pellentesque faucibus id vel odio. Morbi porttitor justo felis, gravida porttitor.</p>
            </div>
            <div class="button"><a class="button-02" href="#"><i class="sico lnr-plus"></i></a></div>
        </div>
        <div class="spacer height-40 d-md-none"></div>
    </div>
    <div class="col-md-4">
        <div class="infobox-02">
            <div class="pic color-accent">
                <img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home04/infobox-icon-03.png" alt="icon">
            </div>
            <div class="content edit-box">
                <h6>Incomparable Service</h6>
                <p>Integer eu velit at dui convallis lacinia. Curabitur consectetur erat et augue vehicula sagittis.</p>
            </div>
            <div class="button"><a class="button-02" href="#"><i class="sico lnr-plus"></i></a></div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-02">${csstemplate["infobox-02"]}</style>
	<style class="build-css" data-class="button-02">${csstemplate["button-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-03.jpg',
	'category': '703',
	'name': 'infobox-03',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="infobox-03">
            <div class="pic-box">
                <div class="pic">
                    <img class="img-Lazy" alt="Image" src="/Portals/_default/ContentBuilder/minis-page/home04/homepage04-section05-01.png">
                </div>

                <a href="#"><i class="sico lnr-icons2"></i></a>
                <a href="#" style="background: rgb(40, 181, 235);" title=""><i class="sico fab-twitter"></i></a>
                <a href="#" style="background: rgb(230, 68, 90);"><i class="sico fab-pinterest-p"></i></a>
                <a href="#" style="background: rgb(73, 125, 203);"><i class="sico fab-facebook-f"></i></a>
            </div>
            <div class="content edit-box">
                <h6>Sara Wright</h6>
                <p style="color:#666666">Aliquam tristique dignissim justo, hendrerit nibh consequat ac. </p>
                <p class="color-accent mb-0" href="#">Consultant</p>
            </div>
        </div>
        <div class="spacer height-40 d-md-none"></div>
    </div>

    <div class="col-md-4">
        <div class="infobox-03">
            <div class="pic-box">
                <div class="pic">
                    <img class="img-Lazy" alt="Image" src="/Portals/_default/ContentBuilder/minis-page/home04/homepage04-section05-02.png">
                </div>

                <a href="#"><i class="sico lnr-icons2"></i></a>
                <a href="#" style="background: rgb(40, 181, 235);"><i class="sico fab-twitter"></i></a>
                <a href="#" style="background: rgb(230, 68, 90);"><i class="sico fab-pinterest-p"></i></a>
                <a href="#" style="background: rgb(73, 125, 203);"><i class="sico fab-facebook-f"></i></a>
            </div>
            <div class="content edit-box">
                <h6>John Neo</h6>
                <p style="color:#666666">Aliquam tristique dignissim justo, hendrerit nibh consequat ac. </p>
                <p class="color-accent mb-0" href="#">Consultant</p>
            </div>
        </div>
        <div class="spacer height-40 d-md-none"></div>
    </div>

    <div class="col-md-4">
        <div class="infobox-03">
            <div class="pic-box">
                <div class="pic">
                    <img class="img-Lazy" alt="Image" src="/Portals/_default/ContentBuilder/minis-page/home04/homepage04-section05-03.png">
                </div>

                <a href="#"><i class="sico lnr-icons2"></i></a>
                <a href="#" style="background: rgb(40, 181, 235);"><i class="sico fab-twitter"></i></a>
                <a href="#" style="background: rgb(230, 68, 90);"><i class="sico fab-pinterest-p"></i></a>
                <a href="#" style="background: rgb(73, 125, 203);"><i class="sico fab-facebook-f"></i></a>
            </div>
            <div class="content edit-box">
                <h6>Hillary Duff</h6>
                <p style="color:#666666">Aliquam tristique dignissim justo, hendrerit nibh consequat ac. </p>
                <p class="color-accent mb-0" href="#">Consultant</p>
            </div>
        </div>
    </div>

</div>
	<style class="build-css" data-class="infobox-03">${csstemplate["infobox-03"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-04.jpg',
	'category': '704',
	'name': 'infobox-04',
	'html': `<div class="row no-gutters" style="border-bottom: 1px solid rgb(226, 226, 226);">
    <div class="col-md-4">
        <div class="infobox-04">
            <div class="box">
                <div class="title">
                    <small>01</small>
                    <h4>Interface Design</h4>
                </div>
                <div class="content edit-box">
                    <p>Suspendisse at ex egestas, cursus purus id, pretium est. Etiam non iaculis justo. Etiam a nunc leo interdum molestie.</p>
                </div>
                <div class="link">
                    <a href="#">VIEW MORE <span>+</span></a>
                </div>
            </div>
            <div class="icon">
                <i class="sico lnr-window"></i>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="infobox-04">
            <div class="box">
                <div class="title">
                    <small>02</small>
                    <h4>Incredible Support</h4>
                </div>
                <div class="content edit-box">
                    <p>Duis malesuada iaculis risus non fringilla. Quisque varius nibh et nibh ullamcorper, vitae lacinia orci malesuada. </p>
                </div>
                <div class="link">
                    <a href="#">VIEW MORE <span>+</span></a>
                </div>
            </div>
            <div class="icon">
                <i class="sico lnr-cog"></i>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="infobox-04">
            <div class="box">
                <div class="title">
                    <small>03</small>
                    <h4>Awesome Customer Service</h4>
                </div>
                <div class="content edit-box">
                    <p>Quisque suscipit convallis mi tristique congue. Vivamus pharetra sapien et nunc commodo ullamcorper volutpat.</p>
                </div>
                <div class="link">
                    <a href="#">VIEW MORE <span>+</span></a>
                </div>
            </div>
            <div class="icon">
                <i class="sico lnr-headset"></i>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-04">${csstemplate["infobox-04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-05.jpg',
	'category': '704',
	'name': 'infobox-05',
	'html': `<div class="row">
    <div class="col-md-3">
        <div class="infobox-05">
            <div class="number number-01"><span>01</span></div>
            <div class="title">
                <h5>Demand Analysis</h5>
            </div>
            <p>Morbi feugiat, nibh nec laoreet molis augue mi accumsan velitacscele, risque turpis purus ut odio lorem.</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="infobox-05">
            <div class="number number-02"><span>02</span></div>
            <div class="title">
                <h5>Web Design</h5>
            </div>
            <p>Sed congue lorem id lorem max imus velitacscele, risque turpis purus ut odio lorem maximus.</p>
        </div>
    </div>

    <div class="col-md-3">
        <div class="infobox-05">
            <div class="number number-03"><span>03</span></div>
            <div class="title">
                <h5>Develop Theme</h5>
            </div>
            <p>Feugiat, nibh nec laoreet molis augue mi accumsan velitacscele, risque turpis purus lorem maximus.</p>
        </div>
    </div>

    <div class="col-md-3">
        <div class="infobox-05">
            <div class="number number-04"><span>04</span></div>
            <div class="title">
                <h5>Program Test</h5>
            </div>
            <p>Laoreet molis augue mi accumsan velitacscele, risque turpis. Donec ut massa congue lorem.</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-05">${csstemplate["infobox-05"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-06.jpg',
	'category': '703',
	'name': 'infobox-06',
	'html': `<div class="row">
    <div class="col-md-6">
        <div class="infobox-06 edit-box">
            <div class="pic color-accent"><a href="#" title=""><img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home07/homepage07-img06.jpg" alt=""></a></div>
            <div class="title">
                <h6>Elizabeth Green</h6>
            </div>
            <p class="color-accent">Designer</p>
        </div>
        <div class="infobox-06 edit-box">
            <div class="pic color-accent"><a href="#" title=""><img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home07/homepage07-img07.jpg" alt=""></a></div>
            <div class="title">
                <h6>Willie Clark</h6>
            </div>
            <p class="color-accent">Programmer</p>
        </div>

    </div>
    <div class="col-md-6">
        <div class="spacer height-40 mb-10 d-none d-md-block"></div>
        <div class="infobox-06 edit-box">
            <div class="pic color-accent"><a href="#" title=""><img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home07/homepage07-img08.jpg" alt=""></a></div>
            <div class="title">
                <h6>Jennifer Freeman</h6>
            </div>
            <p class="color-accent">Company CEO</p>
        </div>
        <div class="infobox-06 edit-box">
            <div class="pic color-accent"><a href="#" title=""><img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home07/homepage07-img09.jpg" alt=""></a></div>
            <div class="title">
                <h6>Ross Williams</h6>
            </div>
            <p class="color-accent">Designer Manager</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-06">${csstemplate["infobox-06"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-07.jpg',
	'category': '706',
	'name': 'infobox-07',
	'html': `<div class="row">
    <div class="col-md-6 col-lg-4">
        <div class="infobox-07">
            <div class="pic">
                <span><a href="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section01-01.jpg" title="Professional Design" class="is-lightbox" data-ilightbox="image"><img class="img-Lazy" alt="Professional Design" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section01-01.jpg"></a></span>
            </div>
            <div class="content edit-box">
                <h5 class="size-24">Professional Design</h5>
                <p>Maecenas cursus efficitur nisl quis vehicula.</p>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="infobox-07 mt-30 mt-md-0">
            <div class="pic">
                <img class="img-Lazy" alt="SEO Basic Optimization" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section01-02.jpg">
            </div>
            <div class="content edit-box">
                <h5 class="size-24">SEO Basic Optimization</h5>
                <p>Maecenas cursus efficitur nisl quis vehicula.</p>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-4">
        <div class="infobox-07 mt-30 mt-lg-0">
            <div class="pic">
                <img class="img-Lazy" alt="Incomparable service" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section01-03.jpg">
            </div>
            <div class="content edit-box">
                <h5 class="size-24">Incomparable service</h5>
                <p>Maecenas cursus efficitur nisl quis vehicula.</p>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-07">${csstemplate["infobox-07"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-08.jpg',
	'category': '705',
	'name': 'infobox-08',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="infobox-08">
            <div class="pic">
                <img class="img-Lazy" alt="icon" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section02-01.png">
            </div>
            <div class="content edit-box">
                <h6>Trendy Design</h6>
                <p>Morbi porttitor tellus in enim convallis, ac porta diam faucibus.</p>
            </div>
        </div>

    </div>
    <div class="col-md-4">
        <div class="infobox-08">
            <div class="pic">
                <img class="img-Lazy" alt="icon" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section02-02.png">
            </div>
            <div class="content edit-box">
                <h6>Excellent Technology</h6>
                <p>Morbi porttitor tellus in enim convallis, ac porta diam faucibus.</p>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="infobox-08">
            <div class="pic">
                <img class="img-Lazy" alt="icon" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section02-03.png">
            </div>
            <div class="content edit-box">
                <h6>Innovative Ideas</h6>
                <p>Morbi porttitor tellus in enim convallis, ac porta diam faucibus.</p>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="infobox-08">${csstemplate["infobox-08"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-09.jpg',
	'category': '704',
	'name': 'infobox-09',
	'html': `<div class="infobox-09" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section03-02.jpg&quot;); background-position: left top; background-repeat: no-repeat; background-size: cover;">
    <div class="content edit-box">
        <div class="icon ">
            <img class="img-Lazy" alt="icon" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section03-icon.png">
        </div>
        <h5 class="size-28" style="color:#FFFFFF">25 Years Of Creative Experience In Digital Marketing Is Worth Of Your Trust</h5>
    </div>
</div>
	<style class="build-css" data-class="infobox-09">${csstemplate["infobox-09"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-10.jpg',
	'category': '703',
	'name': 'infobox-10',
	'html': `<div class="row">
    <div class="col-md-6">
        <div class="infobox-10">
            <div class="pic">
                <img class="img-Lazy" alt="image" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section06-01.jpg">
            </div>
            <div class="content edit-box">
                <h5>Julie Ann</h5>
                <p>Mauris massa diam, cursus sed feugiat vel vestibulum...</p>
            </div>
            <div class="social edit-box">
                <a href="#"><i class="sico fab-twitter"></i></a>
                <a href="#"><i class="sico fab-pinterest-p"></i></a>
                <a href="#"><i class="sico fab-linkedin-in"></i></a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="infobox-10">
            <div class="pic">
                <img class="img-Lazy" alt="image" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section06-02.jpg">
            </div>
            <div class="content edit-box">
                <h5>Wendy William</h5>
                <p>Nam lacinia condimentum ligula et dignissim sagittis...</p>
            </div>
            <div class="social edit-box">
                <a href="#"><i class="sico fab-twitter"></i></a>
                <a href="#"><i class="sico fab-pinterest-p"></i></a>
                <a href="#"><i class="sico fab-linkedin-in"></i></a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="infobox-10">
            <div class="pic">
                <img class="img-Lazy" alt="image" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section06-03.jpg">
            </div>
            <div class="content edit-box">
                <h5>Alice Blanche</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
            <div class="social edit-box">
                <a href="#"><i class="sico fab-twitter"></i></a>
                <a href="#"><i class="sico fab-pinterest-p"></i></a>
                <a href="#"><i class="sico fab-linkedin-in"></i></a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="infobox-10">
            <div class="pic">
                <img class="img-Lazy" alt="image" src="/Portals/_default/ContentBuilder/minis-page/home09/homepage09-section06-04.jpg">
            </div>
            <div class="content edit-box">
                <h5>David Parker</h5>
                <p>Phasellus sit amet dolor eu arcu aliquam cursus id nec...</p>
            </div>
            <div class="social edit-box">
                <a href="#"><i class="sico fab-twitter"></i></a>
                <a href="#"><i class="sico fab-pinterest-p"></i></a>
                <a href="#"><i class="sico fab-linkedin-in"></i></a>
            </div>
        </div>
    </div>
	<style class="build-css" data-class="infobox-10">${csstemplate["infobox-10"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-11.jpg',
	'category': '704',
	'name': 'infobox-11',
	'html': `<div class="infobox-11" style="padding-top: 19px; padding-bottom: 27px;">
	<div class="index">
		<span>01</span>
	</div>
	<div class="content">
		<h5>Install theme on your site</h5>
		<p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
	</div>
</div><div class="infobox-11 pb-0">
<div class="index">
	<span>02</span>
</div>
<div class="content">
	<h5>Import the demo templates</h5>
	<p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
</div>
</div>
	<style class="build-css" data-class="infobox-11">${csstemplate["infobox-11"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-12.jpg',
	'category': '704',
	'name': 'infobox-12',
	'html': `<div class="infobox-list">
	<div class="infobox-12 edit-box mb-30 color-accent">
		<div class="icon">
			<i class="sico lnr-telephone2"></i>
		</div>
		<h6>Phone Number</h6>
		<p class="color-accent size-18" style="font-weight: 600;">(845) 359-7777</p>
	</div>
	<div class="infobox-12 edit-box mb-30" style="color: rgb(255, 110, 47);">
		<div class="icon">
			<i class="sico lnr-envelope"></i>
		</div>
		<h6>Email Address</h6>
		<p>dnnskindev@gmail.com</p>
	</div>
	<div class="infobox-12 edit-box" style="color: rgb(33, 120, 224);">
		<div class="icon">
			<i class="sico lnr-map-marker"></i>
		</div>
		<h6>Location</h6>
		<p>252 NY-303, Orangeburg, NY 10965</p>
	</div>
</div>
	<style class="build-css" data-class="infobox-12">${csstemplate["infobox-12"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-13.jpg',
	'category': '704',
	'name': 'infobox-13',
	'html': `<div class="infobox-13 flex-lg-row-reverse text-lg-right">
	<div class="pic">
		<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section02-icon01.png" alt="icon" class="img-Lazy">
	</div>
	<div class="content edit-box">
		<h6 style="margin-bottom: 18px;">SEO Consultation</h6>
		<p>Etiam eros dui, elementum eget ullamcorper eu</p>
	</div>
</div>

<div class="infobox-13 flex-lg-row-reverse text-lg-right">
	<div class="pic">
		<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section02-icon02.png" alt="icon" class="img-Lazy">
	</div>
	<div class="content edit-box">
		<h6 style="margin-bottom: 18px;">Link Building Services</h6>
		<p>Etiam eros dui, elementum eget ullamcorper eu</p>
	</div>
</div>

<div class="infobox-13 flex-lg-row-reverse text-lg-right mb-lg-0">
	<div class="pic">
		<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section02-icon03.png" alt="icon" class="img-Lazy">
	</div>
	<div class="content edit-box">
		<h6 style="margin-bottom: 18px;">Content Management</h6>
		<p>Etiam eros dui, elementum eget ullamcorper eu</p>
	</div>
</div>
	<style class="build-css" data-class="infobox-13">${csstemplate["infobox-13"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-13-right.jpg',
	'category': '704',
	'name': 'infobox-13-right',
	'html': `<div class="infobox-13">
	<div class="pic">
		<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section02-icon04.png" alt="icon" class="img-Lazy">
	</div>
	<div class="content edit-box">
		<h6 style="margin-bottom: 18px;">Social Media Management</h6>
		<p>Etiam eros dui, elementum eget ullamcorper eu</p>
	</div>
</div>

<div class="infobox-13">
	<div class="pic">
		<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section02-icon05.png" alt="icon" class="img-Lazy">
	</div>
	<div class="content edit-box">
		<h6 style="margin-bottom: 18px;">SEO Web Development</h6>
		<p>Etiam eros dui, elementum eget ullamcorper eu</p>
	</div>
</div>

<div class="infobox-13 mb-lg-0">
	<div class="pic">
		<img src="/Portals/_default/ContentBuilder/minis-page/seo01/seo01-section02-icon06.png" alt="icon" class="img-Lazy">
	</div>
	<div class="content edit-box">
		<h6 style="margin-bottom: 18px;">Real Time and Data</h6>
		<p>Etiam eros dui, elementum eget ullamcorper eu</p>
	</div>
</div>
	<style class="build-css" data-class="infobox-13">${csstemplate["infobox-13"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-15.jpg',
	'category': '704',
	'name': 'infobox-15',
	'html': `<div class="infobox-15 color-3 ml-md-30 edit-box">
	<h6 class="title">Professional Website Design</h6>
	<p>Vivamus vitae ligula vel lacus pharetra mollis non a arcu. Integer venenatis elit at ipsum gravida feugiat.
	</p>
</div>
<div class="infobox-15 color-1 mr-md-30 edit-box">
	<h6 class="title">SEO Basic Optimization</h6>
	<p>Sed consectetur tellus vitae arcu rhoncus cursus. Praesent ut maximus arcu dui orci.</p>
</div>
<div class="infobox-15 color-2 ml-md-30 edit-box">
	<h6 class="title">Logo Designing</h6>
	<p>Aenean iaculis dapibus tempus. Ut sit amet venenatis leo. Fusce venenatis odio ut tellus fringilla.</p>
</div><style class="build-css" data-class="infobox-15">${csstemplate["infobox-15"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-16.jpg',
	'category': '704',
	'name': 'infobox-16',
	'html': `<div class="row align-items-center text-center">
	<div class="col-md-4">
		<div class="infobox-16 edit-box">
			<span class="number" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/saas2/infobox-15-bg01.png&quot;); background-repeat: no-repeat;"> 01 </span>
			<h6 class="title">High satisfaction level </h6>
			<p>Proin eleifend varius feugiat. Fusce risus augue, condimentum et odio vitae, lobortis auctor quam. Suspendisse porttitor nisi ante.</p>
		</div>
	</div>
	<div class="col-md-4">
		<div>
			<img src="/Portals/_default/ContentBuilder/minis-page/saas2/saas2-img01.png" alt="" class="img-Lazy"></div>
		<div class="spacer height-60 mb-10"></div>
		<div class="infobox-16 edit-box">
			<span class="number" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/saas2/infobox-15-bg02.png&quot;);background-repeat: no-repeat;line-height: 81px;">02</span>
			<h6 class="title">Fully customizable</h6>
			<p>Mauris dapibus elit at odio dapibus, ut finibus odio porta. Aliquam aliquam tortor eu orci condimentum egestas. Vestibulum ante nulla.</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="infobox-16 edit-box">
			<span class="number" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/saas2/infobox-15-bg03.png&quot;); background-repeat: no-repeat;">03</span>
			<h6 class="title">Creative design</h6>
			<p>Duis mattis felis augue, finibus dapibus tellus dapibus at. Praesent euismod posuere nunc, in pharetra quam rutrum nec.</p>
		</div>
	</div>
</div>
<style class="build-css" data-class="infobox-16">${csstemplate["infobox-16"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-17.jpg',
	'category': '704',
	'name': 'infobox-17',
	'html': `<ul class="infobox-17-list is-light-text pt-40 pt-lg-0">
	<li>
		<div class="infobox-17">
			<div class="icon">
				<i class="sico lnr-reading"><svg>
						<use xlink:href="#lnr-reading"></use>
					</svg></i>
			</div>
			<div class="content edit-box">
				<h6>Getting Started</h6>
				<p>If you don't know where to start after purchasing the theme, then you can get some guides here to help you
					move forward more easily.</p>
			</div>
		</div>
	</li>
	<li>
		<div class="infobox-17">
			<div class="icon">
				<i class="sico lnr-library"><svg>
						<use xlink:href="#lnr-library"></use>
					</svg></i>
			</div>
			<div class="content edit-box">
				<h6>Support Form</h6>
				<p>If you can't find any answer to your question, then please check if there is any similar question in our
					support form to find your answers quickly.</p>
			</div>
		</div>
	</li>
	<li>
		<div class="infobox-17">
			<div class="icon">
				<i class="sico lnr-clock"><svg>
						<use xlink:href="#lnr-clock"></use>
					</svg></i>
			</div>
			<div class="content edit-box">
				<h6>Work Time</h6>
				<p>Our support hotline is available 24 hours everyday. Feel free to contact us for more information of our
					products or services.</p>
			</div>
		</div>
	</li>
</ul>
<style class="build-css" data-class="infobox-17">${csstemplate["infobox-17"]}</style>
`});



// Icon Box
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/iconbox/iconbox01.jpg',
	'category': '705',
	'name': 'iconbox-01',
	'html': `<div class="row">
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-01">
            <div class="icon">
                <i class="sico lnr-rocket"></i>
            </div>
            <div class="content edit-box">
                <h6>High Efficiency</h6>
                <div class="line"></div>
                <p>Morbi vehicula pellentesque neque, tincidunt ultricies massa placerat pretium tortor mi.</p>
                <a href="#" style="font-weight: bold;">MORE +</a>
            </div>
        </div>
        <div class="spacer height-40 d-none d-lg-block"></div>
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-01">
            <div class="icon">
                <i class="sico lnr-database"></i>
            </div>
            <div class="content edit-box">
                <h6>All-inclusive Specialties</h6>
                <div class="line"></div>
                <p>Pellentesque sed maximus orci. Suspendisse tincidunt consequat ipsum id sagittis. </p>
                <a href="#" style="font-weight: bold;">MORE +</a>
            </div>
        </div>
        <div class="spacer height-40 d-none d-lg-block"></div>
    </div>

    <div class="col-lg-4 col-md-6">
        <div class="iconbox-01">
            <div class="icon">
                <i class="sico lnr-bullhorn"></i>
            </div>
            <div class="content edit-box">
                <h6>Instant Notifications</h6>
                <div class="line"></div>
                <p>Curabitur suscipit lorem sit amet urna congue, sit amet dignissim diam feugiat liquam.</p>
                <a href="#" style="font-weight: bold;">MORE +</a>
            </div>
        </div>
        <div class="spacer height-40 d-none d-lg-block"></div>
    </div>

    <div class="col-lg-4 col-md-6">
        <div class="iconbox-01">
            <div class="icon">
                <i class="sico lnr-laptop-phone"></i>
            </div>
            <div class="content edit-box">
                <h6>Fully Compatible</h6>
                <div class="line"></div>
                <p>Aenean sit amet dolor pellentesque, vestibulum quam a, imperdiet dui. Vestibulum quis euismod.</p>
                <a href="#" style="font-weight: bold;">MORE +</a>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-01">
            <div class="icon">
                <i class="sico lnr-magic-wand"></i>
            </div>
            <div class="content edit-box">
                <h6>Creative Design</h6>
                <div class="line"></div>
                <p>Sed sagittis eros id urna euismod, sit amet tempor odio hendrerit. Sed ullamcorper quam.</p>
                <a href="#" style="font-weight: bold;">MORE +</a>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-01">
            <div class="icon">
                <i class="sico lnr-clipboard-check"></i>
            </div>
            <div class="content edit-box">
                <h6>Unlimited Options</h6>
                <div class="line"></div>
                <p>Nulla sodales risus eget tortor posuere, sed varius nulla volutpat. Sed sed nunc vitae.</p>
                <a href="#" style="font-weight: bold;">MORE +</a>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-01">${csstemplate["iconbox-01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox02.jpg',
	'category': '705',
	'name': 'iconbox-02',
	'html': `<div class="clear"></div>
	<div class="row">
		<div class="col-md-4">
			<div class="iconbox-02 edit-box">
				<div class="icon color-accent"><i class="sico lnr-hammer-wrench size-32"></i></div>
				<h6>Fully Customizable</h6>
				<p>Etiam eros dui, elementum eget ullamcorper eu, sollicitudin nec erat.</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="iconbox-02 edit-box">
				<div class="icon color-accent"><i class="sico lnr-woman size-32"></i></div>
				<h6>Awesome Customer Service</h6>
				<p>Fusce hendrerit lacinia suscipit. Pellentesque habitant morbi tristique.</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="iconbox-02 edit-box">
				<div class="icon color-accent"><i class="sico lnr-pencil-ruler2 size-32"></i></div>
				<h6>Amazing Support</h6>
				<p>Etiam eros dui, elementum eget ullamcorper eu, sollicitudin nec erat.</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="iconbox-02 edit-box">
				<div class="icon color-accent"><i class="sico lnr-magic-wand size-32"></i></div>
				<h6>Creative Design</h6>
				<p>Etiam eros dui, elementum eget ullamcorper eu, sollicitudin nec erat.</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="iconbox-02 edit-box">
				<div class="icon color-accent"><i class="sico lnr-laptop-phone size-32"></i></div>
				<h6>Responsive Design</h6>
				<p>Etiam eros dui, elementum eget ullamcorper eu, sollicitudin nec erat.</p>
			</div>
		</div>
		<div class="col-md-4">
			<div class="iconbox-02 edit-box">
				<div class="icon color-accent"><i class="sico lnr-window size-32"></i></div>
				<h6>Humanized Interface</h6>
				<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.</p>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<style class="build-css" data-class="iconbox-02">${csstemplate["iconbox-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox03.jpg',
	'category': '705',
	'name': 'iconbox-03',
	'html': `<div class="row">
    <div class="col-md-3">
        <div class="iconbox-03">
            <div class="icon"><i class="sico lnr-cog size-32"></i></div>
            <h6>Amazing Support</h6>
            <p>Elementum eget</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-03">
            <div class="icon"><i class="sico lnr-clipboard-check size-32"></i></div>
            <h6>Unlimited Options</h6>
            <p>Integer iaculis diam</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-03">
            <div class="icon"><i class="sico lnr-magic-wand size-32"></i></div>
            <h6>Creative Design</h6>
            <p>Aliquam erat volutpat</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-03">
            <div class="icon"><i class="sico lnr-thumbs-up size-32"></i></div>
            <h6>Powerful Features</h6>
            <p>Aliquam erat volutpat</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-03">${csstemplate["iconbox-03"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox04.jpg',
	'category': '705',
	'name': 'iconbox-04',
	'html': `<div class="row">
    <div class="col-md">
        <div class="iconbox-04">
            <div class="icon"><i class="sico lnr-hammer-wrench color-accent"></i></div>
            <h6>Top-notch<br>Service</h6>
        </div>
    </div>
    <div class="col-md">
        <div class="iconbox-04">
            <div class="icon"><i class="sico lnr-thumbs-up color-accent"></i></div>
            <h6>Excellent<br>Technology</h6>
        </div>
    </div>
    <div class="col-md">
        <div class="iconbox-04">
            <div class="icon"><i class="sico lnr-shield-check color-accent"></i></div>
            <h6>2-factor<br>Authentication </h6>
        </div>
    </div>
    <div class="col-md">
        <div class="iconbox-04">
            <div class="icon"><i class="sico lnr-clipboard-check color-accent"></i></div>
            <h6>Unlimited<br>Options</h6>
        </div>
    </div>
    <div class="col-md">
        <div class="iconbox-04">
            <div class="icon"><i class="sico lnr-pencil-ruler2 color-accent"></i></div>
            <h6>Sophisticated<br>Design</h6>
        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-04">${csstemplate["iconbox-04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox05.jpg',
	'category': '705',
	'name': 'iconbox-05',
	'html': ` <div class="iconbox-05">
	<div class="icon color-accent"><i class="sico lnr-magic-wand"></i></div>
	<h6 class="size-18">All Options Are Created With Innovative Ideas</h6>
</div>

<div class="iconbox-05">
	<div class="icon color-accent"><i class="sico lnr-desktop"></i></div>
	<h6 class="size-18">Responsive Design Will Work Well On Any Devices</h6>
</div>

<div class="iconbox-05">
	<div class="icon color-accent"><i class="sico lnr-microscope"></i></div>
	<h6 class="size-18">Retina Ready Design Guarantee A Wonderful Visual Feast</h6>
</div>
	<style class="build-css" data-class="iconbox-05">${csstemplate["iconbox-05"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox06.jpg',
	'category': '705',
	'name': 'iconbox-06',
	'html': `<div class="iconbox-06">
    <div class="icon">
        <i class="sico lnr-phone-wave"></i>
    </div>
    <div class="content">
        <p>Contact Info</p>
        <h6>(845) 359-7777</h6>
    </div>
</div>
<div class="iconbox-06">
    <div class="icon">
        <i class="sico lnr-envelope-open"></i>
    </div>
    <div class="content">
        <p>Email Us</p>
        <h6>service.simple@gmail.com</h6>
    </div>
</div>
	<style class="build-css" data-class="iconbox-06">${csstemplate["iconbox-06"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox07.jpg',
	'category': '705',
	'name': 'iconbox-07',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="iconbox-07 edit-box">
            <div class="icon"><i class="sico lnr-paper-plane"></i></div>
            <div class="title">
                <h6>Website SEO</h6>
            </div>
            <p>Praesent eget ex vel libero pellentesque faucibus id vel odio. Morbi porttitor justo felis, gravida porttitor.</p>
            <div class="btn"> <a href="#" title="READ MORE" class="button-01">READ MORE</a></div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="iconbox-07 edit-box">
            <div class="icon"><i class="sico lnr-magic-wand"></i></div>
            <div class="title">
                <h6>Website Design</h6>
            </div>
            <p>Praesent eget ex vel libero pellentesque faucibus id vel odio. Morbi porttitor justo felis, gravida porttitor.</p>
            <div class="btn"> <a href="#" title="READ MORE" class="button-01">READ MORE</a></div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="iconbox-07 edit-box">
            <div class="icon"><i class="sico lnr-cog"></i></div>
            <div class="title">
                <h6>Incomparable Service</h6>
            </div>
            <p>Praesent eget ex vel libero pellentesque faucibus id vel odio. Morbi porttitor justo felis, gravida porttitor.</p>
            <div class="btn"> <a href="#" title="READ MORE" class="button-01">READ MORE</a></div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-07">${csstemplate["iconbox-07"]}</style>
	<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox08.jpg',
	'category': '705',
	'name': 'iconbox-08',
	'html': `<div class="row">
    <div class="col-md-6 edit-box">
        <div class="iconbox-08">

            <div class="img"> <img src="/Portals/_default/ContentBuilder/minis-page/home07/homepage07-icon01.png" class="img-Lazy"></div>
            <div class="title">
                <h6>What We Do</h6>
            </div>
            <p>Vestibulum sit amet tellus placerat, aliquam risus et.</p>
        </div>
    </div>
    <div class="col-md-6 edit-box">
        <div class="iconbox-08">
            <div class="img"> <img src="/Portals/_default/ContentBuilder/minis-page/home07/homepage07-icon02.png" class="img-Lazy"></div>
            <div class="title">
                <h6>How We Work</h6>
            </div>
            <p>Fidesfeu giatnib hnec lao, reet molis auguemi accu msan.</p>
        </div>
    </div>

</div>
	<style class="build-css" data-class="iconbox-08">${csstemplate["iconbox-08"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox09.jpg',
	'category': '705',
	'name': 'iconbox-09',
	'html': `<div class="row">
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-rocket color-accent animated"></i>
            </div>
            <h6>Fast Support</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-alarm-ringing color-accent"></i>
            </div>
            <h6>Instant Notifications</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-earth-lock color-accent animated"></i>
            </div>
            <h6>2-factor Authentication</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-clipboard-check color-accent"></i>
            </div>
            <h6>Unlimited Options</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-magic-wand color-accent"></i>
            </div>
            <h6>Creative Design</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-laptop-phone color-accent"></i>
            </div>
            <h6>Fully Compatible</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-window color-accent"></i>
            </div>
            <h6>Friendly Interface</h6>

        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-09 edit-box">
            <div class="icon">
                <i class="sico lnr-upload color-accent"></i>
            </div>
            <h6>Free Updates</h6>

        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-09">${csstemplate["iconbox-09"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox10.jpg',
	'category': '705',
	'name': 'iconbox-10',
	'html': `<div class="row">
    <div class="col-sm-6">
        <div class="iconbox-10">
            <div class="icon color-accent">
                <i class="sico lnr-clipboard-check"></i>
            </div>
            <div class="title">
                <h6>Analyze requirements</h6>
            </div>
            <div class="edit-box">
                <p>Curabitur at magna sem. Etiam fringilla, eros vel efficitur congue, nisi felis luctus nulla, sit amet </p>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="iconbox-10">
            <div class="icon color-accent">
                <i class="sico lnr-magic-wand"></i>
            </div>
            <div class="title">
                <h6>Work on web design</h6>
            </div>
            <div class="edit-box">
                <p>Pellentesque sed maximus orci. Suspendisse tincidunt consequat ipsum id sagittis.</p>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="iconbox-10">
            <div class="icon color-accent">
                <i class="sico lnr-laptop-phone"></i>
            </div>
            <div class="title">
                <h6>Develop product</h6>
            </div>
            <div class="edit-box">
                <p>Morbi vehicula pellentesque neque, tincidunt ultricies massa placerat pretium tortor mi.</p>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="iconbox-10">
            <div class="icon color-accent">
                <i class="sico lnr-rocket"></i>
            </div>
            <div class="title">
                <h6>Make test</h6>
            </div>
            <div class="edit-box">
                <p>Aenean sit amet dolor pellentesque, vestibulum quam a, imperdiet dui. Vestibulum quis euismod.</p>
            </div>
        </div>
    </div>

</div>
	<style class="build-css" data-class="iconbox-10">${csstemplate["iconbox-10"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox11.jpg',
	'category': '705',
	'name': 'iconbox-11',
	'html': `<div class="row">
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-11 edit-box">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/app01/app01-section02-01.png" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/app01/app01-section02-01.png"></div>
            <div class="title">
                <h6>Design &amp; Branding</h6>
            </div>
            <p>Morbi eget metus nisl. Phasellus nec mi at metus pellentesque fermentum. Integer ac lorem.</p>
        </div>
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-11 edit-box">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/app01/app01-section02-02.png" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/app01/app01-section02-02.png"></div>
            <div class="title">
                <h6>Infinite Colors</h6>
            </div>
            <p>Fusce commodo nisi ut ex tempus fringilla. Suspendisse a placerat metus, sed tempor nunc.</p>
        </div>
    </div>
    <div class="col-lg-4 col-md-6">
        <div class="iconbox-11 edit-box">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/app01/app01-section02-03.png" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/app01/app01-section02-03.png"></div>
            <div class="title">
                <h6>Friendly Online Support</h6>
            </div>
            <p>Aliquam eros libero, malesuada id dapibus eget, dictum non massa. Quisque risus elit.</p>
        </div>
    </div>

</div>
	<style class="build-css" data-class="iconbox-11">${csstemplate["iconbox-11"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox12.jpg',
	'category': '705',
	'name': 'iconbox-12',
	'html': `<div class="row">
    <div class="col-lg-6">
        <div class="iconbox-12">
            <div class="icon">
                <i class="sico lnr-envelope-open"></i>
            </div>
            <div class="content">
                <p>Email Us</p>
                <h6 style="font-size:18px;">service.simple@gmail.com</h6>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="iconbox-12">
            <div class="icon">
                <i class="sico lnr-phone-wave"></i>
            </div>
            <div class="content">
                <p>Contact Info</p>
                <h6 style="font-size:18px;">(845) 359-7777</h6>
            </div>
        </div>
    </div>

</div>
	<style class="build-css" data-class="iconbox-12">${csstemplate["iconbox-12"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox13.jpg',
	'category': '705',
	'name': 'iconbox-13',
	'html': `<div class="row">
    <div class="col-md-6">
        <div class="iconbox-13 edit-box active">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-icon01.png" class="img-Lazy"></div>
            <div class="title">
                <h6>Soft Texture</h6>
            </div>
            <p>Morbi porttitor tellus in enim convalli sacort a faucibus. Vestibu lum sitae tellu placerali, uarisuset, tempus felis laoreet.</p>

        </div>
    </div>
    <div class="col-md-6">
        <div class="iconbox-13 edit-box">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-icon02.png" class="img-Lazy"></div>
            <div class="title">
                <h6>Delicate Touch</h6>
            </div>
            <p>Vestibulum sit amet tellus placerat, aliquam risus et, tempus felis. Suspe Fandisse mollis nisleuelit ipsum id sagittis.</p>

        </div>
    </div>
    <div class="col-md-6">
        <div class="iconbox-13 edit-box">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-icon03.png" class="img-Lazy"></div>
            <div class="title">
                <h6>Unique Design</h6>
            </div>
            <p>Morbi porttitor tellus in enim convalli sacort a faucibus. Vestibu lum sitae tellu placerali, uarisuset, tempus felis laoreet.</p>

        </div>
    </div>
    <div class="col-md-6">
        <div class="iconbox-13 edit-box">
            <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-icon04.png" class="img-Lazy"></div>
            <div class="title">
                <h6>Good Quality</h6>
            </div>
            <p>Vestibulum sit amet tellus placerat, aliquam risus et, tempus felis. Suspe Fandisse mollis nisleuelit ipsum id sagittis.</p>
        </div>
    </div>

</div>
	<style class="build-css" data-class="iconbox-13">${csstemplate["iconbox-13"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox14.jpg',
	'category': '705',
	'name': 'iconbox-14',
	'html': `<div class="row">
    <div class="col-md-3">
        <div class="iconbox-14">
            <div class="icon">
                <i class="sico lnr-truck"></i>
            </div>
            <div class="cont edit-box">

                <h6 class="title">Free Shipping</h6>

                <p>Free Shipping for all orders</p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-14">
            <div class="icon">
                <i class="sico lnr-sync2"></i>
            </div>
            <div class="cont edit-box">

                <h6 class="title">Free Exchange</h6>

                <p>15 days return on all items</p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-14">
            <div class="icon">
                <i class="sico lnr-headset"></i>
            </div>
            <div class="cont edit-box">

                <h6 class="title">Premium Support</h6>

                <p>We support online 24 hours a day</p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="iconbox-14">
            <div class="icon">
                <i class="sico lnr-cart-full"></i>
            </div>
            <div class="cont edit-box">

                <h6 class="title">Shopping Guide</h6>

                <p>Provide a detailed shopping guide</p>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-14">${csstemplate["iconbox-14"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox15.jpg',
	'category': '705',
	'name': 'iconbox-15',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="iconbox-15">
            <div class="icon"><i class="sico lnr-thumbs-up"></i></div>
            <h6 class="title">High satisfaction level </h6>
            <p>Duis scelerisque, augue ut auctor volutpat, lorem risus volutpat dui, consectetur dictum liberfdso dedgsaui edaqet orci.</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="iconbox-15">
            <div class="icon"><i class="sico lnr-pencil-ruler2"></i></div>
            <h6 class="title">Fully customizable </h6>
            <p>Phasellus vulputate leo nibh, eu dignissim nibh faucibus quis. Nullam rutrum egestas velit quis laoreet haveds youdfa.</p>
        </div>
    </div>

    <div class="col-md-4">
        <div class="iconbox-15">
            <div class="icon"><i class="sico lnr-magic-wand"></i></div>
            <h6 class="title">Creative design</h6>
            <p>Sfaduis mattis felis augue, finibus dapibus tellus dapibus at. Praesent euismod posuere nunc, in pharetra quam rutrum nec.</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="iconbox-15">${csstemplate["iconbox-15"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox16.jpg',
	'category': '705',
	'name': 'iconbox-16',
	'html': `<div class="iconbox-16 edit-box">
    <div class="icon"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-icon01.png" class="img-Lazy" ></div>
    <h6 class="title">Trendy Design</h6>
    <p>Aliquam convallis lorem in dui lobortis porttitor tincidunt fringilla leo.</p>
</div>
	<style class="build-css" data-class="iconbox-16">${csstemplate["iconbox-16"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox17.jpg',
	'category': '705',
	'name': 'iconbox-17',
	'html': `
		<div class="row align-items-center">
			<div class="col-lg-4 col-md-6 order-1 pt-lg-40">
				
				<div class="iconbox-17 flex-lg-row-reverse text-lg-right pr-xl-20">
					<div class="icon">
						<i class="sico lnr-check"></i>
					</div>
					<div class="content edit-box">
						<h6 style="margin-bottom: 14px;">Pure Natural</h6>
						<p>Vivamus odio est, laoreet quis cursus ac, semper vel risus.</p>
					</div>
				</div>

				<div class="iconbox-17 flex-lg-row-reverse text-lg-right pr-xl-20">
					<div class="icon">
						<i class="sico lnr-check"></i>
					</div>
					<div class="content edit-box">
						<h6 style="margin-bottom: 14px;">Pollution-free</h6>
						<p>Nullam quam erat, consequat nec pellentesque egestas.</p>
					</div>
				</div>

				<div class="iconbox-17 flex-lg-row-reverse text-lg-right pr-xl-20 mb-lg-0">
					<div class="icon">
						<i class="sico lnr-check"></i>
					</div>
					<div class="content edit-box">
						<h6 style="margin-bottom: 14px;">100% Healthy</h6>
						<p>Etiam ac odio ipsum. Sed posuere, dolor ac tincidunt finibus.</p>
					</div>
				</div>


			</div>
			<div class="col-lg-4 col-md-12 order-3 order-lg-2">
				<div class="imageBox text-center">
					<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section04-img01.png" class="img-Lazy" alt="image">
				</div>
			</div>
			<div class="col-lg-4 col-md-6 order-2 pt-lg-40">


				<div class="iconbox-17 pl-xl-20">
					<div class="icon">
						<i class="sico lnr-check"></i>
					</div>
					<div class="content edit-box">
						<h6 style="margin-bottom: 14px;">Natural Oganic</h6>
						<p>Sed iaculis, justo sed ultrices dictum, urna ligula mollis ante.</p>
					</div>
				</div>

				<div class="iconbox-17 pl-xl-20">
					<div class="icon">
						<i class="sico lnr-check"></i>
					</div>
					<div class="content edit-box">
						<h6 style="margin-bottom: 14px;">Rich Nutrition</h6>
						<p>Phasellus venenatis at tortor rutrum justo nunc.</p>
					</div>
				</div>

				<div class="iconbox-17 pl-xl-20 mb-lg-0">
					<div class="icon">
						<i class="sico lnr-check"></i>
					</div>
					<div class="content edit-box">
						<h6 style="margin-bottom: 14px;">Affordable Price</h6>
						<p>Sed ut risus orci. Integer in felis est. pulvinar ornare laoreet.</p>
					</div>
				</div>

			</div>
		</div>
		<style class="build-css" data-class="iconbox-17">${csstemplate["iconbox-17"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/infobox/infobox-14.jpg',
	'category': '705',
	'name': 'infolist-02',
	'html': `<ul class="infolist-02">
<li class="edit-box">
	<div class="number">
		<span>01</span>
	</div>
	<h6 class="title">Rich work experience</h6>
	<p>Proin aliquet dapibus quam, id aliquam ante feugiat dapibus.</p>
</li>
<li class="edit-box">
	<div class="number">
		<span>02</span>
	</div>
	<h6 class="title">Friendly service</h6>
	<p>Aliquam ultricies malesuada neque ac lobortis.</p>
</li>
</ul><style class="build-css" data-class="infolist-02">${csstemplate["infolist-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox18.jpg',
	'category': '705',
	'name': 'iconbox-18',
	'html': `<div class="row iconbox-18-line">
<div class="col-md-4">
	<div class="iconbox-18 edit-box">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon01.png" class="img-Lazy" alt=""></div>
		<div class="title">
			<h6>Fast Support</h6>
		</div>
		<p>Vestibulum nec mauris ultrices, porttitor augue id, semper nisi.</p>
	</div>
</div>
<div class="col-md-4">
	<div class="iconbox-18 edit-box">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon02.png" class="img-Lazy" alt=""></div>
		<div class="title">
			<h6>Instant Notifications</h6>
		</div>
		<p>Vestibulum nec mauris ultrices, porttitor augue id, semper nisi.</p>
	</div>
</div>
<div class="col-md-4">
	<div class="iconbox-18 edit-box">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon03.png" class="img-Lazy" alt=""></div>
		<div class="title">
			<h6>2-factor Authentication</h6>
		</div>
		<p>Vestibulum nec mauris ultrices, porttitor augue id, semper nisi.</p>
	</div>
</div>
</div>
<div class="row iconbox-18-line">
<div class="col-md-4">
	<div class="iconbox-18 edit-box">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon04.png" class="img-Lazy" alt=""></div>
		<div class="title">
			<h6>Creative Design</h6>
		</div>
		<p>Vestibulum nec mauris ultrices, porttitor augue id, semper nisi.</p>
	</div>
</div>
<div class="col-md-4">
	<div class="iconbox-18 edit-box">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon05.png" class="img-Lazy" alt=""></div>
		<div class="title">
			<h6>Retina Ready</h6>
		</div>
		<p>Vestibulum nec mauris ultrices, porttitor augue id, semper nisi.</p>
	</div>
</div>
<div class="col-md-4">
	<div class="iconbox-18 edit-box">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon06.png" class="img-Lazy" alt=""></div>
		<div class="title">
			<h6>Friendly Interface</h6>
		</div>
		<p>Vestibulum nec mauris ultrices, porttitor augue id, semper nisi.</p>
	</div>
</div>
</div>
<style class="build-css" data-class="iconbox-18">${csstemplate["iconbox-18"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox19.jpg',
	'category': '705',
	'name': 'iconbox-19',
	'html': ` <div class="iconbox-19">
<div class="icon color-accent2">
	<i class="sico lnr-bookmark"><svg><use xlink:href="#lnr-bookmark"></use></svg></i>
</div>
<div class="cont edit-box">
	<h6 class="mb-15">Free Lifetime upgrade</h6>
	<p>Morbi est ante, feugiat porttitor nulla in, convallis congue nunc. Pellentesque a nulla eget metus</p>
</div>
</div>
<div class="iconbox-19">
<div class="icon color-accent3">
	<i class="sico lnr-gift"><svg><use xlink:href="#lnr-gift"></use></svg></i>
</div>
<div class="cont edit-box">
	<h6 class="mb-15">Top-notch Service</h6>
	<p>Morbi est ante, feugiat porttitor nulla in, convallis congue nunc. Pellentesque a nulla eget metus</p>
</div>
</div>
<style class="build-css" data-class="iconbox-19">${csstemplate["iconbox-19"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox20.jpg',
	'category': '705',
	'name': 'iconbox-20',
	'html': `<div class="iconbox-20">
	<div class="icon">
		<i class="sico lnr-phone-wave"><svg>
				<use xlink:href="#lnr-phone-wave"></use>
			</svg></i>
	</div>
	<div class="cont">
		<h4 class="title">Are You Ready Now?</h4>
		<h4 class="subtitle">Contact Us </h4>
	</div>
</div><style class="build-css" data-class="iconbox-20">${csstemplate["iconbox-20"]}</style>
`},{
	'thumbnail': 'minis-shortcode/iconbox/iconbox21.jpg',
	'category': '705',
	'name': 'iconbox-21',
	'html': `<div class="row">
<div class="col-md-4">
	<div class="iconbox-21">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-icon01.png" alt="" class="img-Lazy">
			<span class="number">01</span>
		</div>
		<div class="cont edit-box">
			<h6 class="title">Trendy Design</h6>
			<p> Cras eget consequat lacus. Donec eu neque eu massa fermentum pulvinar.</p>
			<p>
				<a href="#" title="VIEW MORE" class="link">VIEW MORE</a>
			</p>
		</div>
	</div>
</div>
<div class="col-md-4">
	<div class="iconbox-21">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-icon02.png" alt="" class="img-Lazy">
			<span class="number">02</span>
		</div>
		<div class="cont edit-box">
			<h6 class="title">Innovative Ideas</h6>
			<p>Donec vestibulum mauris quis fringilla eleifend. Aliquam quam massa tincidunt.</p>
			<p>
				<a href="#" title="VIEW MORE" class="link">VIEW MORE</a>
			</p>
		</div>
	</div>
</div>
<div class="col-md-4">
	<div class="iconbox-21">
		<div class="icon">
			<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-icon03.png" alt="" class="img-Lazy">
			<span class="number">03</span>
		</div>
		<div class="cont edit-box">
			<h6 class="title">Incomparable Service</h6>
			<p>Morbi laoreet at nisl et fringilla. Duis maximus sem sed lorem sodales, eget congue dolor.</p>
			<p>
				<a href="#" title="VIEW MORE" class="link">VIEW MORE</a>
			</p>
		</div>
	</div>
</div>
</div>
<style class="build-css" data-class="iconbox-21">${csstemplate["iconbox-21"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox22.jpg',
	'category': '705',
	'name': 'iconbox-22',
	'html': `<div class="row">
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-rocket"><svg>
						<use xlink:href="#lnr-rocket"></use>
					</svg></i>
			</div>
			<h6 class="title">Fast Support</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-bubbles"><svg>
						<use xlink:href="#lnr-bubbles"></use>
					</svg></i>
			</div>
			<h6 class="title">Instant Notifications</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-clipboard-check"><svg>
						<use xlink:href="#lnr-clipboard-check"></use>
					</svg></i>
			</div>
			<h6 class="title">Unlimited Options</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-magic-wand"><svg>
						<use xlink:href="#lnr-magic-wand"></use>
					</svg></i>
			</div>
			<h6 class="title">Modern Elements</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-laptop-phone"><svg>
						<use xlink:href="#lnr-laptop-phone"></use>
					</svg></i>
			</div>
			<h6 class="title">Fully Compatible</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-copy"><svg>
						<use xlink:href="#lnr-copy"></use>
					</svg></i>
			</div>
			<h6 class="title">Friendly Interface</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-hdd-up"><svg>
						<use xlink:href="#lnr-hdd-up"></use>
					</svg></i>
			</div>
			<h6 class="title">Free Updates</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-thumbs-up"><svg>
						<use xlink:href="#lnr-thumbs-up"></use>
					</svg></i>
			</div>
			<h6 class="title">Easy To Use</h6>
		</div>
	</div>
	<div class="col-md-6 col-lg-4">
		<div class="iconbox-22">
			<div class="icon">
				<i class="sico lnr-register"><svg>
						<use xlink:href="#lnr-register"></use>
					</svg></i>
			</div>
			<h6 class="title">PSD Files Included</h6>
		</div>
	</div>
</div>
<style class="build-css" data-class="iconbox-22">${csstemplate["iconbox-22"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox23.jpg',
	'category': '705',
	'name': 'iconbox-23',
	'html': `<div class="iconbox-23 edit-box is-light-text">
	<div class="icon">
		<i class="sico lnr-laptop-phone"><svg>
				<use xlink:href="#lnr-laptop-phone"></use>
			</svg></i>
	</div>
	<div class="title">
		<h6>Powerful Support</h6>
	</div>
	<div class="content">
		<p>Tincidunt placerat risus nam at risus in dui facilisis pellentesque. Pellentesque tempus elit augue, eget tincidunt justo finibus iaculis nec mauris.</p>
	</div>
	<div class="btn">
		<a href="#" title="VIEW MORE" class="iconbox-btn">VIEW MORE</a>
	</div>
</div><style class="build-css" data-class="iconbox-23">${csstemplate["iconbox-23"]}</style>`}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox24.jpg',
	'category': '705',
	'name': 'iconbox-24',
	'html': `<div class="row justify-content-center" style="margin-top: -100px;">
	<div class="col-lg-4 col-md-8">
		<div class="iconbox-24 edit-box">
			<div class="icon">
				<i class="sico lnr-outbox color-accent"><svg>
						<use xlink:href="#lnr-outbox"></use>
					</svg></i>
			</div>
			<div class="title">
				<h6>Easy Installation</h6>
			</div>
			<p>Ut enim ad minima veniam, quis nostrum exercita tionem corporis suscipit labo riosam, commodi consequatur</p>
		</div>
	</div>
	<div class="col-lg-4 col-md-8">
		<div class="iconbox-24 edit-box">
			<div class="icon">
				<i class="sico lnr-diamond2 color-accent"><svg>
						<use xlink:href="#lnr-diamond2"></use>
					</svg></i>
			</div>
			<div class="title">
				<h6>Cleverly Constructed</h6>
			</div>
			<p>Donec nec nibh eu mauris volutpat tristique vita ligula vitae dolor sodales vehicula vestibulum porttitor</p>
		</div>
	</div>
	<div class="col-lg-4 col-md-8">
		<div class="iconbox-24 edit-box">
			<div class="icon">
				<i class="sico lnr-laptop-phone color-accent"><svg>
						<use xlink:href="#lnr-laptop-phone"></use>
					</svg></i>
			</div>
			<div class="title">
				<h6>Responsive Theme</h6>
			</div>
			<p>Mauris dignissim vulputate erat vel suscipit suspe tristique sapien velit vel venenatis neque congu rhoncus eleifend</p>
		</div>
	</div>
</div>
<style class="build-css" data-class="iconbox-24">${csstemplate["iconbox-24"]}</style>
`}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox25.jpg',
	'category': '705',
	'name': 'iconbox-25',
	'html': `<div class="iconbox-25">
	<div class="icon">
		<i class="sico lnr-reading size-54"><svg>
				<use xlink:href="#lnr-reading"></use>
			</svg></i>
	</div>
	<h6 class="title">Getting Started</h6>
	<p>If you don't know where to start after purchasing the theme, then you can get some guides here to help you move forward more easily.</p>
	<p class="mb-0">
		<a title="START NOW" href="#" class="link"> START NOW</a>
	</p>
</div>
<style class="build-css" data-class="iconbox-25">${csstemplate["iconbox-25"]}</style>
`}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox26.jpg',
	'category': '705',
	'name': 'iconbox-26',
	'html': `<div class="iconbox-26">
	<div class="icon">
		<i class="sico lnr-cog"><svg>
				<use xlink:href="#lnr-cog"></use>
			</svg></i>
	</div>
	<h6 class="title">Quality assurance</h6>
	<p>Morbi erat lacus variusin congue quis vulputate in ante aenean.</p>
</div>
<style class="build-css" data-class="iconbox-26">${csstemplate["iconbox-26"]}</style>
`}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox27.jpg',
	'category': '705',
	'name': 'iconbox-27',
	'html': `<div class="iconbox-27">
	<div class="icon">
		<i class="sico lnr-clipboard-check"><svg>
				<use xlink:href="#lnr-clipboard-check"></use>
			</svg></i>
	</div>
	<div class="cont edit-box">
		<h6 class="mb-15">Professional Solution</h6>
		<p>Aenean eu dui volutpat, placerat augue ac, imperdiet nisl. In feugiat mi in augue.</p>
	</div>
</div>
<style class="build-css" data-class="iconbox-27">${csstemplate["iconbox-27"]}</style>
`}, {
	'thumbnail': 'minis-shortcode/iconbox/iconbox28.jpg',
	'category': '705',
	'name': 'iconbox-28',
	'html': `<div class="row text-center align-items-center">
	<div class="col-md-4 col-xl-2">
		<div class="iconbox-28">
			<div class="icon">
				<i class="icon-svg icon-basic-webpage-img-txt color-accent animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
					 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
					 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-uexbzyql94l">
						<path xmlns="http://www.w3.org/2000/svg" width="62" height="50" d="M1 7 L63 7 L63 57 L1 57 Z" style="stroke-dasharray: 224, 226; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M1,15L63,15" style="stroke-dasharray: 62, 64; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M10,11L6,11" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M18,11L14,11" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M26,11L22,11" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M6,25L33,25" style="stroke-dasharray: 27, 29; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M6,33L33,33" style="stroke-dasharray: 27, 29; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M6,41L33,41" style="stroke-dasharray: 27, 29; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" width="19" height="16" d="M38 25 L57 25 L57 41 L38 41 Z" style="stroke-dasharray: 70, 72; stroke-dashoffset: 0;"></path>
					</svg></i>
			</div>
			<h6 class="size-18">Full-on Specialties Support </h6>
			<div class="content">
				<p>Aenean fermentum magne nislvel rutrgm </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-xl-2">
		<div class="iconbox-28">
			<div class="icon">
				<i class="icon-svg icon-basic-anticlockwise color-accent animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
					 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
					 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-39o57bh8d98">
						<path xmlns="http://www.w3.org/2000/svg" d="M32,12L32,32L41,41" style="stroke-dasharray: 33, 35; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M4,32L8,32" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M56,32L60,32" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M32,60L32,56" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M32,8L32,4" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M32,63C14.879,63,1,49.121,1,32S14.879,1,32,1" style="stroke-dasharray: 98, 100; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M32,63c17.121,0,31-13.879,31-31             c0-6.713-2.134-12.926-5.759-18l-5.62-5.621"
						 style="stroke-dasharray: 76, 78; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" stroke-linejoin="bevel" d="M51,19L51,8L62,8" style="stroke-dasharray: 22, 24; stroke-dashoffset: 0;"></path>
					</svg></i>
			</div>
			<h6 class="size-18">100% High Efficiency Assurance </h6>
			<div class="content">
				<p>Aenean fermentum magne nislvel rutrgm </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-xl-2">
		<div class="iconbox-28">
			<div class="icon">
				<i class="icon-svg icon-ecommerce-diamond color-accent animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
					 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
					 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-5gvjyndendx">
						<g xmlns="http://www.w3.org/2000/svg">
							<path d="M29,6L46,6L63,27L32,58L1,27L18,6L32,6L32,58" style="stroke-dasharray: 225, 227; stroke-dashoffset: 0;"></path>
							<path d="M32,57L18,27L24,6" style="stroke-dasharray: 55, 57; stroke-dashoffset: 0;"></path>
							<path d="M32,57L46,27L40,6" style="stroke-dasharray: 55, 57; stroke-dashoffset: 0;"></path>
							<path d="M1,27L63,27" style="stroke-dasharray: 62, 64; stroke-dashoffset: 0;"></path>
						</g>
					</svg></i>
			</div>
			<h6 class="size-18">Quality Reliability Assurance </h6>
			<div class="content">
				<p>Aenean fermentum magne nislvel rutrgm </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-xl-2">
		<div class="iconbox-28">
			<div class="icon">
				<i class="icon-svg icon-basic-elaboration-browser-star color-accent animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
					 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
					 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-4qe2oew38q">
						<path xmlns="http://www.w3.org/2000/svg" width="62" height="50" d="M1 7 L63 7 L63 57 L1 57 Z" style="stroke-dasharray: 224, 226; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" stroke-linejoin="round" d="M32,41L25.875,45L28,38L22,34L29.213,34L32,26L35,34L42,34L36,38L37.938,45Z"
						 style="stroke-dasharray: 75, 77; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M1,15L63,15" style="stroke-dasharray: 62, 64; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M10,11L6,11" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M18,11L14,11" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M26,11L22,11" style="stroke-dasharray: 4, 6; stroke-dashoffset: 0;"></path>
					</svg></i>
			</div>
			<h6 class="size-18">Creative Web Design</h6>
			<div class="content">
				<p>Aenean fermentum magne nislvel rutrgm </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-xl-2">
		<div class="iconbox-28">
			<div class="icon">
				<i class="icon-svg icon-basic-gear color-accent animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
					 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
					 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-t11cpuvm9qc">
						<g xmlns="http://www.w3.org/2000/svg">
							<path d="M32,1L26,1L26,10L20,12L14,6L6,14L12,20L10,26L1,26L1,38L10,38L12,44L6,50L14,58L20,52L26,54L26,63L32,63L38,63L38,54L44,52L50,58L58,50L52,44L54,38L63,38L63,26L54,26L52,20L58,14L50,6L44,12L38,10L38,1Z"
							 style="stroke-dasharray: 284, 286; stroke-dashoffset: 0;"></path>
							<path d="M26,32A6,6 0,1,1 38,32A6,6 0,1,1 26,32" style="stroke-dasharray: 38, 40; stroke-dashoffset: 0;"></path>
						</g>
					</svg></i>
			</div>
			<h6 class="size-18">Powerful Functions Support</h6>
			<div class="content">
				<p>Aenean fermentum magne nislvel rutrgm </p>
			</div>
		</div>
	</div>
	<div class="col-md-4 col-xl-2">
		<div class="iconbox-28">
			<div class="icon">
				<i class="icon-svg icon-software-layers2 color-accent animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
					 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
					 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-hfczqw4r1sd">
						<path xmlns="http://www.w3.org/2000/svg" d="M18,26.066L2,33L32,45L62,33L46,26.067" style="stroke-dasharray: 100, 102; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M18,39.066L2,46L32,58L62,46L46,39.067" style="stroke-dasharray: 100, 102; stroke-dashoffset: 0;"></path>
						<path xmlns="http://www.w3.org/2000/svg" d="M32,32L62,20L32,7L2,20Z" style="stroke-dasharray: 131, 133; stroke-dashoffset: 0;"></path>
					</svg></i>
			</div>
			<h6 class="size-18">Multiple Topics Selection</h6>
			<div class="content">
				<p>Aenean fermentum magne nislvel rutrgm </p>
			</div>
		</div>
	</div>
</div><style class="build-css" data-class="iconbox-28">${csstemplate["iconbox-28"]}</style>
`}
);


// Image Box
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/imagebox/imagebox01.jpg',
	'category': '706',
	'name': 'img-box01',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="img-box01">
            <div class="pic color-accent">
                <a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img03-big.jpg" title="" class="is-lightbox" data-ilightbox="image"><img src="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img03.jpg" class="img-Lazy" alt=""></a>
            </div>
            <h6><a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img03.jpg" title="" class="is-lightbox" data-ilightbox="image">Best Sell Magazine</a></h6>
            <p>Creative Design</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box01">
            <div class="pic color-accent">
                <a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img04-big.jpg" title="" class="is-lightbox" data-ilightbox="image"><img src="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img04.jpg" class="img-Lazy" alt=""></a>
            </div>
            <h6><a href="#" title="">Bird Of Paradise</a></h6>
            <p>Creative Design</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box01">
            <div class="pic color-accent">
                <a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img04-big.jpg" title="" class="is-lightbox" data-ilightbox="image"><img src="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img05.jpg" class="img-Lazy" alt=""></a>
            </div>
            <h6><a href="#" title="">Guitar-shaped Accessory</a></h6>
            <p>Creative Design</p>
        </div>
	</div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="img-box01">
            <div class="pic color-accent">
                <a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img06-big.jpg" title="" class="is-lightbox" data-ilightbox="image"><img src="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img06.jpg" class="img-Lazy" alt=""></a>
            </div>
            <h6><a href="#" title="">Beautiful Sea Tower</a></h6>
            <p>Creative Design</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box01">
            <div class="pic color-accent">
                <a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img07-big.jpg" title="" class="is-lightbox" data-ilightbox="image"><img src="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img07.jpg" class="img-Lazy" alt=""></a>
            </div>
            <h6><a href="#" title="">Wonderful Combination</a></h6>
            <p>Creative Design</p>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box01">
            <div class="pic color-accent">
                <a href="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img06-big.jpg" title="" class="is-lightbox" data-ilightbox="image"><img src="/Portals/_default/ContentBuilder/minis-page/home03/homepage03-img08.jpg" class="img-Lazy" alt=""></a>
            </div>
            <h6><a href="#" title="">Creative Fish Tank</a></h6>
            <p>Creative Design</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box01">${csstemplate["img-box01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox02.jpg',
	'category': '706',
	'name': 'img-box02',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="img-box02">
            <div class="pic"><img src="/Portals/_default/ContentBuilder/minis-page/about-us/aboutus-pic05.jpg" class="img-Lazy" alt="Image"></div>
            <div class="cont edit-box">
                <p>Duis egestas mollis ligula et finibus. Praesent condimentum diam sed purus lacinia, id vehicula libero.</p>
                <div class="title bg-accent">
                    <h6>Best Sell Magazine</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box02">
            <div class="pic"><img src="/Portals/_default/ContentBuilder/minis-page/about-us/aboutus-pic06.jpg" class="img-Lazy" alt="Image"></div>
            <div class="cont edit-box">

                <p>Quisque porta lacus lacus, nec sagittis est mollis nec. Integer non tristique elit. Suspendisse sed elit urna.</p>

                <div class="title bg-accent">
                    <h6>Creative Spaghetti</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box02">
            <div class="pic"><img src="/Portals/_default/ContentBuilder/minis-page/about-us/aboutus-pic07.jpg" class="img-Lazy" alt="Image"></div>
            <div class="cont edit-box">
                <p> Pellentesque nec imperdiet odio. Sed interdum massa sit amet tempus pretium, vestibulum cursus.</p>
                <div class="title bg-accent">
                    <h6>Bird Of Paradise</h6>
                </div>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box02">${csstemplate["img-box02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox03.jpg',
	'category': '706',
	'name': 'img-box03',
	'html': `<div class="row col-no-padding">
    <div class="col-lg-4">
        <div class="img-box03 edit-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/about-us/aboutus-pic08.jpg&quot;); background-position: left top; background-repeat: no-repeat; background-size: cover;">
            <div class="icon"><i class="sico lnr-bubbles"></i></div>
            <div class="title ">
                <h4 style="font-weight:600;">Free Consultation</h4>
            </div>
            <p>Cras gravida volutpat est, sit amet vehicula turpis nibh sit amet mattis auctor.</p>

        </div>
    </div>
    <div class="col-lg-4">
        <div class="img-box03 edit-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/about-us/aboutus-pic09.jpg&quot;); background-position: left top; background-repeat: no-repeat; background-size: cover;">

            <div class="title">
                <h4 style="font-weight:600;">Want To Ask A Question Or Just Say Hi?</h4>
            </div>
            <div><a href="#" title="learn more" class="button-01" style="margin-right: 12px;">LEARN MORE</a></div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="img-box03 edit-box" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/about-us/aboutus-pic10.jpg&quot;); background-position: left top; background-repeat: no-repeat; background-size: cover;">

            <div class="title ">
                <h4 style="font-weight:600;">Incomparable service</h4>
            </div>
            <p>Nulla facilisi. Nunc diam lacus, interdum non sapien et, volutpat suscipit magna.</p>
            <div class="link">
                <a href="#" title="">VIEW MORE <i class="sico lnr-plus"></i></a>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box03">${csstemplate["img-box03"]}</style>
	<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox04.jpg',
	'category': '706',
	'name': 'img-box04',
	'html': `<div class="content">
    <div class="img-box04">
        <div class="pic">
            <img alt="" src="/Portals/_default/ContentBuilder/minis-page/our-service/ourservice-img01.jpg" class="img-Lazy">
        </div>
        <div class="content edit-box">
            <h5><span class="color-accent">Share</span> your thought</h5>
            <p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
        </div>
    </div>
    <div class="img-box04">
        <div class="pic">
            <img alt=""  src="/Portals/_default/ContentBuilder/minis-page/our-service/ourservice-img02.jpg" class="img-Lazy">
        </div>
        <div class="content edit-box">
            <h5><span class="color-accent">Analyze</span> your requirements</h5>
            <p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
        </div>
    </div>
    <div class="img-box04">
        <div class="pic">
            <img alt=""  src="/Portals/_default/ContentBuilder/minis-page/our-service/ourservice-img03.jpg" class="img-Lazy">
        </div>
        <div class="content edit-box">
            <h5><span class="color-accent">Work</span> on web design</h5>
            <p>Quisque augue nisi, gravida id finibus facilisis malesuada.</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box04">${csstemplate["img-box04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox05.jpg',
	'category': '706',
	'name': 'img-box05',
	'html': `<div class="row">
    <div class="col-md-4">
        <div class="img-box05">
            <div class="pic color-accent">
                <a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/our-team-single/ourteam-single-img02.jpg" class="img-Lazy" alt=""></a>
            </div>
            <div class="content edit-box">
                <h6>Best Sell Magazine</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box05">
            <div class="pic color-accent">
                <a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/our-team-single/ourteam-single-img03.jpg" class="img-Lazy" alt=""></a>
            </div>
            <div class="content edit-box">
                <h6>Bird Of Paradise</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box05">
            <div class="pic color-accent">
                <a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/our-team-single/ourteam-single-img04.jpg" class="img-Lazy" alt=""></a>
            </div>
            <div class="content edit-box">
                <h6>Guitar-shaped Accessory</h6>
            </div>
        </div>
	</div>
</div>
<div class="row">	
    <div class="col-md-4">
        <div class="img-box05">
            <div class="pic color-accent">
                <a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/our-team-single/ourteam-single-img05.jpg" class="img-Lazy" alt=""></a>
            </div>
            <div class="content edit-box">
                <h6>Beautiful Sea Tower</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box05">
            <div class="pic color-accent">
                <a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/our-team-single/ourteam-single-img06.jpg" class="img-Lazy" alt=""></a>
            </div>
            <div class="content edit-box">
                <h6>Wonderful Combination</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box05">
            <div class="pic color-accent">
                <a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/our-team-single/ourteam-single-img07.jpg" class="img-Lazy" alt=""></a>
            </div>
            <div class="content edit-box">
                <h6>Creative Fish Tank</h6>
            </div>

        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box05">${csstemplate["img-box05"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox06.jpg',
	'category': '706',
	'name': 'img-box06',
	'html': `<div class="row">
    <div class="col-md-6">
        <div class="img-box06">
            <img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img04.jpg" class="shadow-md img-Lazy" alt="">
            <div class="title">
                <p> Amazing book mockup design</p>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="img-box06">
            <img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img05.jpg" class="shadow-md img-Lazy">
            <div class="title">
                <p>Beauty natural logo design</p>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box06">${csstemplate["img-box06"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox07.jpg',
	'category': '706',
	'name': 'img-box07',
	'html': `<div class="row col-no-padding">
    <div class="col-md-4">
        <div class="img-box07">
            <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img11.jpg" alt="" class="img-Lazy" ></a></span>
            <div class="title">
                <h6>Ceramic bottle design</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box07">
            <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img12.jpg" alt="" class="img-Lazy" ></a></span>
            <div class="title">
                <h6>Ceramic bottle design</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box07">
            <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img13.jpg" class="img-Lazy" alt="" ></a></span>
            <div class="title">
                <h6>Ceramic bottle design</h6>
            </div>
        </div>
	</div>
</div>
<div class="row col-no-padding">
    <div class="col-md-4">
        <div class="img-box07">
            <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img14.jpg" class="img-Lazy" alt="" ></a></span>
            <div class="title">
                <h6>Ceramic bottle design</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box07">
            <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img15.jpg" class="img-Lazy" alt="" ></a></span>
            <div class="title">
                <h6>Ceramic bottle design</h6>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="img-box07">
            <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-img16.jpg" class="img-Lazy" alt="" ></a></span>
            <div class="title">
                <h6>Ceramic bottle design</h6>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box07">${csstemplate["img-box07"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox08.jpg',
	'category': '706',
	'name': 'img-box08',
	'html': `<div class="row">
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img05.jpg" class="img-Lazy"></div>

            <h6 class="title">Leisure Sofa Chair</h6>

            <p class="price">$59.99</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img06.jpg" class="img-Lazy"></div>

            <h6 class="title">Modern Armchair</h6>

            <p class="price">$59.99</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img07.jpg" class="img-Lazy"></div>

            <h6 class="title">Armchair</h6>

            <p class="price">$79.99</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img08.jpg" class="img-Lazy"></div>

            <h6 class="title">Modern Armchair</h6>

            <p class="price">$69.99</p>
        </div>
	</div>
</div>
<div class="row">
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img09.jpg" class="img-Lazy"></div>

            <h6 class="title">Simple Ceiling Lamp</h6>

            <p class="price">$59.99</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img10.jpg" class="img-Lazy"></div>

            <h6 class="title">Table Lamp</h6>

            <p class="price">$59.99</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img11.jpg" class="img-Lazy"></div>

            <h6 class="title">Potted Plant</h6>

            <p class="price">$79.99</p>
        </div>
    </div>
    <div class="col-md-6 col-lg-3">
        <div class="img-box08">
            <div class="product"><img src="/Portals/_default/ContentBuilder/minis-page/home12/homepage12-img12.jpg" class="img-Lazy"></div>

            <h6 class="title">Fashion Mirror</h6>

            <p class="price">$69.99</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box08">${csstemplate["img-box08"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox09.jpg',
	'category': '706',
	'name': 'img-box09',
	'html': `<div class="row col-no-padding">
    <div class="col-md-6">
        <div class="img-box09">
            <div class="pic">
                <a href="#" title="">
                    <img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img09.jpg" class="img-Lazy">
                </a>
            </div>

            <h6 class="title">Illustration Design</h6>

        </div>
    </div>
    <div class="col-md-6">
        <div class="img-box09">
            <div class="pic">
                <a href="#" title="">
                    <img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img10.jpg" class="img-Lazy">
                </a>
            </div>

            <h6 class="title">Illustration Design</h6>

        </div>
    </div>
    <div class="col-md-6">
        <div class="img-box09">
            <div class="pic">
                <a href="#" title="">
                    <img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img11.jpg" class="img-Lazy">
                </a>
            </div>
            <h6 class="title">Illustration Design</h6>

        </div>
    </div>
    <div class="col-md-6">
        <div class="img-box09">
            <div class="pic">
                <a href="#" title="">
                    <img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img12.jpg" class="img-Lazy">
                </a>
            </div>

            <h6 class="title">Illustration Design</h6>

        </div>
    </div>
</div>
	<style class="build-css" data-class="img-box09">${csstemplate["img-box09"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox10.jpg',
	'category': '706',
	'name': 'img-box10',
	'html': ` <div class="row">
	<div class="col-md-6">
		<div class="img-box10">
			<div class="pic">
				<span>
					<a href="#" title="image">
						<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section05-img01.jpg" alt="image" class="img-Lazy"></a>
				</span>
			</div>
			<div class="content">
				<h6 class="title">Tomato Growing Base</h6>
				<p class="description">Proin massa mi, viverra ac libero vel, dapibus gravida diam.</p>
			</div>
			<a class="link" href="#"></a>
		</div>
	</div>
	<div class="col-md-6">
		<div class="img-box10">
			<div class="pic">
				<span>
					<a href="#" title="Ripe Blackberries">
						<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section05-img03.jpg" alt="image" class="img-Lazy"></a>
				</span>
			</div>
			<div class="content">
				<h6 class="title">Ripe Blackberries</h6>
				<p class="description">Proin massa mi, viverra ac libero vel, dapibus gravida diam.</p>
			</div>
			<a class="link" href="#"></a>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-6">
		<div class="img-box10">
			<div class="pic">
				<span>
					<a href="#" title="Currant Plantation">
						<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section05-img02.jpg" alt="image" class="img-Lazy"></a>
				</span>
			</div>
			<div class="content">
				<h6 class="title">Currant Plantation</h6>
				<p class="description">Proin massa mi, viverra ac libero vel, dapibus gravida diam.</p>
			</div>
			<a class="link" href="#"></a>
		</div>
	</div>
	<div class="col-md-6">
		<div class="img-box10">
			<div class="pic">
				<span>
					<a href="#" title="Green Pepper">
						<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section05-img04.jpg" alt="image" class="img-Lazy"></a>
				</span>
			</div>
			<div class="content">
				<h6 class="title">Green Pepper</h6>
				<p class="description">Proin massa mi, viverra ac libero vel, dapibus gravida diam.</p>
			</div>
			<a class="link" href="#"></a>
		</div>
	</div>
</div><style class="build-css" data-class="img-box10">${csstemplate["img-box10"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox11.jpg',
	'category': '706',
	'name': 'img-box11',
	'html': `<div class="img-box11 is-light-text">
	<img src="/Portals/_default/ContentBuilder/minis-page/design-studio2/designStudio2-img09.jpg" alt="" class="img-Lazy">
	<div class="cont edit-box">
		<h3>If You Can't Find Answers</h3>
		<p class="mt-35">
			<a href="#" title="START NOW" class="button-01 border-radius-3 bg-accent3">CONTACT US</a>
		</p>
	</div>
</div>
<style class="build-css" data-class="img-box11">${csstemplate["img-box11"]}</style>
<style class="build-css" data-class="button-01">${csstemplate["button-01"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/imagebox/imagebox12.jpg',
	'category': '706',
	'name': 'img-box12',
	'html': `<div class="row">
	<div class="col-md-4">
		<div class="img-box12">
			<img src="/Portals/_default/ContentBuilder/minis-page/our-service05/ourservice05-img01.jpg" class="img-Lazy" alt="">
			<h6 class="title">
				<span class="number">01</span>Powerful Support</h6>
			<p>Ut facilisis mauris non viverra hendrerit. Nunc urna lectus, posuere at sagittis nec, rhoncus id enim. Sed dapibus suscipit risus.</p>
		</div> 
	</div>
	<div class="col-md-4">
		<div class="img-box12">
			<img src="/Portals/_default/ContentBuilder/minis-page/our-service05/ourservice05-img02.jpg" class="img-Lazy">
			<h6 class="title">
				<span class="number">02</span>Professional Solution</h6>
			<p>Curabitur vitae fermentum est nulla lacus ex cursus et commodo ac bibendum eu ante laoreet nisl vestibulum massa nibh.</p>
		</div>
	</div>
	<div class="col-md-4">
		<div class="img-box12">
			<img src="/Portals/_default/ContentBuilder/minis-page/our-service05/ourservice05-img03.jpg" class="img-Lazy">
			<h6 class="title">
				<span class="number">03</span>Perfect Development</h6>
			<p>Donec vel libero nulla aenean feugiat facilisis ultricies quisque sagittis lorem et quam sodales lacinia viverra eu tortor id sollicit.</p>
		</div>
	</div>
</div>
<style class="build-css" data-class="img-box12">${csstemplate["img-box12"]}</style>
`}
, 
{
	'thumbnail': 'minis-shortcode/imagebox/imagebox13.jpg',
	'category': '706',
	'name': 'img-box13',
	'html': `
	<div class="img-box13">
		<div class="pic">
			<img alt="" src="/Portals/_default/ContentBuilder/minis-page/contact-us02/contactus02-img01.jpg" class="img-Lazy"></div>
		<div class="content edit-box">
			<h6 class="title">Headquarters</h6>
			<ul class="info">
				<li>
					<i class="sico lnr-map-marker"><svg>
							<use xlink:href="#lnr-map-marker"></use>
						</svg></i>66 Germonds Rd, NY 10995</li>
				<li>
					<i class="sico lnr-phone-wave"><svg>
							<use xlink:href="#lnr-phone-wave"></use>
						</svg></i>(845) 371-3702</li>
				<li>
					<i class="sico lnr-envelope-open"><svg>
							<use xlink:href="#lnr-envelope-open"></use>
						</svg></i>sample@gmail.com</li>
			</ul>
		</div>
	</div>
	<div class="img-box13">
		<div class="pic">
			<img alt="" src="/Portals/_default/ContentBuilder/minis-page/contact-us02/contactus02-img02.jpg" class="img-Lazy"></div>
		<div class="content edit-box">
			<h6 class="title">Design Department</h6>
			<ul class="info">
				<li>
					<i class="sico lnr-map-marker"><svg>
							<use xlink:href="#lnr-map-marker"></use>
						</svg></i>20 Ford Products Rd, NY 10990</li>
				<li>
					<i class="sico lnr-phone-wave"><svg>
							<use xlink:href="#lnr-phone-wave"></use>
						</svg></i>(201) 797-7965</li>
				<li>
					<i class="sico lnr-envelope-open"><svg>
							<use xlink:href="#lnr-envelope-open"></use>
						</svg></i>design@gmail.com</li>
			</ul>
		</div>
	</div>
	<div class="img-box13">
		<div class="pic">
			<img alt="" src="/Portals/_default/ContentBuilder/minis-page/contact-us02/contactus02-img03.jpg" class="img-Lazy"></div>
		<div class="content edit-box">
			<h6 class="title">Service Department</h6>
			<ul class="info">
				<li>
					<i class="sico lnr-map-marker"><svg>
							<use xlink:href="#lnr-map-marker"></use>
						</svg></i>481 Mountainview Ave, NY 10200</li>
				<li>
					<i class="sico lnr-phone-wave"><svg>
							<use xlink:href="#lnr-phone-wave"></use>
						</svg></i>(845) 353-2345</li>
				<li>
					<i class="sico lnr-envelope-open"><svg>
							<use xlink:href="#lnr-envelope-open"></use>
						</svg></i>service@gmail.com</li>
			</ul>
		</div>
	</div>
<style class="build-css" data-class="img-box13">${csstemplate["img-box13"]}</style>
`}

);
// Social
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/social/social01.jpg',
	'category': '707',
	'name': 'social-01',
	'html': `<div class="edit-box">
	<a class="social-01 facebook-f" href="#" title=""><i class="sico fab-twitter"></i></a>
	<a class="social-01 linkedin-in" href="#" title=""><i class="sico fab-pinterest-p"></i></a>
	<a class="social-01 twitter" href="#" title=""><i class="sico fab-linkedin-in"></i></a>
</div>
	<style class="build-css" data-class="social-01">${csstemplate["social-01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social02.jpg',
	'category': '707',
	'name': 'social-02',
	'html': `<div class="edit-box">
    <a class="social-02" href="#"><i class="sico fab-twitter"></i></a>
    <a class="social-02" href="#"><i class="sico fab-pinterest-p"></i></a>
    <a class="social-02" href="#"><i class="sico fab-linkedin-in"></i></a>
</div>
	<style class="build-css" data-class="social-02">${csstemplate["social-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social03.jpg',
	'category': '707',
	'name': 'social-03',
	'html': `<div class="edit-box">
    <a class="social-03 facebook-f" href="#" title=""><i class="sico fab-facebook-f"></i></a>
    <a class="social-03 linkedin-in" href="#" title=""><i class="sico fab-linkedin-in"></i></a>
    <a class="social-03 twitter" href="#" title=""><i class="sico fab-twitter"></i></a>
</div>
	<style class="build-css" data-class="social-03">${csstemplate["social-03"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social04.jpg',
	'category': '707',
	'name': 'social-04',
	'html': `<div class="edit-box">
	<a class="social-04" href="#"><i class="sico fab-facebook-f"></i></a>
	<a class="social-04" href="#"><i class="sico fab-twitter"></i></a>
	<a class="social-04" href="#"><i class="sico fab-instagram"></i></a>
	<a class="social-04" href="#"><i class="sico fab-pinterest-p"></i></a>
</div>
	<style class="build-css" data-class="social-04">${csstemplate["social-04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social05.jpg',
	'category': '707',
	'name': 'social-05',
	'html': `<div class="edit-box">
    <a class="social-05" href="#"><i class="sico fab-twitter"></i></a>
    <a class="social-05" href="#"><i class="sico fab-pinterest-p"></i></a>
    <a class="social-05" href="#"><i class="sico fab-linkedin-in"></i></a>
</div>
	<style class="build-css" data-class="social-05">${csstemplate["social-05"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social06.jpg',
	'category': '707',
	'name': '',
	'html': `<div class="edit-box">
	<a class="social-06" href="#"><i class="sico fab-pinterest-p"></i></a>
	<a class="social-06" href="#"><i class="sico fab-linkedin-in"></i></a>
	<a class="social-06" href="#"><i class="sico fab-twitter"></i></a>
	<a class="social-06" href="#"><i class="sico fab-dribbble"></i></a>
</div>
	<style class="build-css" data-class="social-06">${csstemplate["social-06"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social07.jpg',
	'category': '707',
	'name': 'social-07',
	'html': `<div class="edit-box">
	<a class="social-07" href="#"><i class="color-accent sico fab-pinterest-p"></i>Pinterest</a>
	<a class="social-07" href="#"><i class="color-accent sico fab-linkedin-in"></i>Linkedin</a>
	<a class="social-07" href="#"><i class="color-accent sico fab-twitter"></i>Twitter</a>
	<a class="social-07" href="#"><i class="color-accent sico fab-dribbble"></i>Twitter</a>
</div>
	<style class="build-css" data-class="social-07">${csstemplate["social-07"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social08.jpg',
	'category': '707',
	'name': 'social-08',
	'html': `<div class="edit-box">
    <a class="social-08" href="#"><i class="sico fab-facebook-f size-24"></i></a>
    <a class="social-08" href="#"><i class="sico fab-twitter size-24"></i></a>
    <a class="social-08" href="#"><i class="sico fab-linkedin-in size-24"></i></a>
    <a class="social-08" href="#"><i class="sico fab-pinterest-p size-24"></i></a>
</div>
	<style class="build-css" data-class="social-08">${csstemplate["social-08"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social09.jpg',
	'category': '707',
	'name': 'social-09',
	'html': `<div class="edit-box">
    <a class="social-09" href="#"><i class="sico fab-twitter"></i></a>
    <a class="social-09" href="#"><i class="sico fab-pinterest-p"></i></a>
    <a class="social-09" href="#"><i class="sico fab-linkedin-in"></i></a>
</div>
	<style class="build-css" data-class="social-09">${csstemplate["social-09"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social10.jpg',
	'category': '707',
	'name': 'social-10',
	'html': `<div class="edit-box">
	<a class="social-10" href="#">
	<i class="sico fab-pinterest-p" style="background-color: rgb(227, 50, 77);"><svg><use xlink:href="#fab-pinterest-p"></use></svg></i>Pinterest</a>
	<a class="social-10" href="#">
		<i class="sico fab-linkedin-in" style="background-color: rgb(27, 137, 196);"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>Linkedin</a>
	<a class="social-10" href="#">
		<i class="sico fab-twitter" style="background-color: rgb(30, 164, 255);"><svg><use xlink:href="#fab-twitter"></use></svg></i>Twitter</a>
	<a class="social-10" href="#">
		<i class="sico fab-dribbble" style="background-color: rgb(234, 76, 137);"><svg><use xlink:href="#fab-dribbble"></use></svg></i>Dribbble</a>
</div>
	<style class="build-css" data-class="social-10">${csstemplate["social-10"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/social/social11.jpg',
	'category': '707',
	'name': 'social-11',
	'html': `<div class="edit-box size-18">
	<a class="social-11" href="#" title="Facebook">
		<i class="sico fab-facebook-f" style="color: rgb(59, 89, 152);"><svg>
				<use xlink:href="#fab-facebook-f"></use>
			</svg></i>Facebook</a>
	<a class="social-11" href="#" title="twitter">
		<i class="sico fab-twitter" style="color: rgb(0, 172, 238);"><svg>
				<use xlink:href="#fab-twitter"></use>
			</svg></i>Twitter</a>
	<a class="social-11" href="#" title="pinterest">
		<i class="sico fab-pinterest-p" style="color: rgb(200, 37, 46);"><svg>
				<use xlink:href="#fab-pinterest-p"></use>
			</svg></i>Pinterest</a>
</div>
	<style class="build-css" data-class="social-11">${csstemplate["social-11"]}</style>`
}, 
{
	'thumbnail': 'minis-shortcode/social/social12.jpg',
	'category': '707',
	'name': 'social-12',
	'html': `
	<div class="edit-box social-list-12">
		<a class="social-12" href="#" title="" style="background-color: rgb(58, 88, 155);">
			<i class="sico fab-facebook-f"><svg><use xlink:href="#fab-facebook-f"></use></svg></i>
		</a>
		<a class="social-12" href="#" style="background-color: rgb(0, 172, 237);">
			<i class="sico fab-twitter"><svg><use xlink:href="#fab-twitter"></use></svg></i>
		</a>
		<a class="social-12" href="#" style="background-color: rgb(247, 101, 156);">
			<i class="sico fab-dribbble"><svg><use xlink:href="#fab-dribbble"></use></svg></i>
		</a>
	</div>
	<style class="build-css" data-class="social-12">${csstemplate["social-12"]}</style>`
}
, 
{
	'thumbnail': 'minis-shortcode/social/social13.jpg',
	'category': '707',
	'name': 'social-13',
	'html': `
	<div class="row">
		<div class="col-md-4">
			<a class="social-13" href="#" title="LEARN MORE" style="background-color: rgb(59, 89, 152);">
				<span>FACEBOOK</span>
				<i class="sico fab-facebook-f" style="color: rgb(59, 89, 152);"><svg><use xlink:href="#fab-facebook-f"></use></svg></i>
			</a>
		</div>
		<div class="col-md-4">
			<a class="social-13" href="#" title="LEARN MORE" style="background-color: #ea4c89;">
				<span>DRIBBBLE</span>
				<i class="sico fab-dribbble" style="color:  #ea4c89;"><svg><use xlink:href="#fab-dribbble"></use></svg></i>
			</a>
		</div>
		<div class="col-md-4">
			<a class="social-13" href="#" title="LEARN MORE" style="background-color:#00acee;">
				<span>TWITTER</span>
				<i class="sico fab-twitter" style="color: #00acee;"><svg><use xlink:href="#fab-twitter"></use></svg></i>
			</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<a class="social-13" href="#" title="LEARN MORE" style="background-color:#e62a29;">
				<span>YOUTUBE</span>
				<i class="sico fab-youtube" style="color: #e62a29;"><svg><use xlink:href="#fab-youtube"></use></svg></i>
			</a>
		</div>
		<div class="col-md-4">
			<a class="social-13" href="#" title="LEARN MORE" style="background-color: #0e76a8;">
				<span>LINKEDIN</span>
				<i class="sico fab-linkedin-in" style="color:  #0e76a8;"><svg><use xlink:href="#fab-linkedin-in"></use></svg></i>
			</a>
		</div>
		<div class="col-md-4">
			<a class="social-13" href="#" title="LEARN MORE" style="background-color: #1879fd;">
				<span>BEHANCE</span>
				<i class="sico fab-behance" style="color: #1879fd;"><svg><use xlink:href="#fab-behance"></use></svg></i>
			</a>
		</div>
	</div>
	<style class="build-css" data-class="social-13">${csstemplate["social-13"]}</style>`
}
);

// clientlist
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/clientlist/clientlist01.jpg',
	'category': '708',
	'name': 'clientlist01',
	'html': `<div class="row clientlist01">
    <div class="col-md-2 col-4">
        <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home01/homepage01-footer-client01.png" class="img-Lazy"  alt=""></a></span>
    </div>
    <div class="col-md-2 col-4">
        <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home01/homepage01-footer-client02.png" class="img-Lazy"  alt=""></a></span>
    </div>
    <div class="col-md-2 col-4">
        <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home01/homepage01-footer-client03.png" class="img-Lazy"  alt=""></a></span>
    </div>
    <div class="col-md-2 col-4">
        <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home01/homepage01-footer-client04.png" class="img-Lazy"  alt=""></a></span>
    </div>
    <div class="col-md-2 col-4">
        <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home01/homepage01-footer-client05.png" class="img-Lazy"  alt=""></a></span>
    </div>
    <div class="col-md-2 col-4">
        <span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home01/homepage01-footer-client06.png" class="img-Lazy"  alt=""></a></span>
    </div>
</div>
<style class="build-css" data-class="clientlist01">${csstemplate["clientlist01"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/clientlist/clientlist02.jpg',
	'category': '708',
	'name': 'clientlist02',
	'html': `<div class="row clientlist02">
	<div class="col-md"><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home05/homepage05-client01.png" alt="" class="img-Lazy"></a></div>
	<div class="col-md"><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home05/homepage05-client02.png" alt="" class="img-Lazy"></a></div>
	<div class="col-md"><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home05/homepage05-client03.png" alt="" class="img-Lazy"></a></div>
	<div class="col-md"><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home05/homepage05-client04.png" alt="" class="img-Lazy"></a></div>
	<div class="col-md"><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home05/homepage05-client05.png" alt="" class="img-Lazy"></a></div>
	</div>
	<style class="build-css" data-class="clientlist02">${csstemplate["clientlist02"]}</style>
	
	`
}, {
	'thumbnail': 'minis-shortcode/clientlist/clientlist03.jpg',
	'category': '708',
	'name': 'clientlist03',
	'html': `<div class="row clientlist03">
		<div class="col">
			<span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-client01.jpg" class="img-Lazy"></a></span>
		</div>
		<div class="col">
			<span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-client02.jpg" class="img-Lazy"></a></span>
		</div>
		<div class="col">
			<span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-client03.jpg" class="img-Lazy"></a></span>
		</div>
		<div class="col">
			<span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-client04.jpg" class="img-Lazy"></a></span>
		</div>
		<div class="col">
			<span><a href="#" title=""><img src="/Portals/_default/ContentBuilder/minis-page/home11/homepage11-client05.jpg" class="img-Lazy"></a></span>
		</div>
	</div>
	<style class="build-css" data-class="clientlist03">${csstemplate["clientlist03"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/clientlist/clientlist04.jpg',
	'category': '708',
	'name': 'clientlist04',
	'html': `<div class="clientlist04">
		<a href="#"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-footer-client01.jpg" class="img-Lazy" ></a>
		<a href="#"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-footer-client02.jpg" class="img-Lazy" ></a>
		<a href="#"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-footer-client03.jpg" class="img-Lazy" ></a>
		<a href="#"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-footer-client04.jpg" class="img-Lazy" ></a>
		<a href="#"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-footer-client05.jpg" class="img-Lazy" ></a>
	</div>
	<style class="build-css" data-class="clientlist04">${csstemplate["clientlist04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/clientlist/clientlist05.jpg',
	'category': '708',
	'name': 'clientlist05',
	'html': `<div class="row clientlist05">
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client01.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client02.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client03.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client04.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client05.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client06.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client07.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client08.png" alt=""></a>
	</div>
	<div class="col-md-4">
		<a href="#" title="">
			<img class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/about-us04/aboutUs04-client09.png" alt=""></a>
	</div>
</div>
	<style class="build-css" data-class="clientlist05">${csstemplate["clientlist05"]}</style>`
});

//blockquotes
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/testimonials/blockquotes02.jpg',
	'category': '803',
	'name': 'blockquotes-02',
	'html': `<div class="row">
	<div class="col-md-4">
		<div class="blockquotes-02 color-accent">
			<div class="content edit-box">
				<h6>Lovely Design</h6>
				<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis sus laboriosam</p>
			</div>
			<footer>
				<div class="pic">
					<img alt="Ross Williams"
					 class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home02/blockquotes-01.png">
				</div>
				<div class="info">
					<strong class="color-accent">Ross Williams</strong>
					<cite>Company CEO</cite>
				</div>
			</footer>
		</div>
	</div>

	<div class="col-md-4">
		<div class="blockquotes-02 color-accent">
			<div class="content edit-box">
				<h6>Intuitive Interface</h6>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet nibh nec sapien.</p>
			</div>
			<footer>
				<div class="pic">
					<img alt="Jennifer Freeman"
					 class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home02/blockquotes-02.png">
				</div>
				<div class="info">
					<strong class="color-accent">Jennifer Freeman</strong>
					<cite>Project Manager</cite>
				</div>
			</footer>
		</div>
	</div>

	<div class="col-md-4">
		<div class="blockquotes-02 color-accent">
			<div class="content edit-box">
				<h6>Excellent Technology</h6>
				<p>Etiam feugiat maximus nunc ut semper. Suspendisse vel massa consectetur auctor.</p>
			</div>
			<footer>
				<div class="pic">
					<img alt="Willie Clark"
					 class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/home02/blockquotes-03.jpg">
				</div>
				<div class="info">
					<strong class="color-accent">Willie Clark</strong>
					<cite>Finance Executive</cite>
				</div>
			</footer>
		</div>
	</div>
</div>
<style class="build-css" data-class="blockquotes-02">${csstemplate["blockquotes-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/blockquotes04.jpg',
	'category': '803',
	'name': 'blockquotes-04',
	'html': `<div class="blockquotes-04">
	<div class="content edit-box">
		<p>Vivamus posuere varius fermentum. Phasellus a pharetra lorem. Aenean quis nunc id magna efficitur.</p>
	</div>
	<footer>
		<div class="pic">
			<img alt="David Parker" class="img-Lazy" src="/Portals/_default/ContentBuilder/minis-page/saas/saas-section03-img01.png"></div>
		<div class="info">
			<strong>David Parker</strong>
			<cite>CEO</cite>
		</div>
	</footer>
</div>	
<style class="build-css" data-class="blockquotes-04">${csstemplate["blockquotes-04"]}</style>
	`
})



// accordions
data_basic.snippets.push({
		'thumbnail': 'minis-shortcode/accordions/accordions01.jpg',
		'category': '800',
		'name': 'accordion01',
		'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Accordions" data-style="accordion01" data-settings="%7B%22style%22%3A%22accordion01%22%2C%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22What%20after sales%20support%20do%20you%20offer%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%2C%22icon%22%3A%22sico%20lnr-spotlights%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22What%20services%20do%20you%20provide%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%2C%22icon%22%3A%22sico%20lnr-cog2%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22What%20should%20I%20do%20to%20create%20a%20website%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%2C%22icon%22%3A%22sico%20lnr-pencil3%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22How%20much%20will%20it%20cost%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%2C%22icon%22%3A%22sico%20lnr-coin-dollar%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Can%20you%20help%20me%20change%20the%20color%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%2C%22icon%22%3A%22sico%20lnr-palette%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%222%22%2C%22interval%22%3A%22200%22%7D"></div>`
	}, {
		'thumbnail': 'minis-shortcode/accordions/accordions02.jpg',
		'category': '800',
		'name': 'accordion02',
		'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Accordions" data-style="accordion02" data-settings="%7B%22style%22%3A%22accordion02%22%2C%22moduleid%22%3A%228gStnn%22%2C%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Installation%20guide%22%2C%22description%22%3A%22Curabitur%20feugiat%20urna%20ut%20turpis%20tempor%20bibendum.%20Etiam%20dictum%20tortor%20sed%20lorem%20semper%20imperdiet.%20Suspendisse%20fermentum.%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Live%20call%20support%22%2C%22description%22%3A%22Curabitur%20feugiat%20urna%20ut%20turpis%20tempor%20bibendum.%20Etiam%20dictum%20tortor%20sed%20lorem%20semper%20imperdiet.%20Suspendisse%20fermentum.%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Easy%20setup%20process%22%2C%22description%22%3A%22Curabitur%20feugiat%20urna%20ut%20turpis%20tempor%20bibendum.%20Etiam%20dictum%20tortor%20sed%20lorem%20semper%20imperdiet.%20Suspendisse%20fermentum.%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%7D"></div>`
	},

	{
		'thumbnail': 'minis-shortcode/accordions/accordions03.jpg',
		'category': '800',
		'name': 'accordion03',
		'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Accordions" data-style="accordion03" data-settings="%7B%22style%22%3A%22accordion03%22%2C%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22What%20after sales%20support%20do%20you%20offer%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22What%20services%20do%20you%20provide%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22What%20should%20I%20do%20to%20create%20a%20website%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22How%20much%20will%20it%20cost%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Can%20you%20help%20me%20change%20the%20color%3F%22%2C%22description%22%3A%22Donec%20rhoncus%20vestibulum%20velit%2C%20eu%20fringilla%20orci%20scelerisque%20eu.%20Cras%20in%20posuere%20metus.%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%222%22%7D"></div>`
	},

	{
		'thumbnail': 'minis-shortcode/accordions/accordions04.jpg',
		'category': '800',
		'name': 'accordion04',
		'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Accordions" data-style="accordion04" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22What%20after sales%20support%20do%20you%20offer%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22What%20services%20do%20you%20provide%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Can%20you%20help%20me%20change%20the%20color%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Is%20there%20a%20child%20theme%20included%20in%20this%20theme%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%7D%7D"></div>`
	},

	{
		'thumbnail': 'minis-shortcode/accordions/accordions05.jpg',
		'category': '800',
		'name': 'accordion05',
		'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Accordions" data-style="accordion05" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22What%20after sales%20support%20do%20you%20offer%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22What%20services%20do%20you%20provide%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Can%20you%20help%20me%20change%20the%20color%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Is%20there%20a%20child%20theme%20included%20in%20this%20theme%3F%22%2C%22description%22%3A%22Aliquam%20erat%20volutpat.%20Suspendisse%20sollicitudin%20enim%20ac%20turpis%20imperdiet%2C%20aliquet%20sollicitudin%20metus%20sagittis.%20Nulla%20in%20nunc%20egestas%2C%20blandit%20quam%20sed%2C%20vestibulum%20elit.%20%22%7D%7D%7D"></div>`
	},
	{
		'thumbnail': 'minis-shortcode/accordions/accordions06.jpg',
		'category': '800',
		'name': 'accordion06',
		'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Accordions" data-style="accordion06"  data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22What%20aftersales%20support%20do%20you%20offer%3F%22%2C%22description%22%3A%22Fusce%20aliquet%20iaculis%20dolor%2C%20sed%20fermentum%20eros%20semper%20vitae.%20Vestibulum%20aliquet%20mollis%20tortor%2C%20sit%20amet%20interdum%20magna.%22%2C%22icon%22%3A%22sico%20fab-delicious%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22What%20should%20i%20do%20to%20create%20a%20website%3F%22%2C%22description%22%3A%22Curabitur%20feugiat%20urna%20ut%20turpis%20tempor%20bibendum.%20Etiam%20dictum%20tortor%20sed%20lorem%20semper%20imperdiet.%20Suspendisse%20fermentum.%22%2C%22icon%22%3A%22sico%20fas-edit%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Is%20there%20a%20child%20theme%20included%20in%20this%20theme%3F%22%2C%22description%22%3A%22Curabitur%20feugiat%20urna%20ut%20turpis%20tempor%20bibendum.%20Etiam%20dictum%20tortor%20sed%20lorem%20semper%20imperdiet.%20Suspendisse%20fermentum.%22%2C%22icon%22%3A%22sico%20far-file-image%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22How%20to%20improve%20page%20loading%20speed%3F%22%2C%22description%22%3A%22Curabitur%20feugiat%20urna%20ut%20turpis%20tempor%20bibendum.%20Etiam%20dictum%20tortor%20sed%20lorem%20semper%20imperdiet.%20Suspendisse%20fermentum.%22%2C%22icon%22%3A%22sico%20fas-cube%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%7D"></div>`
	}

);
// carousel
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/carousel/carousel01.jpg',
	'category': '801',
	'name': 'carousel01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel01" data-settings="%7B%22style%22%3A%22carousel01%22%2C%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Creative%20Illustration%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img01.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img01-big.jpg%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Crystal%20Deer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img02.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img02-big.jpg%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Bird%20Of%20Paradise%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img03.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img03-big.jpg%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Creative%20Fish%20Tank%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img04.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img04-big.jpg%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Nice%20Screenshot%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img05.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome01%2Fhomepage01-carousel-img05-big.jpg%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%223%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%222%22%2C%22displayxs%22%3A%221%22%2C%22navigation%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel02.jpg',
	'category': '801',
	'name': 'carousel02',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel02" data-settings="%7B%22style%22%3A%22carousel02%22%2C%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Great%20Work%20For%20Mobile%20Devices%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome04%2Fhomepage04-carousel-img01.jpg%22%2C%22singlewidth%22%3A%22320%22%2C%22singleheight%22%3A%22239%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22subtitle%22%3A%22APP%20Design%22%2C%22description%22%3A%22Cras%20pretium%20enim%20et%20dignissim%20cursus%20felis%20quam%20accumsan...%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Beautiful%20Sea%20Tower%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome04%2Fhomepage04-carousel-img02.jpg%22%2C%22singlewidth%22%3A%22320%22%2C%22singleheight%22%3A%22239%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22subtitle%22%3A%22Creative%20Design%22%2C%22description%22%3A%22Vestibulum%20efficitur%20interdum%20scelerisque.%20Vestibulum%20blandit%20sed%20tellus...%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Creative%20Colored%20Ddrawing%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome04%2Fhomepage04-carousel-img03.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22subtitle%22%3A%22Illustration%20Design%22%2C%22description%22%3A%22Quisque%20rutrum%20diam%20sit%20amet%20justo%20convallis%20vestibulum%20nec%20egestas%20odio.%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Guitar-shaped%20Accessory%20%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome04%2Fhomepage04-carousel-img04.jpg%22%2C%22singlewidth%22%3A%22370%22%2C%22singleheight%22%3A%22277%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22subtitle%22%3A%22Creative%20Design%22%2C%22description%22%3A%22Suspendisse%20feugiat%20hendrerit%20sem%2C%20nec%20tincidunt%20nisi%20tempus%20interdum.%20%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%222%22%2C%22displayxl%22%3A%222%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22pagination%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22lazy%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel03.jpg',
	'category': '801',
	'name': 'carousel03',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel03" data-settings="%7B%22style%22%3A%22carousel03%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%2201%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-01.jpg%22%2C%22singlewidth%22%3A%22521%22%2C%22singleheight%22%3A%22651%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-01.jpg%22%7D%2C%22item1%22%3A%7B%22title%22%3A%2202%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-02.jpg%22%2C%22singlewidth%22%3A%22521%22%2C%22singleheight%22%3A%22651%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-02.jpg%22%7D%2C%22item2%22%3A%7B%22title%22%3A%2203%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-03.jpg%22%2C%22singlewidth%22%3A%22521%22%2C%22singleheight%22%3A%22651%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-03.jpg%22%7D%2C%22item3%22%3A%7B%22title%22%3A%2204%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-04.jpg%22%2C%22singlewidth%22%3A%22521%22%2C%22singleheight%22%3A%22651%22%2C%22linktype%22%3A%22image%22%2C%22singlebig%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fhomepage10-section01-04.jpg%22%7D%7D%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel04.jpg',
	'category': '801',
	'name': 'carousel04',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel04" data-settings="%7B%22style%22%3A%22carousel04%22%2C%22text01%22%3A%22Describe%20The%20State%20Of%20Your%20Illness%22%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%224000%22%2C%22description01%22%3A%22Nullam%20id%20congue%20lorem.%20Fusce%20aliquet%20erat%20dapibus%20vestibulum%20ultrices.%22%2C%22single01%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp01%2Fapp01-section05-01.jpg%22%2C%22text02%22%3A%22Online%20Analysis%20Your%20Condition%22%2C%22description02%22%3A%22Morbi%20id%20sapien%20nisl.%20Vivamus%20ultricies%20dignissim%20aliquet.%22%2C%22single02%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp01%2Fapp01-section05-02.jpg%22%2C%22text03%22%3A%22Recommend%20Right%20Doctors%20For%20You%22%2C%22description03%22%3A%22Sed%20fringilla%20enim%20nisi%2C%20eu%20tempus%20est%20convallis%20ac.%22%2C%22single03%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp01%2Fapp01-section05-03.jpg%22%2C%22text04%22%3A%22Choose%20An%20Excellent%20Doctor%20You%20Like%22%2C%22description04%22%3A%22In%20rhoncus%20metus%20eget%20pellentesque%20iaculis.%20Orci%20varius%20natoque%20penatibus%20et%20magnis%20dis%20parturient.%22%2C%22single04%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp01%2Fapp01-section05-04.jpg%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel05.jpg',
	'category': '801',
	'name': 'carousel05',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel05" data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome14%2Fhomepage14-img03.jpg%22%2C%22singlewidth%22%3A%22300%22%2C%22singleheight%22%3A%22400%22%7D%2C%22item1%22%3A%7B%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome14%2Fhomepage14-img04.jpg%22%2C%22singlewidth%22%3A%22300%22%2C%22singleheight%22%3A%22400%22%7D%2C%22item2%22%3A%7B%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome14%2Fhomepage14-img05.jpg%22%2C%22singlewidth%22%3A%22300%22%2C%22singleheight%22%3A%22400%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%221%22%2C%22displayxl%22%3A%221%22%2C%22displayl%22%3A%221%22%2C%22displaym%22%3A%221%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22pagination%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel06.jpg',
	'category': '801',
	'name': 'carousel06',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel06" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Tomato%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Forganicfood%2Forganicfood-section03-img01.png%22%2C%22singlewidth%22%3A%22231%22%2C%22singleheight%22%3A%22179%22%2C%22description%22%3A%22Orci%20varius%20natoque%20penatibus%20et%20magnis%20dis%20parturient%20montes.%22%2C%22pricing%22%3A%22%242.05%22%2C%22butText%22%3A%22MORE%2B%22%2C%22link%22%3A%22%23%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Potato%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Forganicfood%2Forganicfood-section03-img02.png%22%2C%22singlewidth%22%3A%22288%22%2C%22singleheight%22%3A%22179%22%2C%22description%22%3A%22Mauris%20nec%20nibh%20hendrerit%2C%20pretium%20lorem%20non%2C%20aliquet%20nisl.%22%2C%22pricing%22%3A%22%241.99%22%2C%22butText%22%3A%22MORE%2B%22%2C%22link%22%3A%22%23%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Lettuce%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Forganicfood%2Forganicfood-section03-img03.png%22%2C%22singlewidth%22%3A%22300%22%2C%22singleheight%22%3A%22179%22%2C%22description%22%3A%22Nulla%20eros%20mauris%2C%20porta%20eu%20placerat%20et%2C%20rhoncus%20quis%20justo.%22%2C%22pricing%22%3A%22%243.00%22%2C%22butText%22%3A%22MORE%2B%22%2C%22link%22%3A%22%23%22%7D%7D%2C%22pagination%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22displayxs%22%3A%221%22%2C%22displays%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displayl%22%3A%222%22%2C%22displayxl%22%3A%223%22%2C%22displayxxl%22%3A%223%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel07.jpg',
	'category': '801',
	'name': 'carousel07',
	'html': ` <div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="carousel" data-style="carousel07" data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Item%2001%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp02%2Fapp02-img05.jpg%22%2C%22singlewidth%22%3A%22265%22%2C%22singleheight%22%3A%22568%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Item%2002%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp02%2Fapp02-img06.jpg%22%2C%22singlewidth%22%3A%22265%22%2C%22singleheight%22%3A%22568%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Item%2003%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp02%2Fapp02-img07.jpg%22%2C%22singlewidth%22%3A%22265%22%2C%22singleheight%22%3A%22568%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Item%2004%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp02%2Fapp02-img08.jpg%22%2C%22singlewidth%22%3A%22265%22%2C%22singleheight%22%3A%22568%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Item%2005%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp02%2Fapp02-img09.jpg%22%2C%22singlewidth%22%3A%22265%22%2C%22singleheight%22%3A%22568%22%7D%2C%22item5%22%3A%7B%22title%22%3A%22Item%2006%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fapp02%2Fapp02-img07.jpg%22%2C%22singlewidth%22%3A%22265%22%2C%22singleheight%22%3A%22568%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%225%22%2C%22displayxl%22%3A%224%22%2C%22displayl%22%3A%223%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%222%22%2C%22displayxs%22%3A%221%22%2C%22navigation%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel-3d-style01.jpg',
	'category': '801',
	'name': 'carousel-3d-style01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="3d-carousel" data-style="carousel-3d-style01" data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Item%2001%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas2%2Fsaas2-img04.jpg%22%2C%22singlewidth%22%3A%22829%22%2C%22singleheight%22%3A%22570%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Item%2002%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas2%2Fsaas2-img05.jpg%22%2C%22singlewidth%22%3A%22829%22%2C%22singleheight%22%3A%22570%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Item%2003%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas2%2Fsaas2-img06.jpg%22%2C%22singlewidth%22%3A%22829%22%2C%22singleheight%22%3A%22570%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Item%2004%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas2%2Fsaas2-img04.jpg%22%2C%22singlewidth%22%3A%22829%22%2C%22singleheight%22%3A%22570%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%222%22%2C%22displayxl%22%3A%222%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%221%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22autoplay%22%3A%22checked%22%2C%22pagination%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/carousel-3d-style02.jpg',
	'category': '801',
	'name': 'carousel-3d-style02',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="3d-carousel"	data-style="carousel-3d-style02" data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Essential%20Fashion%20Item%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio2%2FdesignStudio2-img03.jpg%22%2C%22singlewidth%22%3A%22780%22%2C%22singleheight%22%3A%22580%22%2C%22description%22%3A%22Fusce%20nec%20est%20justo.%20Etiam%20et%20lorem%20accumsan%2C%20faucibus%20massa%20in%2C%20vehicula%20lectus.%20Mauris%20porta%20suscipit%20suscipit%2C%20sodales%20in%20vestibulum.%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Novel%20Tape%20Measure%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio2%2FdesignStudio2-img04.jpg%22%2C%22singlewidth%22%3A%22780%22%2C%22singleheight%22%3A%22580%22%2C%22description%22%3A%22Fusce%20nec%20est%20justo.%20Etiam%20et%20lorem%20accumsan%2C%20faucibus%20massa%20in%2C%20vehicula%20lectus.%20Mauris%20porta%20suscipit%20suscipit%2C%20sodales%20in%20vestibulum.%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Fashion%20High%20Heels%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio2%2FdesignStudio2-img05.jpg%22%2C%22singlewidth%22%3A%22780%22%2C%22singleheight%22%3A%22580%22%2C%22description%22%3A%22Fusce%20nec%20est%20justo.%20Etiam%20et%20lorem%20accumsan%2C%20faucibus%20massa%20in%2C%20vehicula%20lectus.%20Mauris%20porta%20suscipit%20suscipit%2C%20sodales%20in%20vestibulum.%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Wonderful%20Combination%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio2%2FdesignStudio2-img06.jpg%22%2C%22singlewidth%22%3A%22780%22%2C%22singleheight%22%3A%22580%22%2C%22description%22%3A%22Fusce%20nec%20est%20justo.%20Etiam%20et%20lorem%20accumsan%2C%20faucibus%20massa%20in%2C%20vehicula%20lectus.%20Mauris%20porta%20suscipit%20suscipit%2C%20sodales%20in%20vestibulum.%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22White%20Porcelain%20Mug%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio2%2FdesignStudio2-img07.jpg%22%2C%22singlewidth%22%3A%22780%22%2C%22singleheight%22%3A%22580%22%2C%22description%22%3A%22Fusce%20nec%20est%20justo.%20Etiam%20et%20lorem%20accumsan%2C%20faucibus%20massa%20in%2C%20vehicula%20lectus.%20Mauris%20porta%20suscipit%20suscipit%2C%20sodales%20in%20vestibulum.%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%223%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%222%22%2C%22displayxs%22%3A%221%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22autoplay%22%3A%22checked%22%2C%22navigation%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/carousel/slider-banner.jpg',
	'category': '801',
	'name': 'slider-banner',
	'html': `<div class="custom-module loading" data-effect="slider-banner" data-module-desc="Carousel" id="module-{id}" data-moduleid="{id}" data-html="" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Environmentally%20friendly%20lifestyle%22%2C%22subtitle%22%3A%22Start%20to%20live%20a%20low-carbon%20life%22%2C%22Tag%22%3A%22NEW%22%2C%22description%22%3A%22Curabitur%20eleifend%2C%20turpis%20dignissim%20congue%20dignissim%2C%20purus%20massa%20fringilla%20est%2C%20quis%20auctor%20velit%20sapien%20quis%20velit.%22%2C%22buttontext%22%3A%22Get%20started%22%2C%22link%22%3A%22%23%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Fcarousel-img01.png%22%2C%22singlewidth%22%3A%22459%22%2C%22singleheight%22%3A%22353%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Time%C2%A0is%C2%A0passing%22%2C%22subtitle%22%3A%22Time%C2%A0flies%2C%C2%A0only%20the%C2%A0power%C2%A0for%20ever!%22%2C%22description%22%3A%22Integer%20porttitor%20rutrum%20egestas.%20Vestibulum%20a%20massa%20pharetra%2C%20porttitor%20lacus%20consequat%2C%20ultrices%20ex.%20Donec%20nec%20massa%20orci.%22%2C%22buttontext%22%3A%22Get%20started%22%2C%22link%22%3A%22%23%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Fcarousel-img02.png%22%2C%22singlewidth%22%3A%22459%22%2C%22singleheight%22%3A%22353%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Feel%20good%20about%20life%22%2C%22subtitle%22%3A%22Listen%20quietly%2C%20to%20the%20sound%20of%20your%20heart.%22%2C%22Tag%22%3A%22NEW%22%2C%22description%22%3A%22Duis%20luctus%20justo%20eu%20dignissim%20fermentum.%20Quisque%20finibus%20pellentesque%20turpis%2C%20eu%20rutrum%20elit%20euismod%20sit%20amet.%22%2C%22buttontext%22%3A%22Get%20started%22%2C%22link%22%3A%22%23%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Fcarousel-img03.png%22%2C%22singlewidth%22%3A%22459%22%2C%22singleheight%22%3A%22353%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Rose%20to%20the%20challenge%22%2C%22subtitle%22%3A%22Failure%20is%20the%20mother%20of%20success.%22%2C%22Tag%22%3A%22NEW%22%2C%22description%22%3A%22Sed%20leo%20arcu%2C%20vestibulum%20a%20bibendum%20faucibus%2C%20dictum%20sit%20amet%20diam.%20Duis%20tristique%20turpis%20in%20suscipit%20mattis.%20%22%2C%22buttontext%22%3A%22Get%20started%22%2C%22link%22%3A%22%23%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Fcarousel-img04.png%22%2C%22singlewidth%22%3A%22459%22%2C%22singleheight%22%3A%22353%22%7D%7D%2C%22displayxs%22%3A%221%22%2C%22displays%22%3A%221%22%2C%22displaym%22%3A%221%22%2C%22displayl%22%3A%221%22%2C%22displayxl%22%3A%221.18%22%2C%22displayxxl%22%3A%221.64%22%2C%22pagination%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%228000%22%7D"></div>`})

// Swiper
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/swiper/swiper01.jpg',
	'category': '811',
	'name': 'swiper01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="swiper" data-module-desc="Tab" data-style="swiper01" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22icon%22%3A%22sico%20lnr-shield-check%22%2C%22title%22%3A%22Fitness%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas%2FFitness.jpg%22%2C%22singlewidth%22%3A%22960%22%2C%22singleheight%22%3A%22585%22%7D%2C%22item1%22%3A%7B%22icon%22%3A%22sico%20lnr-clipboard-pencil%22%2C%22title%22%3A%22Invoice%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas%2FInvoice.jpg%22%2C%22singlewidth%22%3A%22960%22%2C%22singleheight%22%3A%22585%22%7D%2C%22item2%22%3A%7B%22icon%22%3A%22sico%20lnr-music-note3%22%2C%22title%22%3A%22Music%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas%2FMusic.jpg%22%2C%22singlewidth%22%3A%22960%22%2C%22singleheight%22%3A%22585%22%7D%2C%22item3%22%3A%7B%22icon%22%3A%22sico%20lnr-cash-dollar%22%2C%22title%22%3A%22Payment%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fsaas%2FPayment.jpg%22%2C%22singlewidth%22%3A%22960%22%2C%22singleheight%22%3A%22585%22%7D%7D%2C%22lazy%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
})


// progressbar
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/progressbar/progressbar01.jpg',
	'category': '802',
	'name': 'progressbar01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-style="progressbar01" data-effect="progressbar" data-settings="%7B%22style%22%3A%22progressbar01%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22JavaScript%22%2C%22progress%22%3A%2295%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22JSON%22%2C%22progress%22%3A%2290%22%2C%22color%22%3A%22rgb(32%2C163%2C252)%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22C%23%22%2C%22progress%22%3A%2292%22%2C%22color%22%3A%22rgb(60%2C179%2C60)%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Bootstrap%22%2C%22progress%22%3A%2285%22%2C%22color%22%3A%22rgb(255%2C110%2C47)%22%7D%7D%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/progressbar/progressbar02.jpg',
	'category': '802',
	'name': 'progressbar02',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-style="progressbar02" data-effect="progressbar" data-settings="%7B%22style%22%3A%22progressbar02%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Web%20Design%22%2C%22progress%22%3A%2292%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22PhotoShop%22%2C%22progress%22%3A%2288%22%2C%22color%22%3A%22%23ff6e2f%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22HTML5%20%26%20CSS3%22%2C%22progress%22%3A%2286%22%2C%22color%22%3A%22%2320a3fd%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22UI%22%2C%22progress%22%3A%2295%22%2C%22color%22%3A%22%233cb33d%22%7D%7D%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/progressbar/progressbar03.jpg',
	'category': '802',
	'name': 'progressbar03',
	'html': ` <div class="custom-module mb-10 loading" id="module-{id}" data-moduleid="{id}" data-style="progressbar03" data-effect="progressbar" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Web%20Design%22%2C%22progress%22%3A%2292%22%2C%22color%22%3A%22%23523ee8%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22PhotoShop%22%2C%22progress%22%3A%2288%22%2C%22color%22%3A%22%23fb7c35%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22HTML5%20%26%20CSS3%22%2C%22progress%22%3A%2286%22%2C%22color%22%3A%22%231abc9c%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22UI%22%2C%22progress%22%3A%2295%22%2C%22color%22%3A%22%231fa4e8%22%7D%7D%7D"></div>`
})


// testimonials
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/testimonials/testimonials01.jpg',
	'category': '803',
	'name': 'testimonials01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials01" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome03%2Fhomepage03-testimonials01.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions.%5Cn%22%2C%22rating%22%3A%225%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Harry%20Brown%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome03%2Fhomepage03-testimonials02.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22Great%20package!%20The%20support%20is%20outstanding.%20Courteous%2C%20prompt%20and%20very%20helpful.%20We%20are%20very%20happy%20with%20everything%22%2C%22rating%22%3A%225%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Ross%20Williams%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome03%2Fhomepage03-testimonials03.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22They%20surprised%20us%20with%20their%20innovative%20products%20every%20time.%20We%20have%20been%20enjoying%20their%20great%20skins%2C%20modules%20and%20services%20all%20the%20time%22%2C%22rating%22%3A%225%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Marcy%20Carsey%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome03%2Fhomepage03-testimonials04.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22Whenever%20we%20reach%20out%20them%20to%20help%20us%20solving%20some%20issues%2C%20they%20have%20everything%20corrected%20very%20fast.%20Best%20customer%20service%20ever!%22%2C%22rating%22%3A%225%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22David%20Smith%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome03%2Fhomepage03-testimonials05.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22They%20use%20advanced%20concept%20and%20fashionable%20elements%20to%20our%20project%2C%20delivering%20us%20a%20wonderful%20and%20imaginative%20website.%22%2C%22rating%22%3A%225%22%7D%7D%2C%22categorys%22%3A%22Electronics%2COffice%20Supply%2CPlant%2CSweets%22%2C%22style%22%3A%22testimonials01%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22autoplay%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials02.jpg',
	'category': '803',
	'name': 'testimonials02',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials02" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%20%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials01.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions.%5Cn%22%2C%22rating%22%3A%225%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Lillie%20Alberda%22%2C%22job%22%3A%22Project%20Manager%20%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials02.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22Great%20package!%20The%20support%20is%20outstanding.%20Courteous%2C%20prompt%20and%20very%20helpful.%20We%20are%20very%20happy%20with%20everything%22%2C%22rating%22%3A%225%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Keenan%20Medlar%22%2C%22job%22%3A%22Finance%20Executive%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials03.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22They%20surprised%20us%20with%20their%20innovative%20products%20every%20time.%20We%20have%20been%20enjoying%20their%20great%20skins%2C%20modules%20and%20services%20all%20the%20time%22%2C%22rating%22%3A%225%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22George%20Doe%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials04.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22Whenever%20we%20reach%20out%20them%20to%20help%20us%20solving%20some%20issues%2C%20they%20have%20everything%20corrected%20very%20fast.%20Best%20customer%20service%20ever!%22%2C%22rating%22%3A%225%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Vince%20Mcman%22%2C%22job%22%3A%22Finance%20Executive%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials05.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22They%20use%20advanced%20concept%20and%20fashionable%20elements%20to%20our%20project%2C%20delivering%20us%20a%20wonderful%20and%20imaginative%20website.%22%2C%22rating%22%3A%225%22%7D%7D%2C%22categorys%22%3A%22Electronics%2COffice%20Supply%2CPlant%2CSweets%22%2C%22style%22%3A%22testimonials02%22%2C%22displayxxl%22%3A%222%22%2C%22displayxl%22%3A%222%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%223000%22%2C%22lazy%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials03.jpg',
	'category': '803',
	'name': 'testimonials03',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials03" data-settings="%7B%22style%22%3A%22testimonials03%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Ross%20Williams%22%2C%22job%22%3A%22Faithful%20client%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome09%2Fhomepage09-section05-01.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22They%20surprised%20us%20with%20their%20innovative%20products%20every%20time.%20We%20have%20been%20enjoying%20their%20great%20skins%2C%20modules%20and%20services%20all%20the%20time.%5Cn%22%2C%22rating%22%3A%225%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%22%2C%22job%22%3A%22Faithful%20client%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome09%2Fhomepage09-section05-02.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22This%20is%20really%20a%20great%20package!%20The%20support%20provided%20is%20outstanding.%20Also%2C%20they%20are%20courteous%2C%20prompt%20and%20very%20helpful.%20We%20are%20very%20happy%20with%20everything.%22%2C%22rating%22%3A%225%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Harry%20Brown%22%2C%22job%22%3A%22Faithful%20client%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome09%2Fhomepage09-section05-03.jpg%22%2C%22singlewidth%22%3A%2292%22%2C%22singleheight%22%3A%2292%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions%2C%20they%20are%20a%20great%20helper%20to%20us.%22%2C%22rating%22%3A%225%22%7D%7D%2C%22autoplay%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials04.jpg',
	'category': '803',
	'name': 'testimonials04',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials04" data-settings="%7B%22style%22%3A%22testimonials04%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Jennifer%20Lee%22%2C%22job%22%3A%22Marketing%20Manager%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Four-team%2Fourteam-pic09.jpg%22%2C%22singlewidth%22%3A%22108%22%2C%22singleheight%22%3A%22108%22%2C%22description%22%3A%22Pellentesque%20aliquam%20metus%20vitae%20odio%20placerat%20rutrum.%20Curabitur%20placerat%20iaculis%20tortor%20at%20fermentum.%20Donec%20aliquet%20nunc%20est%2C%20non%20tincidunt%20tortor%20ultrices%20vitae.%20Integer%20sollicitudin%20ex%20nec%20blandit%20aliquet.%20Nam%20sollicitudin%20orci%20a%20dolor%20vestibulum%2C%20ut%20venenatis%20enim%20sagittis.%20Curabitur%20sollicitudin%20fringilla%20auctor.%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Elizabeth%20Green%22%2C%22job%22%3A%22Project%20Manager%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Four-team%2Fourteam-pic10.jpg%22%2C%22singlewidth%22%3A%22108%22%2C%22singleheight%22%3A%22108%22%2C%22description%22%3A%22Cras%20eget%20est%20in%20sapien%20pulvinar%20tincidunt.%20Praesent%20ac%20lacus%20mollis%2C%20imperdiet%20erat%20sed%2C%20varius%20enim.%20Donec%20pulvinar%20hendrerit%20tempus.%20Suspendisse%20vel%20nibh%20dapibus%20diam%20euismod%20luctus%20at%20suscipit%20elit.%20Nam%20sit%20amet%20hendrerit%20neque.%20Donec%20blandit%2C%20leo%20non%20sagittis%20ultricies%2C%20nulla%20eros%20aliquet%20justo.%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Yannick%20Noah%22%2C%22job%22%3A%22Finance%20Executive%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Four-team%2Fourteam-pic11.jpg%22%2C%22singlewidth%22%3A%22108%22%2C%22singleheight%22%3A%22108%22%2C%22description%22%3A%22%20Aenean%20malesuada%20pretium%20eros%2C%20et%20mattis%20velit%20rhoncus%20et.%20Aliquam%20sed%20arcu%20in%20mi%20pellentesque%20sollicitudin.%20Sed%20ut%20consectetur%20orci%2C%20quis%20tempor%20odio.%20Pellentesque%20ante%20dolor%2C%20imperdiet%20in%20volutpat%20sit%20amet%2C%20venenatis%20quis%20orci.%20Phasellus%20efficitur%20consectetur%20mauris%2C%20ac%20ullamcorper%20diam%20semper%20et.%20%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Lily%20Watson%22%2C%22job%22%3A%22Finance%20Executive%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Four-team%2Fourteam-pic12.jpg%22%2C%22singlewidth%22%3A%22108%22%2C%22singleheight%22%3A%22108%22%2C%22description%22%3A%22Mauris%20varius%20dolor%20in%20mi%20rutrum%2C%20ut%20tincidunt%20tellus%20lacinia.%20Etiam%20sed%20rhoncus%20justo%2C%20vitae%20fermentum%20leo.%20In%20faucibus%20rutrum%20lorem%2C%20ac%20bibendum%20mauris%20malesuada%20sed.%20Nullam%20mollis%20eleifend%20commodo.%20Morbi%20vel%20pulvinar%20lorem%2C%20id%20cursus%20mauris.%20Proin%20pharetra%20iaculis%20elit%2C%20non%20consequat%20risus%20luctus%20ut.%20%22%7D%7D%2C%22autoplay%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials05.jpg',
	'category': '803',
	'name': 'testimonials05',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials05" data-settings="%7B%22style%22%3A%22testimonials05%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22David%20Smith%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome11%2Fhomepage11-img06.jpg%22%2C%22singlewidth%22%3A%22145%22%2C%22singleheight%22%3A%22145%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions.%5Cn%22%2C%22rating%22%3A%225%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Marcy%20Carsey%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome11%2Fhomepage11-img07.jpg%22%2C%22singlewidth%22%3A%22145%22%2C%22singleheight%22%3A%22145%22%2C%22description%22%3A%22Outstanding%20theme%20-%20lots%20of%20features%20and%20great%20designs%2Ftemplates.%20Also%2C%20support%20is%20excellent!%20Probably%20the%20best%20I've%20worked%20with.%22%2C%22rating%22%3A%225%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Ross%20Williams%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome11%2Fhomepage11-img08.jpg%22%2C%22singlewidth%22%3A%22145%22%2C%22singleheight%22%3A%22145%22%2C%22description%22%3A%22I'm%20a%20big%20fan%20of%20this%20company%20and%20all%20of%20their%20products%2C%20this%20is%20no%20exception.%20I%20experienced%20impeccable%20support%2C%20the%20skin%20is%20cutting%20edge%2C%20with%20plenty%20of%20choices%20and%20options.%22%2C%22rating%22%3A%225%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Harry%20Brown%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome11%2Fhomepage11-img09.jpg%22%2C%22singlewidth%22%3A%22145%22%2C%22singleheight%22%3A%22145%22%2C%22description%22%3A%22This%20theme%20is%20versatile%20and%20fun!%20Lots%20of%20possibilities%20to%20customize.%20My%20client%20is%20so%20happy%20with%20the%20website%20I%20built%20for%20them%20using%20this%20theme.%20%22%2C%22rating%22%3A%225%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome11%2Fhomepage11-img10.jpg%22%2C%22singlewidth%22%3A%22145%22%2C%22singleheight%22%3A%22145%22%2C%22description%22%3A%22Excellent%20theme.%20All%20of%20the%20themes%20I%20have%20purchased%20from%20dnngo%20are%20feature%20rich%20and%20extremely%20well%20put%20together.%20Their%20customer%20service%20is%20top%20notch.%20%22%2C%22rating%22%3A%225%22%7D%7D%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials06.jpg',
	'category': '803',
	'name': 'testimonials06',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials06" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome14%2Fhomepage14-img13.png%22%2C%22singlewidth%22%3A%2268%22%2C%22singleheight%22%3A%2268%22%2C%22description%22%3A%22Whenever%20we%20reach%20out%20them%20to%20help%20us%20solving%20some%20issues%2C%20they%20have%20everything%20corrected%20very%20fast.%22%2C%22date%22%3A%22Aprilr%2015%2C%202019%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Marcy%20Carsey%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome14%2Fhomepage14-img14.png%22%2C%22singlewidth%22%3A%2268%22%2C%22singleheight%22%3A%2268%22%2C%22description%22%3A%22Excellent%20theme.%20All%20of%20the%20themes%20I%20have%20purchased%20from%20dnngo%20are%20feature%20rich%20and%20extremely%20well%20put%20together.%22%2C%22date%22%3A%22Aprilr%2015%2C%202019%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Ross%20Williams%22%2C%22job%22%3A%22CEO%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome14%2Fhomepage14-img15.png%22%2C%22singlewidth%22%3A%2268%22%2C%22singleheight%22%3A%2268%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions.%22%2C%22date%22%3A%22Aprilr%2015%2C%202019%22%7D%7D%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%223%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%222%22%2C%22displayxs%22%3A%221%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22lazy%22%3A%22checked%22%2C%22navigation%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials07.jpg',
	'category': '803',
	'name': 'testimonials07',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials07" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Winifred%20%22%2C%22job%22%3A%22Freelancer%22%2C%22description%22%3A%22Nulla%20pulvinar%20quam%20sit%20amet%20quam%20mattis%2C%20sit%20amet%20sagittis%20ipsum%20finibus.%20Vestibulum%20ante%20ipsum%20primis%20in%20faucibus%20orci%20luctus%20et%20ultrices.%20Morbi%20ut%20ultrices%20libero.%20Aenean%20eu%20elit%20a%20nibh%20porttitor%20bibendum.%20%22%2C%22rating%22%3A%225%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%22%2C%22job%22%3A%22Faithful%20client%22%2C%22description%22%3A%22This%20is%20really%20a%20great%20package!%20The%20support%20provided%20is%20outstanding.%20Also%2C%20they%20are%20courteous%2C%20prompt%20and%20very%20helpful.%20We%20are%20very%20happy%20with%20everything.%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%22%2C%22rating%22%3A%225%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Harry%20Brown%22%2C%22job%22%3A%22Faithful%20client%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions%2C%20they%20are%20a%20great%20helper%20to%20us.%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%22%2C%22rating%22%3A%225%22%7D%7D%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials08.jpg',
	'category': '803',
	'name': 'testimonials08',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials08" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Ross%20Williams%22%2C%22job%22%3A%22Faithful%20client%22%2C%22description%22%3A%22They%20surprised%20us%20with%20their%20innovative%20products%20every%20time.%20We%20have%20been%20enjoying%20their%20great%20skins%2C%20modules%20and%20services%20all%20the%20time.%5Cn%22%2C%22rating%22%3A%225%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%22%2C%22job%22%3A%22Faithful%20client%22%2C%22description%22%3A%22This%20is%20really%20a%20great%20package!%20The%20support%20provided%20is%20outstanding.%20Also%2C%20they%20are%20courteous%2C%20prompt%20and%20very%20helpful.%20We%20are%20very%20happy%20with%20everything.%22%2C%22rating%22%3A%225%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Harry%20Brown%22%2C%22job%22%3A%22Faithful%20client%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions%2C%20they%20are%20a%20great%20helper%20to%20us.%22%2C%22rating%22%3A%225%22%7D%7D%2C%22autoplay%22%3A%22checked%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/testimonials/testimonials10.jpg',
	'category': '803',
	'name': 'testimonials10',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="testimonials" data-style="testimonials10" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Jennifer%20Freeman%20%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials01.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22Easy%20module%20to%20work%20with%2C%20awesome%20addition%20to%20any%20website.%20And%20their%20always%20quick%20to%20respond%20to%20any%20support%20questions.%5Cn%22%2C%22icon%22%3A%22sico%20fab-twitter%22%2C%22iconlink%22%3A%22%23%22%2C%22icon2%22%3A%22sico%20fab-pinterest-p%22%2C%22iconlink2%22%3A%22%23%22%2C%22icon3%22%3A%22sico%20fab-linkedin-in%22%2C%22iconlink3%22%3A%22%23%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Lillie%20Alberda%22%2C%22job%22%3A%22Project%20Manager%20%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials02.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22Great%20package!%20The%20support%20is%20outstanding.%20Courteous%2C%20prompt%20and%20very%20helpful.%20We%20are%20very%20happy%20with%20everything%22%2C%22icon%22%3A%22sico%20fab-twitter%22%2C%22iconlink%22%3A%22%23%22%2C%22icon2%22%3A%22sico%20fab-pinterest-p%22%2C%22iconlink2%22%3A%22%23%22%2C%22icon3%22%3A%22sico%20fab-linkedin-in%22%2C%22iconlink3%22%3A%22%23%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Keenan%20Medlar%22%2C%22job%22%3A%22Finance%20Executive%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials03.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22They%20surprised%20us%20with%20their%20innovative%20products%20every%20time.%20We%20have%20been%20enjoying%20their%20great%20skins%2C%20modules%20and%20services%20all%20the%20time%22%2C%22icon%22%3A%22sico%20fab-twitter%22%2C%22iconlink%22%3A%22%23%22%2C%22icon2%22%3A%22sico%20fab-pinterest-p%22%2C%22iconlink2%22%3A%22%23%22%2C%22icon3%22%3A%22sico%20fab-linkedin-in%22%2C%22iconlink3%22%3A%22%23%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22George%20Doe%22%2C%22job%22%3A%22Free-lancer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials04.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22Whenever%20we%20reach%20out%20them%20to%20help%20us%20solving%20some%20issues%2C%20they%20have%20everything%20corrected%20very%20fast.%20Best%20customer%20service%20ever!%22%2C%22icon%22%3A%22sico%20fab-twitter%22%2C%22iconlink%22%3A%22%23%22%2C%22icon2%22%3A%22sico%20fab-pinterest-p%22%2C%22iconlink2%22%3A%22%23%22%2C%22icon3%22%3A%22sico%20fab-linkedin-in%22%2C%22iconlink3%22%3A%22%23%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Vince%20Mcman%22%2C%22job%22%3A%22Finance%20Executive%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome05%2Fhomepage05-testimonials05.jpg%22%2C%22singlewidth%22%3A%2296%22%2C%22singleheight%22%3A%2296%22%2C%22description%22%3A%22They%20use%20advanced%20concept%20and%20fashionable%20elements%20to%20our%20project%2C%20delivering%20us%20a%20wonderful%20and%20imaginative%20website.%22%2C%22icon%22%3A%22sico%20fab-twitter%22%2C%22iconlink%22%3A%22%23%22%2C%22icon2%22%3A%22sico%20fab-pinterest-p%22%2C%22iconlink2%22%3A%22%23%22%2C%22icon3%22%3A%22sico%20fab-linkedin-in%22%2C%22iconlink3%22%3A%22%23%22%7D%7D%2C%22categorys%22%3A%22Electronics%2COffice%20Supply%2CPlant%2CSweets%22%2C%22displayxxl%22%3A%222%22%2C%22displayxl%22%3A%222%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%223000%22%2C%22lazy%22%3A%22checked%22%2C%22linktarget%22%3A%22_self%22%7D"></div>`
})

//counter-01
data_basic.snippets.push({
		'thumbnail': 'minis-shortcode/counter/counter01.jpg',
		'category': '805',
		'name': 'counter-01',
		'html': `<div class="row">
    <div class="col-md-3">
        <div class="counter-01">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%22278%22%7D"></div>
                <p>Quality projects</p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="spacer height-40 d-md-none"></div>
        <div class="counter-01">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id2}%22%2C%22number%22%3A%22300%22%7D"></div>
                <p>Cooperative clients</p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="spacer height-40 d-md-none"></div>
        <div class="counter-01">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id3}%22%2C%22number%22%3A%22150%22%7D"></div>
                <p>Certificate of honor</p>
            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="spacer height-40 d-md-none"></div>
        <div class="counter-01">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id4}" data-moduleid="{id4}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id4}%22%2C%22number%22%3A%22120%22%7D"></div>
                <p>Available services</p>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="counter-01">${csstemplate["counter-01"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter02.jpg',
		'category': '805',
		'name': 'counter-02',
		'html': `
	<div class="row">
    <div class="col-md-3 col-sm-6">
        <div class="counter-02">
            <div class="box-icon"><i class="sico lnr-user"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%2213605%22%7D"></div>
                <h6 class="subtitle">Clients</h6>
            </div>
        </div>
        <div class="spacer height-40 d-md-none"></div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="counter-02">
            <div class="box-icon"><i class="sico lnr-library"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22number%22%3A%2214200%22%7D"></div>
                <h6 class="subtitle">Projects</h6>
            </div>
        </div>
        <div class="spacer height-40 d-md-none"></div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="counter-02">
            <div class="box-icon"><i class="sico lnr-trophy"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22number%22%3A%223200%22%7D"></div>
                <h6 class="subtitle">Awards</h6>
            </div>
        </div>
        <div class="spacer height-40 d-sm-none"></div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="counter-02">
            <div class="box-icon"><i class="sico lnr-diamond2"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id4}" data-moduleid="{id4}" data-effect="Number" data-settings="%7B%22number%22%3A%2212850%22%7D"></div>
                <h6 class="subtitle">Praise</h6>
            </div>
        </div>
    </div>
</div>
	<style class="build-css" data-class="counter-02">${csstemplate["counter-02"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter03.jpg',
		'category': '805',
		'name': 'counter-03',
		'html': `
	<div class="row">
    <div class="col-md-4">
        <div class="counter-03">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%22278%22%7D"></div>
                <p>Projects</p>
            </div>
        </div>

    </div>
    <div class="col-md-4">
        <div class="counter-03">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22number%22%3A%22300%22%7D"></div>
                <p>Clients</p>
            </div>
        </div>

    </div>
    <div class="col-md-4">
        <div class="counter-03">
            <div class="box-title">
                <div class="custom-module loading" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22number%22%3A%22120%22%7D"></div>
                <p>Honor</p>
            </div>
        </div>
    </div>
</div>	<style class="build-css" data-class="counter-03">${csstemplate["counter-03"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter05.jpg',
		'category': '805',
		'name': 'counter-05',
		'html': `
	<div class="row">
    <div class="col-md-6">
        <div class="counter-05">
            <p class="custom-module loading color-accent" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22Er8jgI%22%2C%22number%22%3A%22286%22%7D"></p>
            <h6 class="title">Creative projects</h6>
            <p>Aliquam tristique dignissim justo, hen drerit nibh consequat ac.</p>
        </div>
    </div>
    <div class="col-md-6">
        <div class="counter-05">
            <p style="color:#fc7b35" class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number"  data-settings="%7B%22moduleid%22%3A%22dcbJdl%22%2C%22number%22%3A%22270%22%7D"></p>
            <h6 class="title">Good rate</h6>
            <p>Suspendisse molestie et leo vitaealqu amaugue sapien lectus.</p>
        </div>
    </div>
</div>
	<style class="build-css" data-class="counter-05">${csstemplate["counter-05"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter07.jpg',
		'category': '805',
		'name': 'counter-07',
		'html': `
	<div class="row">
    <div class="col-md-6">
        <div class="counter-07">
            <i class="icon sico lnr-cube"></i>
            <span class="custom-module loading color-accent" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%22280%22%7D"></span>

            <h6 class="title">Quality Projects</h6>
        </div>
    </div>
    <div class="col-md-6">
        <div class="counter-07">
            <i class="icon sico lnr-trophy"></i>
            <span class="custom-module loading color-accent" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22number%22%3A%22150%22%7D"></span>
            <h6 class="title">Certificate Of Honor</h6>
        </div>
    </div>
</div>
	<style class="build-css" data-class="counter-07">${csstemplate["counter-07"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter06.jpg',
		'category': '805',
		'name': 'counter-06',
		'html': `
	<div class="row">

    <div class="col-md-3 col-6">
        <div class="counter-06">
            <div class="box-title">
                <div class="custom-module loading color-accent" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%22278%22%7D"></div>
                <p>5 Star<br>Rating</p>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-6">
        <div class="counter-06">
            <div class="box-title">
                <div class="custom-module loading color-accent" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22number%22%3A%22300%22%7D"></div>
                <p>Happy<br>Users</p>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-6 pt-20 pt-md-0">
        <div class="counter-06">
            <div class="box-title">
                <div class="custom-module loading color-accent" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22number%22%3A%22360%22%7D"></div>
                <p>Download<br>App</p>
            </div>
        </div>
    </div>
    <div class="col-md-3 col-6 pt-20 pt-md-0">
        <div class="counter-06">
            <div class="box-title">
                <div class="custom-module loading color-accent" id="module-{id4}" data-moduleid="{id4}" data-effect="Number" data-settings="%7B%22number%22%3A%2210%22%7D"></div>
                <p>Best<br>Awards</p>
            </div>
        </div>
    </div>

</div>
	<style class="build-css" data-class="counter-06">${csstemplate["counter-06"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter04.jpg',
		'category': '805',
		'name': 'counter-04',
		'html': `
	<div class="row counter-04">
    <div class="col-md-3">
        <div class="box-title">
            <div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22K6Q4X7%22%2C%22number%22%3A%22278%22%7D"></div>
            <span class="plus">+</span>
        </div>
        <p>Creative projects</p>
    </div>
    <div class="col-md-3">
        <div class="box-title">
            <div class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%229eRL6Y%22%2C%22number%22%3A%2215%22%7D"></div>
            <span class="plus">+</span>
        </div>
        <p>Certificates of honor</p>
    </div>
    <div class="col-md-3">
        <div class="box-title">
            <div class="custom-module loading" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22OwTceq%22%2C%22number%22%3A%2210%22%7D"></div>
            <span class="plus">+</span>
        </div>
        <p>Work experience</p>
    </div>
    <div class="col-md-3">
        <div class="box-title">
            <div class="custom-module loading" id="module-{id4}" data-moduleid="{id4}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%2289GBTw%22%2C%22number%22%3A%22270%22%7D"></div>
            <span class="plus">+</span>
        </div>
        <p>Good rate</p>
    </div>
</div>
	<style class="build-css" data-class="counter-04">${csstemplate["counter-04"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter08.jpg',
		'category': '805',
		'name': 'counter-08',
		'html': `
	<div class="row">
		<div class="col-md-4 mb-30 mb-md-0">
			<div class="counter-08">
				<div class="box-title">
					<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%2220%22%7D"></div>
					<span class="plus">+</span>
				</div>
				<p>Years Experience</p>
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section01-img01.png" />
			</div>
		</div>
		<div class="col-sm-6 col-md-4 mb-30 mb-sm-0">
			<div class="counter-08">
				<div class="box-title">
					<div class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%22120%22%7D"></div>
					<span class="plus">+</span>
				</div>
				<p>Cooperative Supermarkets</p>
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section01-img02.png" />
			</div>
		</div>
		<div class="col-sm-6 col-md-4">
			<div class="counter-08">
				<div class="box-title">
					<div class="custom-module loading" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%2295%22%7D"></div>
					<span class="plus">+</span>
				</div>
				<p>Expert Members</p>
				<img src="/Portals/_default/ContentBuilder/minis-page/organicfood/organicfood-section01-img03.png" />
			</div>
		</div>
	</div>
	<style class="build-css" data-class="counter-08">${csstemplate["counter-08"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter09.jpg',
		'category': '805',
		'name': 'counter-09',
		'html': `
	<div class="row">
    <div class="col-md-3">
		<div class="counter-09">
		<div class="icon"><i class="sico lnr-user"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%2213605%22%7D"></div>
                <h6 class="subtitle">Clients</h6>
            </div>
        </div>

    </div>
    <div class="col-md-3">
		<div class="counter-09">
		<div class="icon"><i class="sico lnr-library"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id2}" data-moduleid="{id2}" data-effect="Number" data-settings="%7B%22number%22%3A%2214200%22%7D"></div>
				<h6 class="subtitle">Projects</h6>
            </div>
        </div>

    </div>
    <div class="col-md-3">
		<div class="counter-09">
			<div class="icon"><i class="sico lnr-trophy"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id3}" data-moduleid="{id3}" data-effect="Number" data-settings="%7B%22number%22%3A%223200%22%7D"></div>
                <h6 class="subtitle">Awards</h6>
            </div>
        </div>
	</div>
	<div class="col-md-3">
		<div class="counter-09">
			<div class="icon"><i class="sico lnr-diamond2"></i></div>
            <div class="box-title">
                <div class="custom-module loading" id="module-{id4}" data-moduleid="{id4}" data-effect="Number" data-settings="%7B%22number%22%3A%2212850%22%7D"></div>
                <h6 class="subtitle">Praise</h6>
            </div>
        </div>
    </div>
</div>	<style class="build-css" data-class="counter-09">${csstemplate["counter-09"]}</style>`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter11.jpg',
		'category': '805',
		'name': 'counter-11',
		'html': ` <div class="counter-11">
	<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-img02.png" class="img-Lazy">
	<div class="counter-box">
		<div class="custom-module loading" id="module-hT1RcUq" data-moduleid="hT1RcUq" data-effect="Number" data-html="false" data-noedit="true" data-module-desc="Number" data-module="shortcode" data-settings="%7B%22number%22%3A%22156%22%7D"></div>
		<p class="title">Download App</p>
		<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon08.png" class="img-Lazy">
	</div>
	<div class="counter-box box-right">
		<div class="custom-module loading" id="module-ZtYCPwo" data-moduleid="ZtYCPwo" data-effect="Number" data-html="false" data-noedit="true" data-module-desc="Number" data-module="shortcode" data-settings="%7B%22number%22%3A%2210%22%7D"></div>
		<p class="title">Best Awards</p>
		<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon07.png" class="img-Lazy">
	</div>
</div>
<style class="build-css" data-class="counter-11">${csstemplate["counter-11"]}</style>
`
	}, {
		'thumbnail': 'minis-shortcode/counter/counter12.jpg',
		'category': '805',
		'name': 'counter-12',
		'html': `<div class="row">
		<div class="col-md-4">
			<div class="counter-12">
				<div class="custom-module color-accent loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%22800%22%7D"></div>
				<h6 class="title">Projects</h6>
			</div>
		</div>
		<div class="col-md-4">
			<div class="counter-12">
				<div class="custom-module color-accent loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%223256%22%7D"></div>
				<h6 class="title">Clients</h6>
			</div>
		</div>
		<div class="col-md-4">
			<div class="counter-12">
				<div class="custom-module color-accent loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%222610%22%7D"></div>
				<h6 class="title">Praises</h6>
			</div>
		</div>
	</div>
	<style class="build-css" data-class="counter-12">${csstemplate["counter-12"]}</style>
	`}, {
		'thumbnail': 'minis-shortcode/counter/counter13.jpg',
		'category': '805',
		'name': 'counter-13',
		'html': `<div class="row">
		<div class="col-md-6 col-lg-3">
			<div class="counter-13">
				<i class="icon sico lnr-archery"><svg>
						<use xlink:href="#lnr-archery"></use>
					</svg></i>
				<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%223256%22%7D"></span>
				<h6 class="title">Successful Projects</h6>
			</div>
		</div>
		<div class="col-md-6 col-lg-3">
			<div class="counter-13">
				<i class="icon sico lnr-trophy"><svg>
						<use xlink:href="#lnr-trophy"></use>
					</svg></i>
				<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%22132%22%7D"></span>
				<h6 class="title">Awards Winning</h6>
			</div>
		</div>
		<div class="col-md-6 col-lg-3">
			<div class="counter-13">
				<i class="icon sico lnr-user"><svg>
						<use xlink:href="#lnr-user"></use>
					</svg></i>
				<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%2213678%22%7D"></span>
				<h6 class="title">Satisfied Clients</h6>
			</div>
		</div>
		<div class="col-md-6 col-lg-3">
			<div class="counter-13">
				<i class="icon sico lnr-thumbs-up"><svg>
						<use xlink:href="#lnr-thumbs-up"></use>
					</svg></i>
				<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-settings="%7B%22number%22%3A%2226150%22%7D"></span>
				<h6 class="title">Wonderful Praises</h6>
			</div>
		</div>
	</div>	<style class="build-css" data-class="counter-13">${csstemplate["counter-13"]}</style>
	`}, {
		'thumbnail': 'minis-shortcode/counter/counter15.jpg',
		'category': '805',
		'name': 'counter-15',
		'html': `
		<div class="row justify-content-center">
			<div class="col-8 col-md-6 col-lg-3">
				<div class="counter-15">
					<i class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-icon01.png" alt="" class="img-Lazy"></i>
					<div class="cont">
						<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-html="false" data-noedit="true" data-module-desc="Number" data-module="shortcode" data-settings="%7B%22number%22%3A%2213605%22%7D"></span>
						<h6 class="title">Clients</h6>
					</div>
				</div>
				<div class="spacer height-40"></div>
			</div>
			<div class="col-8 col-md-6 col-lg-3">
				<div class="counter-15">
					<i class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-icon02.png" alt="" class="img-Lazy"></i>
					<div class="cont">
						<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-html="false" data-noedit="true" data-module-desc="Number" data-module="shortcode" data-settings="%7B%22number%22%3A%2214200%22%7D"></span>
						<h6 class="title">Projects</h6>
					</div>
				</div>
				<div class="spacer height-40"></div>
			</div>
			<div class="col-8 col-md-6 col-lg-3">
				<div class="counter-15">
					<i class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-icon03.png" alt="" class="img-Lazy"></i>
					<div class="cont">
						<span class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-html="false" data-noedit="true" data-module-desc="Number" data-module="shortcode" data-settings="%7B%22number%22%3A%223200%22%7D"></span>
						<h6 class="title">Awards</h6>
					</div>
				</div>
				<div class="spacer height-40"></div>
			</div>
			<div class="col-8 col-md-6 col-lg-3">
				<div class="counter-15">
					<i class="icon">
						<img src="/Portals/_default/ContentBuilder/minis-page/our-team02/ourTeam02-icon04.png" alt="" class="img-Lazy"></i>
					<div class="cont">
						<span class="custom-module d-custom-active loading" id="module-{id}" data-moduleid="{id}" data-effect="Number" data-html="false" data-noedit="true" data-module-desc="Number" data-module="shortcode" data-settings="%7B%22number%22%3A%2212850%22%7D"></span>
						<h6 class="title">Praise</h6>
					</div>
				</div>
				<div class="spacer height-40"></div>
			</div>
		</div>
		<style class="build-css" data-class="counter-15">${csstemplate["counter-15"]}</style>
	`}
)



// countdown
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/countdown/countdown01.jpg',
	'category': '806',
	'name': 'countdown-01',
	'html': `<div class="custom-module loading" data-style="countdown-01" data-effect="soon" data-module-desc="Coming soon" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%224444%22%2C%22format%22%3A%22d%2Ch%2Cm%2Cs%22%2C%22years%22%3A%22Y%22%2C%22months%22%3A%22MM%22%2C%22weeks%22%3A%22W%22%2C%22days%22%3A%22Days%22%2C%22hours%22%3A%22Hours%22%2C%22minutes%22%3A%22Minutes%22%2C%22seconds%22%3A%22Seconds%22%2C%22milliseconds%22%3A%22SS%22%2C%22date%22%3A%22monday%20at%2023%3A55%22%2C%22style%22%3A%22countdown-01%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/countdown/countdown02.jpg',
	'category': '806',
	'name': 'countdown-02',
	'html': `<div class="custom-module loading" data-style="countdown-02" data-effect="soon" data-module-desc="Coming soon" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%224444%22%2C%22format%22%3A%22d%2Ch%2Cm%2Cs%22%2C%22years%22%3A%22Y%22%2C%22months%22%3A%22MM%22%2C%22weeks%22%3A%22W%22%2C%22days%22%3A%22Days%22%2C%22hours%22%3A%22Hours%22%2C%22minutes%22%3A%22Minutes%22%2C%22seconds%22%3A%22Seconds%22%2C%22milliseconds%22%3A%22SS%22%2C%22date%22%3A%22monday%20at%2023%3A55%22%2C%22style%22%3A%22countdown-02%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/countdown/countdown03.jpg',
	'category': '806',
	'name': 'countdown-03',
	'html': `<div class="custom-module loading" data-style="countdown-03" data-effect="soon" data-module-desc="Coming soon" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%224444%22%2C%22format%22%3A%22d%2Ch%2Cm%2Cs%22%2C%22years%22%3A%22Y%22%2C%22months%22%3A%22MM%22%2C%22weeks%22%3A%22W%22%2C%22days%22%3A%22Days%22%2C%22hours%22%3A%22Hours%22%2C%22minutes%22%3A%22Minutes%22%2C%22seconds%22%3A%22Seconds%22%2C%22milliseconds%22%3A%22SS%22%2C%22date%22%3A%22monday%20at%2023%3A55%22%2C%22style%22%3A%22countdown-03%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/countdown/countdown04.jpg',
	'category': '806',
	'name': 'countdown-04',
	'html': `<div class="custom-module loading" data-style="countdown-04" data-effect="soon" data-module-desc="Coming soon" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22moduleid%22%3A%22{id}%22%2C%22number%22%3A%224444%22%2C%22format%22%3A%22d%2Ch%2Cm%2Cs%22%2C%22years%22%3A%22Y%22%2C%22months%22%3A%22MM%22%2C%22weeks%22%3A%22W%22%2C%22days%22%3A%22Days%22%2C%22hours%22%3A%22Hours%22%2C%22minutes%22%3A%22Minutes%22%2C%22seconds%22%3A%22Seconds%22%2C%22milliseconds%22%3A%22SS%22%2C%22date%22%3A%22monday%20at%2023%3A55%22%2C%22style%22%3A%22countdown-04%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/countdown/countdown05.jpg',
	'category': '806',
	'name': 'countdown-05',
	'html': `<div class="custom-module loading" data-style="countdown-05" data-effect="soon" data-module-desc="Coming soon" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22number%22%3A%224444%22%2C%22format%22%3A%22d%2Ch%2Cm%2Cs%22%2C%22years%22%3A%22Y%22%2C%22months%22%3A%22MM%22%2C%22weeks%22%3A%22W%22%2C%22days%22%3A%22Days%22%2C%22hours%22%3A%22Hours%22%2C%22minutes%22%3A%22Minutes%22%2C%22seconds%22%3A%22Seconds%22%2C%22milliseconds%22%3A%22SS%22%2C%22date%22%3A%22monday%20at%2023%3A55%22%7D"></div>`
})

// ajaxform




data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform01.jpg',
	'category': '807',
	'name': 'ajaxform-01',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-01%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform02.jpg',
	'category': '807',
	'name': 'ajaxform-02',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-02%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform03.jpg',
	'category': '807',
	'name': 'ajaxform-03',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-03%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform04.jpg',
	'category': '807',
	'name': 'ajaxform-04',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-04%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform05.jpg',
	'category': '807',
	'name': 'ajaxform-05',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-05%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform06.jpg',
	'category': '807',
	'name': 'ajaxform-06',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-06%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform07.jpg',
	'category': '807',
	'name': 'ajaxform-07',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-07%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform08.jpg',
	'category': '807',
	'name': 'ajaxform-08',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-08%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform09.jpg',
	'category': '807',
	'name': 'ajaxform-09',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-09%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform10.jpg',
	'category': '807',
	'name': 'ajaxform-10',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-10%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform11.jpg',
	'category': '807',
	'name': 'ajaxform-11',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-11%22%2C%22SubmitButtonText%22%3A%22GET%20START%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform12.jpg',
	'category': '807',
	'name': 'ajaxform-12',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-12%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform13.jpg',
	'category': '807',
	'name': 'ajaxform-13',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-13%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform14.jpg',
	'category': '807',
	'name': 'ajaxform-14',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-14%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform15.jpg',
	'category': '807',
	'name': 'ajaxform-15',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-15%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
}, {
	'thumbnail': 'minis-shortcode/ajaxform/ajaxform16.jpg',
	'category': '807',
	'name': 'ajaxform-16',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.PowerForms" data-template="PowerForms-Responsive" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="%7B%22modulestyle%22%3A%22powerforms-16%22%2C%22SubmitButtonText%22%3A%22SUBMIT%20NOW%22%2C%22message%22%3A%22The%20form%20is%20submitted%20successfully%22%7D">Please click the setting button to choose the source of the form.</div>`
})


 



// map
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/gmap/gmap01.jpg',
	'category': '809',
	'name': 'gmap',
	'html': `<div class="custom-module loading" data-effect="gmap" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22address%22%3A%22740%20Prince%20Avenue%20Athens%2C%20Georgia%2030601%2C%20740%20Prince%20Ave%2C%20Athens%2C%20GA%2030606%2C%20740%22%2C%22markers%22%3A%22%3Ch5%20class%3D%5C%22title%5C%22%3ECompany%20Name%3C%2Fh5%3E%5Cn%3Cdl%3E%5Cn%20%20%20%20%3Cdt%3EAddress%3A%201000%20Palisades%20Center%20Dr%2C%20West%20Nyack%2C%20NY%2010994%3C%2Fdt%3E%5Cn%20%20%20%20%3Cdt%3ETel%3A%20%2B1%20845-727-3501%3C%2Fdt%3E%5Cn%20%20%20%20%3Cdt%3EEmail%3A%20%3Ca%20href%3D%5C%22mailto%3Asample%40gmail.com%5C%22%3Esample%40gmail.com%3C%2Fa%3E%3C%2Fdt%3E%5Cn%20%20%20%20%3Cdt%3EHours%3A%208%3A00am-5%3A30pm%20(Mon-Fri)%3C%2Fdt%3E%5Cn%3C%2Fdl%3E%22%2C%22markerscolor%22%3A%22%23303030%22%2C%22markersbg%22%3A%22%23ffffff%22%2C%22markersicon%22%3A%22%5BSkinPath%5Dresource%2Fthumbnails%2Fmap%2Fmapicon06.png%22%2C%22zoom%22%3A%2216%22%2C%22linktype%22%3A%22roadmap%22%2C%22xxl%22%3A%22700%22%2C%22xl%22%3A%22600%22%2C%22l%22%3A%22500%22%2C%22m%22%3A%22400%22%2C%22s%22%3A%22300%22%2C%22xs%22%3A%22260%22%2C%22mapstyle%22%3A%22%5B%5Cn%7B%5C%22featureType%5C%22%3A%5C%22landscape%5C%22%2C%5C%22elementType%5C%22%3A%5C%22all%5C%22%2C%5C%22stylers%5C%22%3A%5B%7B%5C%22color%5C%22%3A%5C%22%23fff1f0%5C%22%7D%5D%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22saturation%5C%22%3A%20100%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22gamma%5C%22%3A%200.6%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%5Cn%5D%22%2C%22type%22%3A%22roadmap%22%2C%22position%22%3A%22right%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/gmap/gmap02.jpg',
	'category': '809',
	'name': 'gmap',
	'html': `<div class="custom-module loading" data-effect="gmap" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22address%22%3A%22740%20Prince%20Ave%2C%20Athens%2C%20GA%2030606%22%2C%22markerscolor%22%3A%22%23303030%22%2C%22markersbg%22%3A%22%23ffffff%22%2C%22position%22%3A%22right%22%2C%22markersicon%22%3A%22%22%2C%22zoom%22%3A%2216%22%2C%22type%22%3A%22roadmap%22%2C%22xl%22%3A%22769%22%2C%22l%22%3A%22500%22%2C%22m%22%3A%22400%22%2C%22s%22%3A%22300%22%2C%22xs%22%3A%22230%22%2C%22mapstyle%22%3A%22%5B%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22landscape.natural%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%23bcddff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22road.highway%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.fill%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%235fb3ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22road.arterial%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%23ebf4ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22road.local%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.fill%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%23ebf4ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22road.local%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.stroke%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22visibility%5C%22%3A%20%5C%22on%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%2393c8ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22landscape.man_made%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%23c7e2ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22transit.station.airport%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22saturation%5C%22%3A%20100%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22gamma%5C%22%3A%200.82%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22hue%5C%22%3A%20%5C%22%230088ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22labels.text.fill%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%231673cb%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22road.highway%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22labels.icon%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22saturation%5C%22%3A%2058%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22hue%5C%22%3A%20%5C%22%23006eff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22poi%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%234797e0%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22poi.park%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%23209ee1%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22lightness%5C%22%3A%2049%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22transit.line%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.fill%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%2383befc%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22road.highway%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.stroke%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22color%5C%22%3A%20%5C%22%233ea3ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22administrative%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.stroke%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22saturation%5C%22%3A%2086%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22hue%5C%22%3A%20%5C%22%230077ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22weight%5C%22%3A%200.8%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22labels.icon%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22hue%5C%22%3A%20%5C%22%230066ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22weight%5C%22%3A%201.9%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%2C%5Cn%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%5C%22featureType%5C%22%3A%20%5C%22poi%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22elementType%5C%22%3A%20%5C%22geometry.fill%5C%22%2C%5Cn%20%20%20%20%20%20%20%20%5C%22stylers%5C%22%3A%20%5B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22hue%5C%22%3A%20%5C%22%230077ff%5C%22%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22saturation%5C%22%3A%20-7%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%2C%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7B%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%5C%22lightness%5C%22%3A%2024%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%7D%5Cn%20%20%20%20%20%20%20%20%5D%5Cn%20%20%20%20%7D%5Cn%5D%22%7D"></div>`
})


// text
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/text/text.jpg',
	'category': '100000',
	'name': 'texttabs',
	'html': `<span class="custom-module loading" data-effect="texttabs" data-module-desc="Text Slider" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22moduleid%22%3A%22dOX1FZ%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Unique%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Best%20Regards%22%7D%7D%7D"></span>`
})

// portfolio
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/portfolio/portfolio01.jpg',
	'category': '810',
	'name': 'portfolio-masonry-style01',
	'html': `<div class="custom-module loading" data-effect="portfolio-masonry" data-style="portfolio-masonry-style01" data-module-desc="Portfolio Masonry" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Nice%20Screenshot%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img01.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-electronics%2Cc-sweets%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Crystal%20Deer%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img02.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-office-supply%2Cc-plant%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Creative%20Illustration%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img03.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-electronics%2Cc-plant%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Bird%20Of%20Paradise%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img04.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-office-supply%2Cc-sweets%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Creative%20Fish%20Tank%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img05.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-electronics%2Cc-plant%22%7D%2C%22item5%22%3A%7B%22title%22%3A%22Pink-heart%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img06.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-electronics%2Cc-office-supply%22%7D%2C%22item6%22%3A%7B%22title%22%3A%22Green%20Power%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img07.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-plant%2Cc-sweets%22%7D%2C%22item7%22%3A%7B%22title%22%3A%22Wired%20Headphone%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img08.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-office-supply%2Cc-sweets%22%7D%2C%22item8%22%3A%7B%22title%22%3A%22Modern%20Art%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img09.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22c-electronics%22%7D%7D%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%223%22%2C%22displaym%22%3A%223%22%2C%22displays%22%3A%223%22%2C%22displayxs%22%3A%222%22%2C%22categorys%22%3A%22Electronics%2COffice%20Supply%2CPlant%2CSweets%22%2C%22alltext%22%3A%22ALL%22%2C%22spacingxs%22%3A%2230%22%2C%22firstscreen%22%3A%226%22%2C%22loaddisplay%22%3A%223%22%2C%22infinite%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/portfolio/portfolio02.jpg',
	'category': '810',
	'name': 'portfolio-carousel2-style01',
	'html': `<div class="custom-module loading" data-effect="portfolio-carousel2" data-style="portfolio-carousel2-style01" data-module-desc="Portfolio Carousel" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Modern%20Pink%20Lamp%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-carousel-img01.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22description%22%3A%22Phasellus%20eu%20augue%20non%20nisi%20malesuada%20lacinia%20nec%20eget%20odio.%20Fusce%20sit%20amet%20sapien%20fermentum%2C%20euismod%20arcu%20sit%20amet%2C%20iaculis%20erat.%20%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Delicious%20Juice%20Jelly%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-carousel-img02.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22description%22%3A%22Duis%20lobortis%2C%20mauris%20id%20placerat%20mollis%2C%20augue%20elit%20volutpat%20erat%2C%20luctus%20dapibus%20neque%20nisl%20vitae%20metus.%20Aenean%20vitae%20mauris%20sit%20amet%20velit.%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Gourmet%20Hot%20Coffee%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-carousel-img03.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22description%22%3A%22Phasellus%20egestas%20id%20sapien%20eu%20scelerisque.%20Vivamus%20id%20velit%20ligula.%20Nunc%20fermentum%20orci%20et%20facilisis%20eleifend.%20Maecenas%20vulputate%20velit.%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Creative%20Orange%20Windmill%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-carousel-img04.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22description%22%3A%22Morbi%20lacus%20ex%2C%20ullamcorper%20posuere%20varius%20et%2C%20tempor%20et%20velit.%20Pellentesque%20in%20eleifend%20mi.%20Curabitur%20ac%20lacus%20sodales%2C%20porttitor%20risus%20id%2C%20iaculis%20nisl.%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Tasty%20Italian%20Dinner%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-carousel-img05.jpg%22%2C%22linktype%22%3A%22none%22%2C%22description%22%3A%22Morbi%20lacus%20ex%2C%20ullamcorper%20posuere%20varius%20et%2C%20tempor%20et%20velit.%20Pellentesque%20in%20eleifend%20mi.%20Curabitur%20ac%20lacus%20sodales%2C%20porttitor%20risus%20id%2C%20iaculis%20nisl.%22%7D%7D%2C%22displayxxl%22%3A%224%22%2C%22displayxl%22%3A%224%22%2C%22displayl%22%3A%224%22%2C%22displaym%22%3A%223%22%2C%22displays%22%3A%223%22%2C%22displayxs%22%3A%222%22%2C%22categorys%22%3A%22Electronics%2COffice%20Supply%2CPlant%2CSweets%22%2C%22alltext%22%3A%22ALL%22%2C%22spacingxs%22%3A%2230%22%2C%22navigation%22%3A%22checked%22%2C%22autoplay%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22firstscreen%22%3A%226%22%2C%22loaddisplay%22%3A%223%22%2C%22infinite%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/portfolio/portfolio03.jpg',
	'category': '810',
	'name': 'portfolio-masonry-style02',
	'html': `<div class="custom-module loading" data-effect="portfolio-masonry" data-style="portfolio-masonry-style02" data-module-desc="Portfolio Masonry" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Best%20Sell%20Magazine%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img10.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Creative%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Bird%20Of%20Paradise%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img11.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Design%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Guitar-shaped%20Accessory%20%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img12.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Design%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Beautiful%20Sea%20Tower%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img13.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Design%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Wonderful%20Combination%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img14.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Photography%22%7D%2C%22item5%22%3A%7B%22title%22%3A%22Creative%20Fish%20Tank%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img15.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Design%22%7D%2C%22item6%22%3A%7B%22title%22%3A%22Green%20Power%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img16.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Creative%22%7D%2C%22item7%22%3A%7B%22title%22%3A%22Toy%20Car%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img17.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Photography%22%7D%2C%22item8%22%3A%7B%22title%22%3A%22Digital%20Cameras%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img18.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Photography%22%7D%7D%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%223%22%2C%22displaym%22%3A%223%22%2C%22displays%22%3A%223%22%2C%22displayxs%22%3A%222%22%2C%22categorys%22%3A%22Creative%2CDesign%2CPhotography%2CApp%2CStill%20Life%22%2C%22alltext%22%3A%22All%20Works%22%2C%22spacingxs%22%3A%2230%22%2C%22contour%22%3A%22checked%22%2C%22firstscreen%22%3A%226%22%2C%22loaddisplay%22%3A%223%22%2C%22infinite%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/portfolio/portfolio04.jpg',
	'category': '810',
	'name': 'portfolio-masonry-style03',
	'html': `<div class="custom-module loading" data-effect="portfolio-masonry" data-style="portfolio-masonry-style03" data-module-desc="Portfolio Masonry" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Stationery%20Design%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fisotope01-01.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Creative%2CDesign%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Coffee%20Shop%20Logo%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fisotope01-02.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Design%2CPhotography%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Thanksgiving%20Day%20Mockup%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fisotope01-03.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Photography%2CApp%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Ceramic%20Bottle%20Design%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fisotope01-04.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22App%2CStill%20Life%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Innovative%20Design%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fisotope01-05.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Creative%2CDesign%2CPhotography%22%7D%2C%22item5%22%3A%7B%22title%22%3A%22Enamel%20Mug%20Design%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fhome10%2Fisotope01-06.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22category%22%3A%22Photography%2CApp%2CStill%20Life%22%7D%7D%2C%22lazy%22%3A%22checked%22%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22spacingxs%22%3A%2230%22%2C%22categorys%22%3A%22Creative%2CDesign%2CPhotography%2CApp%2CStill%20Life%22%2C%22alltext%22%3A%22ALL%22%2C%22firstscreen%22%3A%226%22%2C%22loaddisplay%22%3A%223%22%2C%22infinite%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/portfolio/portfolio05.jpg',
	'category': '810',
	'name': 'portfolio-masonry-style05',
	'html': `<div class="custom-module loading" data-effect="portfolio-masonry" data-style="portfolio-masonry-style05" data-module-desc="Portfolio Masonry" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Cake%20model%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img28.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22scale%22%3A%22item-width2%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Idea%20packing%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img29.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Exquisite%20gift%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img30.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Cool%20posture%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img31.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Signature%20Coffee%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img32.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%7D%2C%22item5%22%3A%7B%22title%22%3A%22Creative%20spaghetti%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img33.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%7D%2C%22item6%22%3A%7B%22title%22%3A%22Pink-heart%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img34.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22scale%22%3A%22item-width2%22%7D%2C%22item7%22%3A%7B%22title%22%3A%22Creative%20Illustration%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fportfolio%2Fportfolio-img35.jpg%22%2C%22linktype%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%7D%7D%2C%22lazy%22%3A%22checked%22%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%221%22%2C%22displayxs%22%3A%221%22%2C%22spacingxs%22%3A%2230%22%2C%22firstscreen%22%3A%226%22%2C%22loaddisplay%22%3A%223%22%2C%22infinite%22%3A%22checked%22%7D"></div>`
})

// tab
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/tab/tab01.jpg',
	'category': '811',
	'name': 'tab01',
	'html': `<div class="custom-module loading" data-effect="tab" data-style="tab01" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Consultation%22%2C%22description%22%3A%22%3Cp%3EDonec%20dui%20dolor%2C%20faucibus%20vitae%20lorem%20faucibus%2C%20vestibulum%20bibendum%20dui.%20Vivamus%20urna%20tortor%2C%20volutpat%20vitae%20varius%20quis.%3C%2Fp%3E%5Cn%3Cul%20class%3D%5C%22tab-list%5C%22%3E%5Cn%3Cli%3E%3Ci%20class%3D%5C%22color-accent%20sico%20lnr-check%5C%22%3E%3C%2Fi%3EEtiam%20nec%20nisi%20aliquet%3C%2Fli%3E%5Cn%3Cli%3E%3Ci%20class%3D%5C%22color-accent%20sico%20lnr-check%5C%22%3E%3C%2Fi%3EAuctor%20tellus%20dapibus%20quis%20eros%20posuere%3C%2Fli%3E%5Cn%3Cli%3E%3Ci%20class%3D%5C%22color-accent%20sico%20lnr-check%5C%22%3E%3C%2Fi%3ENam%20vel%20est%20non%20lectus%20molestie%3C%2Fli%3E%5Cn%3Cli%3E%3Ci%20class%3D%5C%22color-accent%20sico%20lnr-check%5C%22%3E%3C%2Fi%3EVestibulum%20rutrum%20nisi%20feugiat%20nunc%20sodales.%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Marketing%22%2C%22description%22%3A%22%3Cp%3EPhasellus%20consectetur%20laoreet%20fringilla.%20Nulla%20molestie%20pulvinar%20aliquet.%20Donec%20aont%20metus%20enim.Proin%20vitae%20tristique%20lacus.%20Phasellus%20vitae%20metus%20vitae%20sapien%20pharetra%20vestibulum.%3C%2Fp%3E%5Cn%3Cp%3ESed%20ut%20perspiciatis%20unde%20omnis%20iste%20natus%20error%20sit%20voluptatem%20accusantium%20dfdagbd%20doloremqlaudantium%2C%20totam%20rem%20aperiam%2C%20eaque%20ipsa%20quae%20ab%20illo%20inventore%20veritatis%20et%20quasi%20architecto%20in%20ea%20voluptate%20velit%20esse%20quconsequatur.%3C%2Fp%3E%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Keyword%20Research%22%2C%22description%22%3A%22%3Cp%3ESed%20ut%20perspiciatis%20unde%20omnis%20iste%20natus%20error%20sit%20voluptatem%20accusantium%20dfdag.%3C%2Fp%3E%5Cn%3Cp%3ENeque%20porro%20quisquam%20est%20qui%20dolorem%20ipsum%20quia%20dolor%20sit%20amet%20consectetur.%3C%2Fp%3E%5Cn%3Cp%3EAdipisci%20velit%20sed%20quia%20non%20numquam%20eius%20modi%20tempora%20god%20to%20sotherd%20demoseb%20temdpad.%20Ddso%20yopu%20wandst%20toe%20chadews%3C%2Fp%3E%22%7D%7D%2C%22equalHeight%22%3A%22checked%22%7D"></div>`
}, {
	'thumbnail': 'minis-shortcode/tab/tab02.jpg',
	'category': '811',
	'name': 'tab02',
	'html': `<div class="custom-module loading" data-effect="tab" data-style="tab02" id="module-{id}" data-moduleid="{id}" data-settings="%7B%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Function%22%2C%22description%22%3A%22%3Cp%20class%3D%5C%22mb-25%5C%22%3EDonec%20vestibulum%2C%20massa%20ut%20sodales%20ultrices%2C%20ante%20nulla%20interdum%20neque%2C%20sit%20amet%20iaculis%20purus%20augue%20nec%20justo.%3C%2Fp%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%5C%22row%20%5C%22%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%5C%22col-sm-6%5C%22%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch6%3E%3Ci%20class%3D%5C%22sico%20lnr-find-replace%20color-accent2%20mr-10%20tab-icon%5C%22%20style%3D%5C%22font-size%3A1.4em%5C%22%3E%3Csvg%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cuse%20xlink%3Ahref%3D%5C%22%23lnr-find-replace%5C%22%3E%3C%2Fuse%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fsvg%3E%3C%2Fi%3EIntelligent%20Search%3C%2Fh6%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cp%3EPhasellus%20vel%20nibh%20a%20lorem%20blandit%20accumsan%20nec.%3C%2Fp%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fdiv%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cdiv%20class%3D%5C%22col-sm-6%5C%22%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Ch6%3E%3Ci%20class%3D%5C%22sico%20lnr-cube%20color-accent2%20mr-10%20tab-icon%5C%22%3E%3Csvg%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cuse%20xlink%3Ahref%3D%5C%22%23lnr-cube%5C%22%3E%3C%2Fuse%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fsvg%3E%3C%2Fi%3EEasy%20To%20Integrate%3C%2Fh6%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cp%3EPhasellus%20vel%20nibh%20a%20lorem%20blandit%20accumsan%20nec.%3C%2Fp%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fdiv%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fdiv%3E%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Interface%22%2C%22description%22%3A%22%3Cp%3EPhasellus%20consectetur%20laoreet%20fringilla.%20Nulla%20molestie%20pulvinar%20aliquet.%20Donec%20aont%20metus%20enim.Proin%20vitae%20tristique%20lacus.%20Phasellus%20vitae%20metus%20vitae%20sapien%20pharetra%20vestibulum.%3C%2Fp%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cp%3ESed%20ut%20perspiciatis%20unde%20omnis%20iste%20natus%20error%20sit%20voluptatem%20accusantium%20dfdagbd%20doloremqlaudantium%2C%20totam%20rem%20aperiam%2C%20eaque%20ipsa%20quae%20ab%20illo%20inventore%20veritatis%20et%20quasi%20architecto%20in%20ea%20voluptate%20velit%20esse%20quconsequatur.%3C%2Fp%3E%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Security%22%2C%22description%22%3A%22%3Cp%3ESed%20ut%20perspiciatis%20unde%20omnis%20iste%20natus%20error%20sit%20voluptatem%20accusantium%20dfdag.%3C%2Fp%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cp%3ENeque%20porro%20quisquam%20est%20qui%20dolorem%20ipsum%20quia%20dolor%20sit%20amet%20consectetur.%3C%2Fp%3E%5Cn%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cp%3EAdipisci%20velit%20sed%20quia%20non%20numquam%20eius%20modi%20tempora%20god%20to%20sotherd%20demoseb%20temdpad.%20Ddso%20yopu%20wandst%20toe%20chadews%3C%2Fp%3E%22%7D%7D%2C%22equalHeight%22%3A%22checked%22%7D"></div>
`
})

// FAQ
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/faq/faq01.jpg',
	'category': '812',
	'name': 'faq-01',
	'html': `
		<div class="row faq-01-list">
			<div class="col-md-6">
				<div class="faq-01 edit-box">
					<div class="title">
						<h6>How do I change my password? </h6>
					</div>
					<p>Vestibulum suscipit vulputate dui vel molestie. Praesent et consequat tortor.</p>
					<div class="link">
						<a href="#" title="Read More"><strong>Read More</strong><i class="sico fas-plus"></i></a>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="faq-01 edit-box">
					<div class="title">
						<h6>What's the license for this theme? </h6>
					</div>
					<p>Donec vitae mi venenatis, rutrum libero sed, dictum purus. In dui neque tempus id volutpat. </p>
					<div class="link">
						<a href="#" title="Read More"><strong>Read More</strong><i class="sico fas-plus"></i></a>
					</div>
				</div>
			</div>
			
		</div>
		<div class="row faq-01-list">
			<div class="col-md-6">
				<div class="faq-01 edit-box">
					<div class="title">
						<h6>How can I edit the page? </h6>
					</div>
					<p>Praesent dignissim dui at nulla consequat, necdign issim turpis facilisis. </p>
					<div class="link">
						<a href="#" title="Read More"><strong>Read More</strong><i class="sico fas-plus"></i></a>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="faq-01 edit-box">
					<div class="title">
						<h6>Can I have an invoice for my order? </h6>
					</div>
					<p>Aenean ac mi quis lectus tempor iaculis. Proin nec lectus sed ipsum venenatis suscipit. </p>
					<div class="link">
						<a href="#" title="Read More"><strong>Read More</strong><i class="sico fas-plus"></i></a>
					</div>
				</div>
			</div>
		</div>
		<style class="build-css" data-class="faq-01">${csstemplate["faq-01"]}</style>
	`
}, {
	'thumbnail': 'minis-shortcode/faq/faq02.jpg',
	'category': '812',
	'name': 'faq-02',
	'html': `<ul class="faq-02">
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to get support from customer service?</h6>
		</div>
		<p>Aliquam erat volutpat. Aliquam sollicitudin lacinia scelerisque. Aliquam ultricies metus eget ex molestie.</p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to get and manage API key?</h6>
		</div>
		<p>Mauris facilisis vehicula tortor id dignissim. Duis augue ipsum, maximus ut suscipit at, suscipit eu lorem. </p>
	</li>

	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to improve page loading speed?</h6>
		</div>
		<p>Donec mollis tincidunt quam sit amet aliquam. Sed molestie elit in risus eleifend posuere. </p>
	</li>

	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to disable or remove your account?</h6>
		</div>
		<p>Curabitur elementum, enim nec maximus auctor, metus ex iaculis ligula, quis tempor neque nisi a velit.</p>
	</li>

	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>Can I get a discount for this theme?</h6>
		</div>
		<p>Nullam non quam in turpis viverra tincidunt a ut libero. Quisque erat turpis, pharetra sed felis quis.</p>
	</li>
</ul>
<style class="build-css" data-class="faq-02">${csstemplate["faq-02"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/faq/faq03.jpg',
	'category': '812',
	'name': 'faq-03',
	'html': `<ul class="faq-03">
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to get support from customer service?</h6>
		</div>
		<p>Nullam eget suscipit ligula. Etiam ex dolor, condimentum eget ornare a, hendrerit at felis. Donec mattis sodales mauris commodo feugiat. </p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>Can I delete the existing page?</h6>
		</div>
		<p>Donec eu mauris ex. Sed in dapibus est. Sed mollis lectus augue, in imperdiet erat sollicitudin sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to get and manage API key?</h6>
		</div>
		<p>Aenean mollis efficitur metus, et convallis urna ultricies a. Proin dictum congue dolor at sollicitudin. Sed vehicula augue neque euismod.</p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>What's the license for this theme?</h6>
		</div>
		<p>Curabitur libero tellus, consectetur quis odio at, convallis consequat augue. Suspendisse a diam lectus. Mauris lacinia, ex eget ornare pellentesque.</p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>Where is the theme documentations?</h6>
		</div>
		<p>Suspendisse quis feugiat massa. Curabitur consequat ipsum sem, nec imperdiet diam ornare non. Curabitur sagittis tincidunt vehicula.</p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to improve page loading speed?</h6>
		</div>
		<p>Donec dignissim enim quis porta gravida. Etiam porta vehicula ipsum, vel dictum ex pharetra sed. Sed in malesuada quam, vel eleifend orci. </p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>How to disable or remove your account?</h6>
		</div>
		<p>Vivamus porta ac magna ac lacinia. Praesent vel commodo elit, ac sollicitudin arcu. Nulla vehicula arcu justo, nec tempus magna finibus eget.</p>
	</li>
	<li>
		<div class="q">Q</div>
		<div class="title">
			<h6>Can I have an invoice for my order?</h6>
		</div>
		<p>Quisque ultricies eros sed aliquet dictum. Nullam ac bibendum mi, sit amet efficitur nisi. Curabitur vestibulum erat sed leo fermentum mattis.</p>
	</li>
</ul>
<style class="build-css" data-class="faq-03">${csstemplate["faq-03"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/faq/faq04.jpg',
	'category': '812',
	'name': 'faq-04',
	'html': `<div class="row">
		<div class="col-md-6">
			<div class="faq-04 edit-box">
				<h6 class="title">Can I apply a theme purchased from your site to multiple sites?</h6>
				<p>Only for the Enterprise version, you can install the theme on an unlimited number of portals or websites. So please check which kind of version you purchased.</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="faq-04 edit-box">
				<h6 class="title">Can you make changes to theme based on some requirements?</h6>
				<p>Yes, we can. You need to send us the modification requirements, then we will offer you a quote and explanation.</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="faq-04 edit-box">
				<h6 class="title">How long do you offer free upgrade for your products?</h6>
				<p>Free latest version is available if purchase is within two years. If your purchase is over two years, please contact us at dnnskindev@gmail.com</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="faq-04 edit-box">
				<h6 class="title">Do I need to purchase the Content Builder separately?</h6>
				<p>No, the Content Builder is included in the theme, you will find the Content Builder file in the download package after you purchase the theme.</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="faq-04 edit-box">
				<h6 class="title">I received an error that package seems to be a invalid DNN extension</h6>
				<p>Please unzip the downloaded package, then find the corresponding installation package of the theme or module, and install it according to the instructions.</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="faq-04 edit-box">
				<h6 class="title">What should I do when I have some issues when using theme?</h6>
				<p>Sed auctor ut dolor aliquam ornare. Integer interdum dolor ac augue varius, eu pulvinar sem mattis. Mauris mollis purus vitae faucibus faucibus.</p>
			</div>
		</div>
	</div>
	<style class="build-css" data-class="faq-04">${csstemplate["faq-04"]}</style>`
}, {
	'thumbnail': 'minis-shortcode/faq/faq05.jpg',
	'category': '812',
	'name': 'faq-05',
	'html': ` <div class="row faq-05-list">
		<div class="col-md-6">
			<div class="faq-05 edit-box pr-lg-50">
				<div class="title">
					<h6>What aftersales support do you offer?</h6>
				</div>
				<p>Vivamus ac leo vestibulum, ornare nisi vitae, suscipit massa. Pellentesque aliquam urna id justo vulputate, id malesuada erat pellentesque. Donec vel felis massa. </p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="faq-05 edit-box">
				<div class="title">
					<h6>Can you help me change the color?</h6>
				</div>
				<p>Aliquam in pretium est. Fusce aliquam dignissim neque ut auctor. Duis tempor massa a vestibulum egestas. In lectus diam, convallis aliquam sapien sed, commodo condimentum risus.</p>
			</div>
		</div>
	</div>
	<div class="row faq-05-list">
		<div class="col-md-6">
			<div class="faq-05 edit-box pr-lg-50">
				<div class="title">
					<h6>What services do you provide?</h6>
				</div>
				<p>Curabitur viverra augue sed erat malesuada, quis consequat leo ullamcorper. Morbi suscipit ante a magna tempor, a gravida libero blandit. Proin eget luctus diam.</p>
			</div>
		</div>
		<div class="col-md-6">
			<div class="faq-05 edit-box">
				<div class="title">
					<h6>How do I use the theme after the installation?</h6>
				</div>
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.</p>
			</div>
		</div>
	</div>
	<style class="build-css" data-class="faq-05">${csstemplate["faq-05"]}</style>
	`
});


// Step
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/step/step01.jpg',
	'category': '813',
	'name': 'step01',
	'html': `<ul class="step-01">
    <li>
        <div class="icon"><i class="sico lnr-check"></i></div>
        <div class="pic"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img06.png" class="img-Lazy"></div>
        <div class="content edit-box">
            <h6 class="title">Share Your Thought</h6>
            <p>Vivamus volutpat iaculis mauris, ut consequat massa fermentum ac. Nam vitae turpis ac metus pharetra ornare in bibendum quam.</p>
        </div>
        <div class="top-line"><span></span></div>
        <div class="bottom-line"><span></span></div>
    </li>
    <li>
        <div class="icon"><i class="sico lnr-check"></i></div>
        <div class="pic"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img07.png" class="img-Lazy"></div>
        <div class="content edit-box">
            <h6 class="title">Analyze Your Requirements</h6>
            <p>Pellentesque dolor diam, varius ultricies porttitor nec, luctus in velit. Nam et congue nulla. Praesent mattis venenatis rutrum. </p>
        </div>
        <div class="top-line"><span></span></div>
        <div class="bottom-line"><span></span></div>
    </li>
    <li>
        <div class="icon"><i class="sico lnr-check"></i></div>
        <div class="pic"><img src="/Portals/_default/ContentBuilder/minis-page/home14/homepage14-img08.png" class="img-Lazy"></div>
        <div class="content edit-box">
            <h6 class="title">Work On Web/APP Design</h6>
            <p>Curabitur scelerisque ligula eu blandit consequat. Integer urna nunc, sollicitudin eu pharetra semper, maximus id mi. </p>
        </div>
        <div class="top-line"><span></span></div>
        <div class="bottom-line"><span></span></div>
    </li>
</ul>
<style class="build-css" data-class="step-01">${csstemplate["step-01"]}</style>
<script class="edit-mode-js" id="js-{id}">moduleEditModeJs("step", "{id}")</script>
`
}, {
	'thumbnail': 'minis-shortcode/step/step02.jpg',
	'category': '813',
	'name': 'step02',
	'html': `<ul class="step-02 mt-15" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-bg02.png&quot;); background-repeat: repeat-y; background-position: center center; background-size: contain;">
	<li>
		<div class="icon" style="background-color: rgb(255, 146, 110);">
			<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-icon05.png" class="img-Lazy" alt=""></div>
		<div class="content edit-box">
			<h6 class="title color-accent2">Share Your Thought</h6>
			<p>Fusce lobortis mi ante, non posuere eros pharetra non. Suspendisse semper, mi vitae sagittis bibendum, ipsum velit aliquet nunc varius sem.</p>
		</div>
	</li>
	<li>
		<div class="icon" style="background-color: rgb(173, 235, 246);">
			<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-icon06.png" class="img-Lazy" alt=""></div>
		<div class="content edit-box">
			<h6 class="title color-accent2">Analyze Your Requirements</h6>
			<p>Vivamus volutpat iaculis mauris, ut consequat massa fermentum ac. Nam vitae turpis ac metus pharetra ornare in bibendum quam.</p>
		</div>
	</li>
	<li>
		<div class="icon" style="background-color: rgb(174, 182, 246);">
			<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-icon07.png" class="img-Lazy" alt=""></div>
		<div class="content edit-box">
			<h6 class="title color-accent2">Work On Web/APP Design</h6>
			<p>Suspendisse potenti. Mauris luctus leo quis arcu ornare, ac laoreet enim fermentum. Nunc lectus justo, semper et dui non, semper eleifend leo.</p>
		</div>
	</li>
	<canvas width="970" height="868"></canvas>
</ul>
<style class="build-css" data-class="step-02">${csstemplate["step-02"]}</style>
<script class="edit-mode-js" id="js-{id}">moduleEditModeJs("step2", "{id}")</script>
`
}, {
	'thumbnail': 'minis-shortcode/step/step03.jpg',
	'category': '813',
	'name': 'step03',
	'html': `<div class="row step-03">
	<div class="col-md-4">
		<span class="step-dot">1</span>
		<div class="mb-20 pb-3">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon12.png" class="img-Lazy" alt=""></div>
		<h6 class="mb-15">Download The App </h6>
		<p>Sed tincidunt sem et augue sagittis, ut venenatis nisl vulputate sit amet.</p>
	</div>
	<div class="col-md-4">
		<span class="step-dot">2</span>
		<div class="mb-20 pb-3">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon13.png" class="img-Lazy" alt=""></div>
		<h6 class="mb-15">Register An Account</h6>
		<p>Donec quis auctor lacus. Nunc consectetur diam nulla, quis eleifend mauris.</p>
	</div>
	<div class="col-md-4">
		<span class="step-dot">3</span>
		<div class="mb-20 pb-3">
			<img src="/Portals/_default/ContentBuilder/minis-page/app02/app02-icon14.png" class="img-Lazy" alt=""></div>
		<h6 class="mb-15">Enjoy The App</h6>
		<p>Sed eu neque id risus cursus suscipit ac vel felis. Curabitur eu convallis nisl. </p>
	</div>
</div>
<style class="build-css" data-class="step-03">${csstemplate["step-03"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/step/step04.jpg',
	'category': '813',
	'name': 'step04',
	'html': `<div class="row step-04">
	<div class="col-md-4">
		<span class="step-number">01</span>
		<h6 class="title">Demand Analysis</h6>
		<p>Vestibulum eu tortor eu ex volutpat interdum et non elit. Vivamus aliquam vitae orci in porttitor.</p>
	</div>
	<div class="col-md-4">
		<span class="step-number">02</span>
		<h6 class="title">Web Design</h6>
		<p>Donec venenatis odio et risus fermentum et eleife nd nisi pretium. Integer vestibulum risus augue luctus tellus.</p>
	</div>
	<div class="col-md-4">
		<span class="step-number">03</span>
		<h6 class="title">Program Test</h6>
		<p>Curabitur lacinia sodales erat, id egestas maurisde finibus eget odio sapien, scelerisque eget ex.</p>
	</div>
</div>
<style class="build-css" data-class="step-04">${csstemplate["step-04"]}</style>
`}, {
	'thumbnail': 'minis-shortcode/step/step05.jpg',
	'category': '813',
	'name': 'step05',
	'html': `<div class="row step-05">
	<div class="col-md-4">
		<span class="step-number">01</span>
		<div class="icon">
			<i class="sico lnr-clipboard-text"><svg>
					<use xlink:href="#lnr-clipboard-text"></use>
				</svg></i>
		</div>
		<h6 class="title size-18">Functionality Requirement Provided By Clients</h6>
		<p>Donec pellentesque elementum urna, vel tristique tellus luctus sed. Cras non mollis nisl, sed aliquet augue. Duis volutpat ante lorem.</p>
		<div class="spacer height-40"></div>
	</div>
	<div class="col-md-4">
		<span class="step-number">02</span>
		<div class="icon">
			<i class="sico lnr-pencil-ruler2"><svg>
					<use xlink:href="#lnr-pencil-ruler2"></use>
				</svg></i>
		</div>
		<h6 class="title size-18">Design Website And Send You The Design Draft To Check</h6>
		<p>Quisque vulputate magna sed massa tempor, at viverra justo congue. Donec eleifend condimentum velit, a vestibulum orci.</p>
		<div class="spacer height-40"></div>
	</div>
	<div class="col-md-4">
		<span class="step-number">03</span>
		<div class="icon">
			<i class="sico lnr-window"><svg>
					<use xlink:href="#lnr-window"></use>
				</svg></i>
		</div>
		<h6 class="title size-18">Devoted To The Accomplish Of Product Concept And Feature Requirement</h6>
		<p>Donec at ipsum porttitor, lacinia lacus eget, accumsan felis. Etiam finibus dapibus nunc a fringilla at justo in sem.</p>
		<div class="spacer height-40"></div>
	</div>
</div>
<style class="build-css" data-class="step-05">${csstemplate["step-05"]}</style>
	`})


// flip box 
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/flipbox/flipbox01.jpg',
	'category': '814',
	'name': 'flipbox-01',
	'html': `<div class="row">
	<div class="col-lg-4 col-md-6">
		<div class="flipbox-01">
			<div class="front">
				<div class="icon">
					<i class="sico lnr-thumbs-up"><svg><use xlink:href="#lnr-thumbs-up"></use></svg></i>
					<span class="bg color-accent3"><svg version="1.1" viewBox="0 0 100 85">
							<path d="M0.038,30.865C-0.965,55.634,17.999,84.019,42.77,85.022c24.77,1.002,56.184-25.342,57.188-50.111	c1.002-24.77-28.979-33.817-53.749-34.82C21.438-0.912,1.041,6.096,0.038,30.865z"></path></svg></span>
					<span class="bg color-accent3 bg-shadow"><svg version="1.1" viewBox="0 0 100 85">
							<path d="M0.038,30.865C-0.965,55.634,17.999,84.019,42.77,85.022c24.77,1.002,56.184-25.342,57.188-50.111	c1.002-24.77-28.979-33.817-53.749-34.82C21.438-0.912,1.041,6.096,0.038,30.865z"></path></svg></span>
				</div>
				<div class="flipbox-title">
					<h6>High Satisfaction Level</h6>
				</div>
				<div class="flipbox-info">
					<p>Phasellus vulputate leo nibh, eu dignissim nibh faucibus quis. Nullam rutrum egestas velit quis laoreet.</p>
				</div>
			</div>
			<div class="back bg-accent3">
				<div class="flipbox-title">
					<h6>High Satisfaction Level</h6>
				</div>
				<div class="flipbox-info">
					<p>Phasellus vulputate leo nibh, eu dignissim nibh faucibus quis. Nullam rutrum egestas velit quis laoreet.</p>
				</div>
				<div class="flipbox-btn">
					<a href="#" title="LEARN MORE" class="button-flipbox color-accent3">LEARN MORE</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-md-6">
		<div class="flipbox-01">
			<div class="front">
				<div class="icon">
					<i class="sico lnr-pencil-ruler2"><svg><use xlink:href="#lnr-pencil-ruler2"></use></svg></i>
					<span class="bg color-accent2"><svg version="1.1" viewBox="0 0 100 85">
							<path d="M0.038,30.865C-0.965,55.634,17.999,84.019,42.77,85.022c24.77,1.002,56.184-25.342,57.188-50.111	c1.002-24.77-28.979-33.817-53.749-34.82C21.438-0.912,1.041,6.096,0.038,30.865z"></path></svg></span>
					<span class="bg color-accent2 bg-shadow"><svg version="1.1" viewBox="0 0 100 85">
							<path d="M0.038,30.865C-0.965,55.634,17.999,84.019,42.77,85.022c24.77,1.002,56.184-25.342,57.188-50.111	c1.002-24.77-28.979-33.817-53.749-34.82C21.438-0.912,1.041,6.096,0.038,30.865z"></path></svg></span>
				</div>
				<div class="flipbox-title">
					<h6>Fully Customizable</h6>
				</div>
				<div class="flipbox-info">
					<p>In luctus metus vitae tortor facilisis, non fermentum felis fermentum. Donec interdum consectetur.</p>
				</div>
			</div>
			<div class="back bg-accent2">
				<div class="flipbox-title">
					<h6>Fully Customizable</h6>
				</div>
				<div class="flipbox-info">
					<p>In luctus metus vitae tortor facilisis, non fermentum felis fermentum. Donec interdum consectetur erat a viverra. In tristique massa massa.</p>
				</div>
				<div class="flipbox-btn">
					<a href="#" title="LEARN MORE" class="button-flipbox color-accent2">LEARN MORE</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-md-6">
		<div class="flipbox-01">
			<div class="front">
				<div class="icon">
					<i class="sico lnr-magic-wand"><svg><use xlink:href="#lnr-magic-wand"></use></svg></i>
					<span class="bg color-accent4"><svg version="1.1" viewBox="0 0 100 85">
							<path d="M0.038,30.865C-0.965,55.634,17.999,84.019,42.77,85.022c24.77,1.002,56.184-25.342,57.188-50.111	c1.002-24.77-28.979-33.817-53.749-34.82C21.438-0.912,1.041,6.096,0.038,30.865z"></path></svg></span>
					<span class="bg color-accent4 bg-shadow"><svg version="1.1" viewBox="0 0 100 85">
							<path d="M0.038,30.865C-0.965,55.634,17.999,84.019,42.77,85.022c24.77,1.002,56.184-25.342,57.188-50.111	c1.002-24.77-28.979-33.817-53.749-34.82C21.438-0.912,1.041,6.096,0.038,30.865z"></path></svg></span>
				</div>
				<div class="flipbox-title">
					<h6>Creative Design</h6>
				</div>
				<div class="flipbox-info">
					<p>Duis mattis felis augue, finibus dapibus tellus dapibus at. Praesent euismod posuere nunc pharetra. </p>
				</div>
			</div>
			<div class="back bg-accent4">
				<div class="flipbox-title">
					<h6>Creative Design</h6>
				</div>
				<div class="flipbox-info">
					<p>Duis mattis felis augue, finibus dapibus tellus dapibus at. Praesent euismod posuere nunc pharetra. </p>
				</div>
				<div class="flipbox-btn">
					<a href="#" title="LEARN MORE" class="button-flipbox color-accent4">LEARN MORE</a>
				</div>
			</div>
		</div>
	</div>
</div>
<style class="build-css" data-class="flipbox-01">${csstemplate["flipbox-01"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/flipbox/flipbox02.jpg',
	'category': '814',
	'name': 'flipbox-02',
	'html': `
	<div class="row">
	<div class="col-md-4">
		<div class="flipbox-02">
			<div class="front">
				<div class="box">
					<div class="image">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-img02.jpg" class="img-Lazy" alt=""></div>
					<h6 class="title color-accent2">SEO Basic Optimization</h6>
				</div>
			</div>
			<div class="back bg-accent2">
				<div class="box">
					<div class="icon color-accent2">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-icon16.png" class="img-Lazy" alt="" style="max-width: 60%;"></div>
					<h6 class="title">SEO Basic Optimization</h6>
					<p class="description">Pellentesque vehicula consequat cursus. Proin imperdiet, neque vitae eleifend laoreet, neque quam ullamcorper tellus, in finibus diam tellus quis felis.</p>
					<div class="flip_link">
						<a href="#" title="Learn More">
							<span>Learn More 
								<i class="sico lnr-arrow-right"><svg><use xlink:href="#lnr-arrow-right"></use></svg></i>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="flipbox-02">
			<div class="front">
				<div class="box">
					<div class="image">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-img03.jpg" class="img-Lazy" alt=""></div>
					<h6 class="title color-accent2">Website Design</h6>
				</div>
			</div>
			<div class="back  bg-accent3">
				<div class="box">
					<div class="icon color-accent3">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-icon17.png" class="img-Lazy" alt=""></div>
					<h6 class="title">Website Design</h6>
					<p class="description">Pellentesque vehicula consequat cursus. Proin imperdiet, neque vitae eleifend laoreet, neque quam ullamcorper tellus, in finibus diam tellus quis felis. </p>
					<div class="flip_link">
						<a href="#" title="Learn More">
							<span>Learn More 
								<i class="sico lnr-arrow-right"><svg><use xlink:href="#lnr-arrow-right"></use></svg></i>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="flipbox-02">
			<div class="front">
				<div class="box">
					<div class="image">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-img04.jpg" class="img-Lazy" alt=""></div>
					<h6 class="title color-accent2">Interactive Design</h6>
				</div>
			</div>
			<div class="back bg-accent4">
				<div class="box">
					<div class="icon color-accent4">
						<img src="/Portals/_default/ContentBuilder/minis-page/design-studio/designStudio-icon18.png" class="img-Lazy" alt=""></div>
					<h6 class="title">Interactive Design</h6>
					<p class="description">Pellentesque vehicula consequat cursus. Proin imperdiet, neque vitae eleifend laoreet, neque quam ullamcorper tellus, in finibus diam tellus quis felis.</p>
					<div class="flip_link">
						<a href="#" title="Learn More">
							<span>Learn More 
								<i class="sico lnr-arrow-right"><svg><use xlink:href="#lnr-arrow-right"></use></svg></i>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<style class="build-css" data-class="flipbox-02">${csstemplate["flipbox-02"]}</style>
	`
}, {
	'thumbnail': 'minis-shortcode/flipbox/flipbox03.jpg',
	'category': '814',
	'name': 'flipbox-03',
	'html': `<div class="row">
	<div class="col-lg-4 col-md-6">
		<div class="flipbox-03">
			<div class="front">
				<div class="icon">
					<i class="sico lnr-laptop-phone"><svg>
							<use xlink:href="#lnr-laptop-phone"></use>
						</svg></i>
				</div>
				<div class="flipbox-title">
					<h6>Rich Experience</h6>
				</div>
				<div class="flipbox-info">
					<p>Nunc condimentum sem vitae cursus consectetur leo odio malesuada mauris, nec volutpat magna risus.</p>
				</div>
			</div>
			<div class="back">
				<div class="flipbox-title">
					<h6>Rich Experience</h6>
				</div>
				<div class="flipbox-info">
					<p>Phasellus vulputate leo nibh, eu dignissim nibh faucibus quis. Nullam rutrum egestas velit quis laoreet.</p>
				</div>
				<div class="flipbox-btn">
					<a href="#" title="LEARN MORE" class="button-flipbox">LEARN MORE
						<i class="icon-svg icon-arrows-right-double animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
							 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-o8sn5q4fom">
								<g xmlns="http://www.w3.org/2000/svg">
									<path stroke-linejoin="bevel" d="M31,15L48,32L31,49" style="stroke-dasharray: 49, 51; stroke-dashoffset: 0;"></path>
								</g>
								<g xmlns="http://www.w3.org/2000/svg">
									<path stroke-linejoin="bevel" d="M16,15L33,32L16,49" style="stroke-dasharray: 49, 51; stroke-dashoffset: 0;"></path>
								</g>
							</svg></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-md-6">
		<div class="flipbox-03">
			<div class="front">
				<div class="icon">
					<i class="sico lnr-hammer-wrench"><svg>
							<use xlink:href="#lnr-hammer-wrench"></use>
						</svg></i>
				</div>
				<div class="flipbox-title">
					<h6>Powerful Support</h6>
				</div>
				<div class="flipbox-info">
					<p>Curabitur sit amet ex urna, fusce eros nibh mollis non quam eu, interdum faucibus felis. Donec viverra ex
						quis.</p>
				</div>
			</div>
			<div class="back">
				<div class="flipbox-title">
					<h6>Powerful Support</h6>
				</div>
				<div class="flipbox-info">
					<p>In luctus metus vitae tortor facilisis, non fermentum felis fermentum. Donec interdum consectetur erat a
						viverra. In tristique massa massa.</p>
				</div>
				<div class="flipbox-btn">
					<a href="#" title="LEARN MORE" class="button-flipbox">LEARN MORE
						<i class="icon-svg icon-arrows-right-double animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
							 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-qjc85g9iaor">
								<g xmlns="http://www.w3.org/2000/svg">
									<path stroke-linejoin="bevel" d="M31,15L48,32L31,49" style="stroke-dasharray: 49, 51; stroke-dashoffset: 0;"></path>
								</g>
								<g xmlns="http://www.w3.org/2000/svg">
									<path stroke-linejoin="bevel" d="M16,15L33,32L16,49" style="stroke-dasharray: 49, 51; stroke-dashoffset: 0;"></path>
								</g>
							</svg></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-md-6">
		<div class="flipbox-03">
			<div class="front">
				<div class="icon">
					<i class="sico lnr-users2"><svg>
							<use xlink:href="#lnr-users2"></use>
						</svg></i>
				</div>
				<div class="flipbox-title">
					<h6>Strong Team Support</h6>
				</div>
				<div class="flipbox-info">
					<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec metus libero, facilisis nec eros.</p>
				</div>
			</div>
			<div class="back">
				<div class="flipbox-title">
					<h6>Strong Team Support</h6>
				</div>
				<div class="flipbox-info">
					<p>Duis mattis felis augue, finibus dapibus tellus dapibus at. Praesent euismod posuere nunc pharetra. </p>
				</div>
				<div class="flipbox-btn">
					<a href="#" title="LEARN MORE" class="button-flipbox">LEARN MORE
						<i class="icon-svg icon-arrows-right-double animated"><svg version="1.1" xmlns="http://www.w3.org/2000/svg"
							 xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="64px" height="64px" viewBox="0 0 64 64"
							 enable-background="new 0 0 64 64" xml:space="preserve" id="icon-svg-g9n24i5ac6a">
								<g xmlns="http://www.w3.org/2000/svg">
									<path stroke-linejoin="bevel" d="M31,15L48,32L31,49" style="stroke-dasharray: 49, 51; stroke-dashoffset: 0;"></path>
								</g>
								<g xmlns="http://www.w3.org/2000/svg">
									<path stroke-linejoin="bevel" d="M16,15L33,32L16,49" style="stroke-dasharray: 49, 51; stroke-dashoffset: 0;"></path>
								</g>
							</svg></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<style class="build-css" data-class="flipbox-03">${csstemplate["flipbox-03"]}</style>

`}, {
	'thumbnail': 'minis-shortcode/flipbox/flipbox04.jpg',
	'category': '814',
	'name': 'flipbox-04',
	'html': `
	<div class="row m-auto" style="max-width: 900px;">
		<div class="col-md-6">
			<div class="flipbox-04">
				<div class="front" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/contact-us04/contactus04-flipbox01.jpg&quot;); background-repeat: no-repeat; background-position: center center; background-size: cover;">
					<div class="icon">
						<img alt="" src="/Portals/_default/ContentBuilder/minis-page/contact-us04/contactus04-flipbox-icon01.png" class="img-Lazy"></div>
					<div class="flipbox-title">
						<h5>What to know more creative works?</h5>
					</div>
				</div>
				<div class="back" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/contact-us04/contactus04-flipbox02.jpg&quot;); background-repeat: no-repeat; background-position: center center; background-size: cover;">
					<div class="flipbox-title">
						<h5>Want to get your answers the first time?</h5>
					</div>
					<div class="flipbox-info">
						<p>Vestibulum pulvinar turpis nec arcu convallis gravida orci metus.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="flipbox-04">
				<div class="front" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/contact-us04/contactus04-flipbox03.jpg&quot;); background-position: center center; background-repeat: no-repeat; background-size: cover;">
					<div class="icon">
						<img alt="" src="/Portals/_default/ContentBuilder/minis-page/contact-us04/contactus04-flipbox-icon02.png" class="img-Lazy"></div>
					<div class="flipbox-title">
						<h5>What to know more creative works?</h5>
					</div>
				</div>
				<div class="back" style="background-image: url(&quot;/Portals/_default/ContentBuilder/minis-page/contact-us04/contactus04-flipbox02.jpg&quot;); background-repeat: no-repeat; background-position: center center; background-size: cover;">
					<div class="flipbox-title">
						<h5>Want to get your answers the first time?</h5>
					</div>
					<div class="flipbox-info">
						<p>Vestibulum pulvinar turpis nec arcu convallis gravida orci metus.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<style class="build-css" data-class="flipbox-04">${csstemplate["flipbox-04"]}</style>
`}
)


// list
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/list/list02.jpg',
	'category': '815',
	'name': 'list-02',
	'html': `<ul class="list-02">
    <li>
        <i class="sico lnr-checkmark-circle size-24 color-accent2"><svg><use xlink:href="#lnr-checkmark-circle"></use></svg></i>Easy to use.</li>
    <li>
        <i class="sico lnr-checkmark-circle size-24 color-accent2"><svg><use xlink:href="#lnr-checkmark-circle"></use></svg></i>This template is retina ready.</li>
    <li>
        <i class="sico lnr-checkmark-circle size-24 color-accent2"><svg><use xlink:href="#lnr-checkmark-circle"></use></svg></i>All the PSD files are included.</li>
    <li>
        <i class="sico lnr-checkmark-circle size-24 color-accent2"><svg><use xlink:href="#lnr-checkmark-circle"></use></svg></i>Modern design.</li>
</ul>
<style class="build-css" data-class="list-02">${csstemplate["list-02"]}</style>

`
}, {
	'thumbnail': 'minis-shortcode/list/list03.jpg',
	'category': '815',
	'name': 'list-03',
	'html': `<ul class="list-03">
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>Intuitive and easy-to-use interface</li>
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>Decades of experience</li>
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>Designs with full of creative ideas</li>
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>Efficient customer service will melt your heart.</li>
</ul>
<style class="build-css" data-class="list-03">${csstemplate["list-03"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/list/list04.jpg',
	'category': '815',
	'name': 'list-04',
	'html': `<ul class="list-04">
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>Fast Support</li>
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>Instant Notifications</li>
	<li>
		<i class="sico lnr-check"><svg><use xlink:href="#lnr-check"></use></svg></i>2-factor Authentication</li>
</ul>
<style class="build-css" data-class="list-04">${csstemplate["list-04"]}</style>
`
}, {
	'thumbnail': 'minis-shortcode/list/list05.jpg',
	'category': '815',
	'name': 'list-05',
	'html': `<ul class="list-05">
	<li>
		<i class="sico lnr-check"><svg>
				<use xlink:href="#lnr-check"></use>
			</svg></i>Intuitive and easy-to-use interface</li>
	<li>
		<i class="sico lnr-check"><svg>
				<use xlink:href="#lnr-check"></use>
			</svg></i>Decades of experience</li>
	<li>
		<i class="sico lnr-check"><svg>
				<use xlink:href="#lnr-check"></use>
			</svg></i>Designs with full of creative ideas</li>
	<li>
		<i class="sico lnr-check"><svg>
				<use xlink:href="#lnr-check"></use>
			</svg></i>Efficient customer service will melt your heart.</li>
</ul>
<style class="build-css" data-class="list-05">${csstemplate["list-05"]}</style>
`
})

// hotspot
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/hotspot/hotspot01.jpg',
	'category': '816',
	'name': 'hotspot01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="hotspot" data-style="hotspot01" data-module-desc="Map Hots"  data-settings="%7B%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-map.png%22%2C%22singlewidth%22%3A%221227%22%2C%22singleheight%22%3A%22530%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22x%22%3A%2215.96%25%22%2C%22y%22%3A%2242.31%25%22%2C%22title%22%3A%22Mobile%20Pixels%22%2C%22description%22%3A%22Etiam%20ut%20viverra%20arcu%2C%20sed%20laoreet%20metus.%20%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon08.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22bottom%22%7D%2C%22item1%22%3A%7B%22x%22%3A%2230.01%25%22%2C%22y%22%3A%2270.41%25%22%2C%22title%22%3A%22Luxcoffee%22%2C%22description%22%3A%22Sed%20pulvinar%2C%20ante%20eu%20porta%20ullamcorper.%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon09.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22top%22%7D%2C%22item2%22%3A%7B%22x%22%3A%2235.38%25%22%2C%22y%22%3A%2224.56%25%22%2C%22title%22%3A%22HR%20Service%22%2C%22description%22%3A%22Praesent%20ex%20risus%2C%20ultricies%20in%20ipsum%20sed%20semper.%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon10.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22bottom%22%7D%2C%22item3%22%3A%7B%22x%22%3A%2251.21%25%22%2C%22y%22%3A%2253.55%25%22%2C%22title%22%3A%22Birdywings%22%2C%22description%22%3A%22Nullam%20velit%20diam%2C%20eleifend%20ac%20molestie%20nec.%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon11.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22top%22%2C%22display%22%3A%22checked%22%7D%2C%22item4%22%3A%7B%22x%22%3A%2251.34%25%22%2C%22y%22%3A%2275.44%25%22%2C%22title%22%3A%22Community%22%2C%22description%22%3A%22Etiam%20egestas%20venenatis%20est%20libero%20ac%20ante%20turpis.%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon12.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22top%22%7D%2C%22item5%22%3A%7B%22x%22%3A%2266.79%25%22%2C%22y%22%3A%2237.57%25%22%2C%22title%22%3A%22Fastnature%22%2C%22description%22%3A%22Duis%20placerat%20turpis%20justo%2C%20id%20dictum%20nisl%20vehicula%20ac.%20%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon13.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22bottom%22%7D%2C%22item6%22%3A%7B%22x%22%3A%2278.54%25%22%2C%22y%22%3A%2245.56%25%22%2C%22title%22%3A%22Naughty%22%2C%22description%22%3A%22In%20massa%20tortor%2C%20blandit%20in%20accumsan%20quis.%5Cn%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon14.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22top%22%7D%2C%22item7%22%3A%7B%22x%22%3A%2285.7%25%22%2C%22y%22%3A%2279.59%25%22%2C%22title%22%3A%22livetalk%22%2C%22description%22%3A%22Nunc%20et%20justo%20at%20vehicula%20fringilla.%20In%20leo%20tellus.%22%2C%22logo%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon15.png%22%2C%22logowidth%22%3A%2264%22%2C%22logoheight%22%3A%2264%22%2C%22position%22%3A%22top%22%7D%7D%2C%22trigger%22%3A%22click%22%2C%22lazy%22%3A%22checked%22%7D"></div>
`
}, {
	'thumbnail': 'minis-shortcode/hotspot/hotspot02.jpg',
	'category': '816',
	'name': 'hotspot02',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="hotspot" data-style="hotspot02" data-module-desc="Map Hots"  data-settings="%7B%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcontact-us05%2Fcontactus05-img01.jpg%22%2C%22singlewidth%22%3A%22701%22%2C%22singleheight%22%3A%22411%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22x%22%3A%2248.4%25%22%2C%22y%22%3A%2268.19%25%22%2C%22title%22%3A%22San%20Francisco%20branch%20school%22%2C%22description%22%3A%22%3Cp%3E%3Cspan%3EPhone%20No.%20%3A%3C%2Fspan%3E%20%2B1234567809%3C%2Fp%3E%5Cn%3Cp%3E%3Cspan%3EEmail%20us%3A%3C%2Fspan%3E%20service%40gmail.com%3C%2Fp%3E%5Cn%3Cp%3E%3Cspan%3EAddress%3A%3C%2Fspan%3E%205%20Yiheyuan%20Rd%2C%20Haidian%20District%3C%2Fp%3E%22%2C%22icolor%22%3A%22%23ffb755%22%2C%22position%22%3A%22top%22%2C%22display%22%3A%22checked%22%7D%2C%22item1%22%3A%7B%22x%22%3A%2265.9%25%22%2C%22y%22%3A%2242.27%25%22%2C%22title%22%3A%22Chicago%20Branch%20office%22%2C%22description%22%3A%22%3Cp%3E%3Cspan%3EPhone%20No.%20%3A%3C%2Fspan%3E%20%2B1234567809%3C%2Fp%3E%5Cn%3Cp%3E%3Cspan%3EEmail%20us%3A%3C%2Fspan%3E%20service%40gmail.com%3C%2Fp%3E%5Cn%3Cp%3E%3Cspan%3EAddress%3A%3C%2Fspan%3E%20117%20Jinqiao%20Ave%2C%20Jiangan%20%3C%2Fp%3E%22%2C%22icolor%22%3A%22%23ff8855%22%2C%22position%22%3A%22left%22%7D%2C%22item2%22%3A%7B%22x%22%3A%2284.16%25%22%2C%22y%22%3A%2252.94%25%22%2C%22title%22%3A%22Washington%20Headquarter%22%2C%22description%22%3A%22%3Cp%3E%3Cspan%3EPhone%20No.%20%3A%3C%2Fspan%3E%20%2B1234567809%3C%2Fp%3E%5Cn%3Cp%3E%3Cspan%3EEmail%20us%3A%3C%2Fspan%3E%20service%40gmail.com%3C%2Fp%3E%5Cn%3Cp%3E%3Cspan%3EAddress%3A%3C%2Fspan%3E%20Yanta%20Rd%2C%20Yanta%20District%3C%2Fp%3E%22%2C%22icolor%22%3A%22%231abc9c%22%2C%22position%22%3A%22top%22%7D%7D%2C%22trigger%22%3A%22click%22%2C%22lazy%22%3A%22checked%22%7D"></div>
`
})

// time line
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/timeline/timeline01.jpg',
	'category': '817',
	'name': 'timeline01',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="timeline-carousel" data-style="timeline-carousel-style01" data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Creativity%20knows%20no%20bounds.%22%2C%22subtitle%22%3A%22Sept%2C%202019%22%2C%22month%22%3A%22Sep.%22%2C%22day%22%3A%2205%22%2C%22description%22%3A%22Posuere%20sit%20amet%20nunc%20vitae%20velit%20vel%20mauris%20consectetur%20interdum.%20Fusce%20dapibus%20eu%20tortor%20vitae%20fringilla.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22VIEW%20MORE%20%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Good%20tools%20are%20essential%20things.%22%2C%22subtitle%22%3A%22Oct%2C%202019%22%2C%22month%22%3A%22Oct.%22%2C%22day%22%3A%2212%22%2C%22description%22%3A%22Vestibulum%20ante%20ipsum%20primis%20in%20faucibus%20luctus%20ultrices%20posuere%20cubilia%20Curae.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22VIEW%20MORE%20%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Throw%20back%20everything%20unnecessary%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22month%22%3A%22Dec.%22%2C%22day%22%3A%2220%22%2C%22description%22%3A%22Donec%20at%20tortor%20sagittis%2C%20rutrum%20tortor%20a%2C%20finibus%20quam.%20Morbi%20quam%20ante%2C%20euismod%20et%20scelerisque.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22VIEW%20MORE%20%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Find%20nice%20things%20in%20life%20by%20heart.%22%2C%22subtitle%22%3A%22Jan%2C%202020%22%2C%22month%22%3A%22Jan.%22%2C%22day%22%3A%2225%22%2C%22description%22%3A%22Donec%20at%20tortor%20sagittis%2C%20rutrum%20tortor%20a%2C%20finibus%20quam.%20Morbi%20quam%20ante%2C%20euismod%20et%20scelerisque.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22VIEW%20MORE%20%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Creativity%20comes%20from%20the%20collision%20of%20ideas.%22%2C%22subtitle%22%3A%22Feb%2C%202020%22%2C%22month%22%3A%22Feb.%22%2C%22day%22%3A%2208%22%2C%22description%22%3A%22Donec%20at%20tortor%20sagittis%2C%20rutrum%20tortor%20a%2C%20finibus%20quam.%20Morbi%20quam%20ante%2C%20euismod%20et%20scelerisque.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22VIEW%20MORE%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%223%22%2C%22displayxl%22%3A%223%22%2C%22displayl%22%3A%222%22%2C%22displaym%22%3A%222%22%2C%22displays%22%3A%222%22%2C%22displayxs%22%3A%221%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22subdisplayxs%22%3A%221%22%2C%22subdisplays%22%3A%223%22%2C%22subdisplaym%22%3A%223%22%2C%22subdisplayl%22%3A%225%22%2C%22subdisplayxl%22%3A%225%22%2C%22subdisplayxxl%22%3A%225%22%2C%22centeritem%22%3A%223%22%2C%22navigation%22%3A%22checked%22%2C%22initialslide%22%3A%223%22%2C%22autoplay%22%3A%22checked%22%7D"></div>`
},{
	'thumbnail': 'minis-shortcode/timeline/timeline-flipbox.jpg',
	'category': '817',
	'name': 'timeline-flipbox',
	'html': `<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="timeline-flipbox" data-module-desc="timeline-carousel" data-html="" data-settings="%7B%22size%22%3A%22large%22%2C%22items%22%3A%7B%22item0%22%3A%7B%22title%22%3A%22Virtual%20Network%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22picture%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-img02.jpg%22%2C%22picturewidth%22%3A%22370%22%2C%22pictureheight%22%3A%22493%22%2C%22description%22%3A%22Sed%20eget%20ultricies%20metus.%20Vivamus%20bibendum%20dignissim%20justo%2C%20et%20bibendum%20dui%20pulvinar%20vitae.%20Nam%20pharetra%20tortor%20dui%2C%20eu%20luctus%20ante%20maximus%20quis.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22Learn%20More%20%22%2C%22icontype%22%3A%22font%22%2C%22icon%22%3A%22sico%20lnr-pencil4%22%2C%22bgcolor%22%3A%22%23523ee8%22%7D%2C%22item1%22%3A%7B%22title%22%3A%22Ultraportable%20Laptops%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22picture%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-img03.jpg%22%2C%22picturewidth%22%3A%22370%22%2C%22pictureheight%22%3A%22493%22%2C%22description%22%3A%22Nulla%20tempus%20augue%20facilisis%20erat%20ultricies%2C%20a%20bibendum%20mauris%20ultrices.%20In%20euismod%20diam%20id%20varius%20condimentum.%20Proin%20at%20nunc%20eget%20est%20congue.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22Learn%20More%20%22%2C%22icontype%22%3A%22image%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon17.png%22%2C%22bgcolor%22%3A%22%23fb7c35%22%7D%2C%22item2%22%3A%7B%22title%22%3A%22Creative%20Design%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22picture%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-img04.jpg%22%2C%22picturewidth%22%3A%22370%22%2C%22pictureheight%22%3A%22493%22%2C%22description%22%3A%22Pellentesque%20vehicula%20consequat%20cursus.%20Proin%20imperdiet%2C%20neque%20vitae%20eleifend%20laoreet%2C%20neque%20quam%20ullamcorper%20tellus%2C%20in%20finibus%20diam%20tellus%20quis%20felis.%20%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22Learn%20More%20%22%2C%22icontype%22%3A%22image%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fdesign-studio%2FdesignStudio-icon18.png%22%2C%22bgcolor%22%3A%22%231fa4e8%22%7D%2C%22item3%22%3A%7B%22title%22%3A%22Colorful%20Lights%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22picture%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Ftimeline-img4.jpg%22%2C%22picturewidth%22%3A%22370%22%2C%22pictureheight%22%3A%22493%22%2C%22description%22%3A%22Pellentesque%20vehicula%20consequat%20cursus.%20Proin%20imperdiet%2C%20neque%20vitae%20eleifend%20laoreet%2C%20neque%20quam%20ullamcorper%20tellus%2C%20in%20finibus%20diam%20tellus%20quis%20felis.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22Learn%20More%20%22%2C%22icontype%22%3A%22image%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Ftimeline-icon04.png%22%2C%22singlewidth%22%3A%2260%22%2C%22singleheight%22%3A%2256%22%2C%22bgcolor%22%3A%22%231bbc9b%22%7D%2C%22item4%22%3A%7B%22title%22%3A%22Retro%20Camera%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22picture%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Ftimeline-img5.jpg%22%2C%22picturewidth%22%3A%22370%22%2C%22pictureheight%22%3A%22493%22%2C%22description%22%3A%22Donec%20malesuada%20arcu%20et%20feugiat%20mollis.%20Phasellus%20mollis%2C%20magna%20vehicula%20ornare%20facilisis%2C%20nisl%20ipsum%20consequat%20leo%2C%20ut%20porta%20elit%20lorem%20in%20arcu.%20%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22Learn%20More%20%22%2C%22icontype%22%3A%22image%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Ftimeline-icon05.png%22%2C%22singlewidth%22%3A%2260%22%2C%22singleheight%22%3A%2257%22%2C%22bgcolor%22%3A%22%23523ee8%22%7D%2C%22item5%22%3A%7B%22title%22%3A%22Modern%20Architecture%22%2C%22subtitle%22%3A%22Dec%2C%202019%22%2C%22picture%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Ftimeline-img6.jpg%22%2C%22picturewidth%22%3A%22370%22%2C%22pictureheight%22%3A%22493%22%2C%22description%22%3A%22Curabitur%20hendrerit%20malesuada%20turpis%2C%20non%20aliquam%20risus%20fringilla%20eu.%20Vestibulum%20velit%20justo%2C%20iaculis%20et%20iaculis%20auctor%2C%20pellentesque%20non%20eros.%22%2C%22link%22%3A%22%23%22%2C%22linktext%22%3A%22Learn%20More%20%22%2C%22icontype%22%3A%22image%22%2C%22single%22%3A%22%2FPortals%2F_default%2FContentBuilder%2Fminis-page%2Fcarousel%2Ftimeline-icon06.png%22%2C%22singlewidth%22%3A%2260%22%2C%22singleheight%22%3A%2254%22%2C%22bgcolor%22%3A%22%23fb7c35%22%7D%7D%2C%22accopen%22%3A%22checked%22%2C%22accopenindex%22%3A%221%22%2C%22%22%3A%22linkurl%22%2C%22link%22%3A%22%23%22%2C%22displayxxl%22%3A%225%22%2C%22displayxl%22%3A%225%22%2C%22displayl%22%3A%224%22%2C%22displaym%22%3A%223%22%2C%22displays%22%3A%222%22%2C%22displayxs%22%3A%221%22%2C%22lazy%22%3A%22checked%22%2C%22delay%22%3A%225000%22%2C%22subdisplayxs%22%3A%221%22%2C%22subdisplays%22%3A%223%22%2C%22subdisplaym%22%3A%223%22%2C%22subdisplayl%22%3A%225%22%2C%22subdisplayxl%22%3A%225%22%2C%22subdisplayxxl%22%3A%225%22%2C%22centeritem%22%3A%223%22%2C%22navigation%22%3A%22checked%22%2C%22initialslide%22%3A%223%22%2C%22autoplay%22%3A%22checked%22%7D"></div>
	<style class="build-css" data-class="flipbox-02">${csstemplate["flipbox-02"]}</style>
	`
},
{
	'thumbnail': 'minis-shortcode/timeline/timeline01-1.jpg',
	'category': '817',
	'name': 'timeline01-html',
	'html': `<div class="row">
	<div class="col-md-6 pr-40">
		<ul class="timeline-01">
			<li class="edit-box">
				<h6>2018 - Became an industry leader</h6>
				<p>Vestibulum eu tortor eu ex volutpat interdum et non elit. Vivamus aliquam vitae orci in port titor. Suspendisse sit amet viverra tristique.</p>
			</li>
			<li class="edit-box">
				<h6>2017 - Completed the construction of a new design</h6>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit ultrices est eget dapibus commod vamus nec velit finibus vulputate.</p>
			</li>
			<li class="edit-box">
				<h6>2016 - Received relevant awards</h6>
				<p>Fusce egestas hendrerit neque vel laoreet suspendisse potenti. Donec quis massa quis du auctor mollis accumsan felis vel arcu blanditellb.</p>
			</li>
		</ul>
	</div>
	<div class="col-md-6">
		<ul class="timeline-01">
			<li>
				<h6>2013 - Company customers reached 500</h6>
				<p>Nam ut lacus rutrum interdum metus efficitu rconsectetur leo aliquam erat volutpat. Nunc ut felis eget sapien porttitor tincidunt ut sit amet </p>
			</li>
			<li>
				<h6>2012 - Company members reached 1,000 people</h6>
				<p>Aenean condimentum tristique orci vitae finibus velit elementum vel lorem ipsum dolor sit amet consectetur ligula.</p>
			</li>
			<li>
				<h6>2011 - The company was formally established</h6>
				<p>Curabitur lacinia sodales erat, id egestas mauris finibus eget scelerisque eget ex uteuism placerat dolor quisque fringilla dolor ultricies.</p>
			</li>
		</ul>
	</div>
</div>
<style class="build-css" data-class="timeline-01">.timeline-01 {
	margin: 0;
	padding: 0;
	list-style: none;
}
.timeline-01 li {
	padding: 0 0 30px 46px;
	position: relative;
}

.timeline-01 li::before {
	content: "";
	width: 20px;
	height: 20px;
	position: absolute;
	background-color: var(--accent-color);
	border: 1px solid var(--accent-color);
	padding: 4px;
	background-clip: content-box;
	top: 4px;
	left: 5px;
	border-radius: 50%;
}

.timeline-01 li::after {
	content: "";
	position: absolute;
	top: 29px;
	bottom: 0px;
	left: 14px;
	border-left: 2px solid #e0e0e0;
}

.timeline-01 li:last-child {
	padding-bottom: 0;
}

.timeline-01 li p {
	line-height: inherit;
}</style>
	`}
	,
	{
	'thumbnail': 'minis-shortcode/timeline/timeline03.jpg',
	'category': '817',
	'name': 'timeline-03',
	'html': `
	<ul class="timeline-03">
		<li class="edit-box">
			<h3 class="title">
				<span class="time">2012</span>Graduated from University of Cambridge</h3>
			<p>Donec scelerisque, quam sed accumsan interdum, leo neque placerat arcu.</p>
		</li>
		<li class="edit-box">
			<h3 class="title">
				<span class="time">2015</span>Became a member of DNNGo</h3>
			<p>Phasellus volutpat mattis arcu ac mattis. Curabitur quis maximus lorem.</p>
		</li>
		<li class="edit-box">
			<h3 class="title">
				<span class="time">2019</span>Won the excellent development engineer award</h3>
			<p>Fusce facilisis volutpat sem, eu pulvinar libero feugiat in. </p>
		</li>
	</ul>
	<style class="build-css" data-class="timeline-03">
	.timeline-03 {
		margin: 0;
		padding: 0 0 0 20px;
		list-style: none;
	}
	
	.timeline-03 li {
		margin: 0 0 39px;
	}
	
	.timeline-03 li::after {
		content: "";
		display: block;
		height: 20px;
		border-left: 2px solid var(--accent-color);
	}
	
	.timeline-03 li:last-child::after {
		content: none;
	}
	
	.timeline-03 li p {
		line-height: inherit
	}
	
	.timeline-03 .title {
		font-size: 18px;
		color: #333333;
		margin-bottom: 26px;
	}
	
	.timeline-03 .title .time {
		display: inline-block;
		width: 64px;
		font-style: italic;
		position: relative;
		z-index: 1;
	}
	
	.timeline-03 .title .time::after {
		content: "";
		position: absolute;
		display: inline-block;
		top: 50%;
		left: -20px;
		z-index: 0;
		width: 50px;
		height: 50px;
		background: var(--accent-color);
		border-radius: 50% 70% 50% 70% / 70% 50% 70% 50%;
		transform: rotate(30deg) translate(-20%, -45%);
		transform-origin: center center;
		z-index: -1;
		opacity: .15;
	}
	
	.timeline-03 li:nth-child(4n+1) .title .time::after {
		background: var(--accent-color);
	}
	
	.timeline-03 li:nth-child(4n+2) .title .time::after {
		background: var(--accent-color3);
	}
	
	.timeline-03 li:nth-child(4n+3) .title .time::after {
		background: var(--accent-color2);
	}
	
	.timeline-03 li:nth-child(4n+4) .title .time::after {
		background: var(--accent-color4);
	}
	</style>
	`}
	,
	{
	'thumbnail': 'minis-shortcode/timeline/timeline04.jpg',
	'category': '817',
	'name': 'timeline-04',
	'html': `
	<ul class="timeline-04">
        <li class="item">
            <div class="main">
                <div class="time">
                    <span>2019</span>
                </div>
                <div class="pic">
                    <img alt="thumbnail" src="/Portals/_default/ContentBuilder/minis-page/our-team-single03/ourteam-single03-img06.jpg"></div>
            </div>
            <div class="text edit-box">
                <h6 class="title">Won the highest customer satisfaction award</h6>
                <p>Ut nec purus turpis. Suspendisse in lacinia mi volutpat nunc lorem.</p>
            </div>
        </li>
        <li class="item">
            <div class="main">
                <div class="time">
                    <span>2015</span>
                </div>
                <div class="pic">
                    <img alt="thumbnail" src="/Portals/_default/ContentBuilder/minis-page/our-team-single03/ourteam-single03-img07.jpg"></div>
            </div>
            <div class="text edit-box">
                <h6 class="title">Won the excellent designer award</h6>
                <p>Morbi volutpat quis velit in suscipit. Nullam convallis ex eu ornare varius.</p>
            </div>
        </li>
        <li class="item">
            <div class="main">
                <div class="time">
                    <span>2012</span>
                </div>
                <div class="pic">
                    <img alt="thumbnail" src="/Portals/_default/ContentBuilder/minis-page/our-team-single03/ourteam-single03-img08.jpg"></div>
            </div>
            <div class="text edit-box">
                <h6 class="title">Became a member of DnnGo</h6>
                <p>Ut nec purus turpis. Suspendisse in lacinia mi. Suspendisse volutpat nunc lorem.</p>
            </div>
        </li>
        <li class="item">
            <div class="main">
                <div class="time">
                    <span>2010</span>
                </div>
                <div class="pic">
                    <img alt="thumbnail" src="/Portals/_default/ContentBuilder/minis-page/our-team-single03/ourteam-single03-img09.jpg"></div>
            </div>
            <div class="text edit-box">
                <h6 class="title">Graduated from University of Cambridge</h6>
                <p>Vivamus efficitur posuere velit, vulputate molestie lectus malesuada vitae.</p>
            </div>
        </li>
    </ul>
	<style class="build-css" data-class="timeline-04">
	.timeline-04 {
		position: relative;
		display: flex;
		flex-wrap: wrap;
		flex-direction: row-reverse;
		margin: 0 0 75px;
		padding: 0;
		list-style: none;
	}

	.timeline-04 .item {
		display: flex;
		align-items: start;
		position: relative;
		z-index: 1;
		transform: translate3d(-8px, 0, 0);
		width: 50%;
	}

	.timeline-04 .item p {
		line-height: inherit
	}

	.timeline-04 .item .main {
		display: flex;
		align-items: center;
	}

	.timeline-04 .item .time {
		position: relative;
		padding: 5px 0;
		background-color: #fff;
	}

	.timeline-04 .item .time:before {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		width: 8px;
		height: 8px;
		border-radius: 50%;
		background-color: #fff;
		margin: auto;
	}

	.timeline-04 .item .time span {
		position: absolute;
		left: 100%;
		bottom: 12px;
		width: 110px;
		padding: 0 9px;
		font-weight: 600;
		color: #333;
		line-height: 30px;
		border-bottom: 1px solid var(--accent-color);
	}

	.timeline-04 .item .time:after {
		content: "";
		display: block;
		width: 16px;
		height: 16px;
		border-radius: 50%;
		background-color: var(--accent-color);
	}

	.timeline-04 .item .title {
		line-height: 30px;
		margin-bottom: 19px;
		margin-top: 10px;
		padding: 0 35px 0 0;
	}

	.timeline-04 .item .pic {
		position: relative;
		padding: 5px;
		margin-left: 110px;
		color: var(--accent-color);
		width: 140px;
		height: 140px;
		flex: 0 0 140px;
	}

	.timeline-04 .item .pic img {
		border-radius: 50%;
	}

	.timeline-04 .item .pic:before {
		content: "";
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		border: 2px solid currentColor;
		border-top-color: transparent;
		border-right-color: transparent;
		border-radius: 50%;
		transform: rotate(45deg);
		pointer-events: none;
	}

	.timeline-04 .item .text {
		padding: 0 0 0 25px;
	}

	.timeline-04:before {
		position: absolute;
		left: 50%;
		top: 88px;
		bottom: -26px;
		width: 3px;
		background-color: var(--accent-color);
		margin-left: -1px;
		content: "";
	}

	.timeline-04 .item:nth-of-type(even) {
		flex-direction: row-reverse;
		transform: translate3d(8px, 75px, 0);
		margin-bottom: 50px;
	}

	.timeline-04 .item:nth-of-type(even) .main {
		flex-direction: row-reverse;
	}

	.timeline-04 .item:nth-of-type(even) .pic {
		margin-right: 110px;
		margin-left: 0;
	}

	.timeline-04 .item:nth-of-type(even) .time span {
		left: auto;
		right: 100%;
		text-align: right;
	}

	.timeline-04 .item:nth-of-type(even) .pic:before {
		transform: rotate(-135deg);
	}

	.timeline-04 .item:nth-of-type(even) .text {
		text-align: right;
		padding: 0 25px 0 0;
	}

	.timeline-04 .item:nth-of-type(even) .title {
		padding: 0 0 0 35px;
	}

	.timeline-04 .item:nth-of-type(4n+1) .time:after {
		background-color: var(--accent-color);
	}

	.timeline-04 .item:nth-of-type(4n+1) .time span {
		border-color: var(--accent-color);
	}

	.timeline-04 .item:nth-of-type(4n+1) .pic {
		color: var(--accent-color);
	}

	.timeline-04 .item:nth-of-type(4n+2) .time:after {
		background-color: var(--accent-color2);
	}

	.timeline-04 .item:nth-of-type(4n+2) .time span {
		border-color: var(--accent-color2);
	}

	.timeline-04 .item:nth-of-type(4n+2) .pic {
		color: var(--accent-color2);
	}

	.timeline-04 .item:nth-of-type(4n+3) .time:after {
		background-color: var(--accent-color3);
	}

	.timeline-04 .item:nth-of-type(4n+3) .time span {
		border-color: var(--accent-color3);
	}

	.timeline-04 .item:nth-of-type(4n+3) .pic {
		color: var(--accent-color3);
	}

	.timeline-04 .item:nth-of-type(4n) .time:after {
		background-color: var(--accent-color4);
	}

	.timeline-04 .item:nth-of-type(4n) .time span {
		border-color: var(--accent-color4);
	}

	.timeline-04 .item:nth-of-type(4n) .pic {
		color: var(--accent-color4);
	}

	@media (max-width: 1199px) {
		.timeline-04 .item .time span {
			width: 60px;
		}

		.timeline-04 .item .pic {
			margin-left: 60px;
		}

		.timeline-04 .item:nth-of-type(even) .pic {
			margin-right: 60px;
		}

		.timeline-04 .item .title,
		.timeline-04 .item:nth-of-type(even) .title {
			padding: 0;
		}
	}

	@media (max-width: 991px) {
		.timeline-04 {
			margin-bottom: 0;
		}

		.timeline-04 .item {
			width: 100%;
			transform: translate3d(0, 0, 0);
			margin-bottom: 50px;
		}

		.timeline-04:before {
			left: 8px;
		}

		.timeline-04 .item:nth-of-type(even) {
			flex-direction: row;
			transform: translate3d(0, 0, 0);
		}

		.timeline-04 .item:nth-of-type(even) .main {
			flex-direction: row;
		}

		.timeline-04 .item:nth-of-type(even) .time span {
			left: 100%;
			right: auto;
			text-align: left;
		}

		.timeline-04 .item:nth-of-type(even) .pic {
			margin-left: 60px;
			margin-right: 0;
		}

		.timeline-04 .item:nth-of-type(even) .pic:before {
			transform: rotate(45deg);
		}

		.timeline-04 .item:nth-of-type(even) .text {
			text-align: left;
			padding: 0 0 0 25px;
		}

		.timeline-04 .item:last-child {
			margin-bottom: 0;
		}
	}

	@media (max-width: 767px) {

		.timeline-04 .item,
		.timeline-04 .item:nth-of-type(even) {
			margin-bottom: 30px;
		}

		.timeline-04:before {
			top: 56px;
			bottom: 0;
		}

		.timeline-04 .item .text,
		.timeline-04 .item:nth-of-type(even) .text {
			padding: 0 0 0 10px
		}

		.timeline-04 .item .pic {
			width: 75px;
			height: 75px;
			flex: 0 0 75px;
		}
	}
	</style>
	`}
)


// chart
data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/chart/chart01.jpg',
	'category': '818',
	'name': 'chart01',
	'html': `<div class="row text-center">
	<div class="col-md-4">
		<div class="chart01">
			<div class="custom-module active loading" id="module-{id}" data-moduleid="{id}" data-effect="chart"
			 data-percent="" data-html="false" data-noedit="true" data-module-desc="chart" data-module="shortcode"
			 data-settings="%7B%22number%22%3A%2290%22%2C%22color%22%3A%22%23fb7c35%22%7D"></div>
			<h6>Photoshop</h6>
		</div>
	</div>
	<div class="col-md-4">
		<div class="chart01">
			<div class="custom-module active loading" id="module-{id}" data-moduleid="{id}" data-effect="chart"
			 data-percent="" data-html="false" data-noedit="true" data-module-desc="chart" data-module="shortcode"
			 data-settings="%7B%22number%22%3A%2280%22%2C%22color%22%3A%22%23523ee8%22%7D"></div>
			<h6>JavaScript</h6>
		</div>
	</div>
	<div class="col-md-4">
		<div class="chart01">
			<div class="custom-module active loading" id="module-{id}" data-moduleid="{id}" data-effect="chart"
			 data-percent="" data-html="false" data-noedit="true" data-module-desc="chart" data-module="shortcode"
			 data-settings="%7B%22number%22%3A%2295%22%2C%22color%22%3A%22%231abc9c%22%7D"></div>
			<h6>PHP</h6>
		</div>
	</div>
</div><style data-class="chart01" class="build-css">
.chart01 {
	margin: 0 0 30px;
}
.chart01 .chart {
	width: 150px;
	display: inline-block;
	position: relative;
	margin-bottom: 10px;
}
.chart01 .decorate,
.chart01 .decorate canvas{
	color: currentColor;
}
.chart01 .chart .text {
	position: absolute;
	top: 50%;
	left: 0;
	width: 100%;
	text-align: center;
	height: 42px;
	line-height: 1;
	margin-top: -19px;
	font-size: 42px;
	font-weight: 700;
	color: #333333;
}
.is-light-text .chart01 .chart .text {
	color: #FFF;
}
.chart01 .chart .text sup {
	font-size: 24px;
}
</style>`
})

data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/modal/modal.jpg',
	'category': '727',
	'name': 'modal',
	'html': `<div class="custom-module d-custom-active loading" id="module-{id}" data-moduleid="{id}" data-effect="modal" data-html="" data-noedit="true" data-module-desc="Modal" data-module="shortcode" data-settings="%7B%22number%22%3A%2220%22%2C%22plus%22%3A%22checked%22%2C%22title%22%3A%22Modal%20title%22%2C%22content%22%3A%22%3Cp%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetuer%20adipiscing%20elit.%20Aenean%20commodo%20ligula%20eget%20dolor.%20Aenean%20massa.%20Cum%20sociis%20natoque%20penatibus%20et%20magnis%20dis%20parturient%20montes%2C%20nascetur%20ridiculus%20mus.%20Donec%20quam%20felis%2C%20ultricies%20nec%2C%20pellentesque%20eu%2C%20pretium%20quis%2C%20sem.%20Nulla%20consequat%20massa%20quis%20enim.%20Donec%20pede%20justo%2C%20fringilla%20vel%2C%20aliquet%20nec%2C%20vulputate%3C%2Fp%3E%22%2C%22size%22%3A%22size-full%22%2C%22contentsize%22%3A%22size-large%22%2C%22canceltext%22%3A%22Cancel%22%7D"></div>`
});

//My Module

data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/AddModule/AddModule.jpg',
	'category': '990',
	'name': 'AddModule',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.AddModule" data-template="AddModule" data-moduleid="{id}" class="custom-module loading" data-html="" data-noedit="true" data-module="shortcode" data-settings="%7B%22ModuleBind%22%3A%22Loader%22%7D">Please click the setting button to choose the source of the module.</div>`
});



data_basic.snippets.push({
	'thumbnail': '/minis-shortcode/token/Tokens_logo.jpg',
	'category': '766',
	'name': 'MyToken',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.MyToken" data-template="Token" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="" data-module-desc="Token">Token (please click the settings icon to add a token)</div>`
})

data_basic.snippets.push({
	'thumbnail': 'minis-shortcode/AddModule/FormBuilder.jpg',
	'category': '991',
	'name': 'FormBuilder',
	'html': `<div data-cb-module="true" data-modulename="DNNGo.FormBuilder" data-template="FormBuilder" data-moduleid="{id}" class="validationEngineContainer custom-module loading" data-html="" data-settings="">Please click the setting button to choose the source of the form.</div>`
})