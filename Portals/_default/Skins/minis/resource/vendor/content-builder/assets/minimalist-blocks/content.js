/* v1 */
function _tabs(n) {
	var html = '';
	for (var i = 1; i <= n; i++) {
		html += '\t';
	}
	return '\n' + html;
}
// source: https: //stackoverflow.com/questions/2255689/how-to-get-the-file-path-of-the-currently-executing-javascript-code
function _path() {

	return image_path + 'minimalist/';
}

function _path2() {
	var scripts = document.querySelectorAll('script[src]');
	var currentScript = scripts[scripts.length - 1].src;
	var currentScriptChunks = currentScript.split('/');
	var currentScriptFile = currentScriptChunks[currentScriptChunks.length - 1];

	return currentScript.replace(currentScriptFile, '');

}


var _snippets_path = _path();






var data_basic = {
	'snippets': [

		{
			'thumbnail': 'preview/basic-01.png',
			'category': '120',
			'html': `<h1>Beautiful Content. Responsive.</h1>
				<p><i>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</i></p>
				`
		},

		{
			'thumbnail': 'preview/basic-02.png',
			'category': '120',
			'html': `<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>`
		},

		{
			'thumbnail': 'preview/basic-03.png',
			'category': '120',
			'html': `<h1>Heading 1 Text Goes Here.</h1>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>`
		},

		{
			'thumbnail': 'preview/basic-04.png',
			'category': '120',
			'html': `
				<h2>Heading 2 Text Goes Here.</h2>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
			`
		},

		{
			'thumbnail': 'preview/basic-05.png',
			'category': '120',
			'html': `<img src="${image_path}minimalist/images/oleg-laptev-545268-unsplash-VD7ll2.jpg" class="img-Lazy">`
		},

		{
			'thumbnail': 'preview/basic-06.png',
			'category': '120',
			'html': `<div class="row">
					<div class="col-md-6">
						<img src="${image_path}minimalist/images/jon-lalin-731093-unsplash-(1)-tdmMt1.jpg" class="img-Lazy">
					</div>
					<div class="col-md-6">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
					</div>
				</div>`
		},

		{
			'thumbnail': 'preview/basic-07.png',
			'category': '120',
			'html': `<div class="row">
					<div class="col-md-6">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
					</div>
					<div class="col-md-6">
						<img src="${image_path}minimalist/images/adam-birkett-209727-unsplash-(2)-H2BMm1.jpg" class="img-Lazy">
					</div>
				</div>`
		},
		{
			'thumbnail': 'preview/basic-08.png',
			'category': '120',
			'html': `<div class="row">
					<div class="col-md-6">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
					</div>
					<div class="col-md-6">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
					</div>
				</div>`
		},

		{
			'thumbnail': 'preview/basic-09.png',
			'category': '120',
			'html': `<h1>Lorem Ipsum is simply dummy text of the printing industry</h1>`
		},

		{
			'thumbnail': 'preview/basic-10.png',
			'category': '120',
			'html': `<p>This is a special report</p>
				<h1>Lorem Ipsum is simply dummy text of the printing industry</h1>`
		},

		{
			'thumbnail': 'preview/basic-11.png',
			'category': '120',
			'html': `<h2 class="size-48">Lorem Ipsum is simply dummy text</h2>`
		},

		{
			'thumbnail': 'preview/basic-12.png',
			'category': '120',
			'html': `<div class="spacer height-80"></div>`
		},

		{
			'thumbnail': 'preview/basic-13.png',
			'category': '120',
			'html': `<hr>`
		},

		{
			'thumbnail': 'preview/basic-14.png',
			'category': '120',
			'html': `<div class="row">
			<div class="col-md-6">
				<div class="list">
					<i class="fas fa-check"></i>
					<h3>List Item</h3>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="list">
					<i class="fas fa-check"></i>
					<h3>List Item</h3>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
		</div>`
		},

		{
			'thumbnail': 'preview/basic-15.png',
			'category': '120',
			'html': `<div class="is-social">
				<a href="https://twitter.com/"><i class="fab fa-twitter" style="margin-right: 1em"></i></a>
				<a href="https://www.facebook.com/"><i class="fab fa-facebook-f" style="margin-right: 1em"></i></a>
				<a href="mailto:you@example.com"><i class="fas fa-envelope"></i></a>
				</div>`
		},

		{
			'thumbnail': 'preview/basic-16.png',
			'category': '120',
			'html': '<div class="is-rounded-button-medium" style="margin:1em 0">' +
				'<a href="https://twitter.com/" style="background-color: #00bfff;"><i class="fab fa-twitter"></i></a>' +
				'<a href="https://www.facebook.com/" style="background-color: #128BDB"><i class="fab fa-facebook-f"></i></a>' +
				'<a href="mailto:you@example.com" style="background-color: #DF311F"><i class="fas fa-envelope"></i></a>' +
				'</div>&nbsp;'
		},

		/* Video */
		{
			'thumbnail': 'preview/element-video.png',
			'category': '120',
			'html': '<div class="embed-responsive embed-responsive-16by9">' +
				'<iframe width="560" height="315" class="iframe-Lazy" src="//www.youtube.com/embed/P5yHEKqx86U?rel=0" frameborder="0" allowfullscreen=""></iframe>' +
				'</div>'
		},

		/* Map */
		{
			'thumbnail': 'preview/element-map.png',
			'category': '120',
			'html': '<div class="embed-responsive embed-responsive-16by9">' +
				'<iframe width="100%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" class="iframe-Lazy mg1" src="https://maps.google.com/maps?q=Melbourne,+Victoria,+Australia&amp;hl=en&amp;sll=-7.981898,112.626504&amp;sspn=0.009084,0.016512&amp;oq=melbourne&amp;hnear=Melbourne+Victoria,+Australia&amp;t=m&amp;z=10&amp;output=embed"></iframe>' +
				'</div>'
		},
		/* HTML5 Video */
		{
			'thumbnail': 'preview/element-HTML5Video.jpg',
			'category': '120',
			'html': `<div class="embed-responsive embed-responsive-16by9">
						<video controls>
							<source src="/Portals/_default/ContentBuilder/videos/example1.mp4" type="video/mp4">
						</video>
					</div>`
		},

		/* Slider 
		{
			'thumbnail': 'preview/element-slider.png',
			'category': '120',
			'html': '<div class="row clearfix">' +
				'<div class="column full" data-noedit data-module="slider" data-module-desc="Slider" data-html="' +

				encodeURIComponent('<div id="{id}" class="slider-on-content" style="width:100%;height:500px;display:none">' +
					'<div class="is-boxes slider-image" style="background-image: url(\'' + image_path + 'minimalist/images/slide1.jpg\');">' +
					'</div>' +
					'<div class="is-boxes slider-image" style="background-image: url(\'' + image_path + 'minimalist/images/slide2.jpg\');">' +
					'</div>' +
					'<div class="is-boxes slider-image" style="background-image: url(\'' + image_path + 'minimalist/images/slide3.jpg\');">' +
					'</div>' +
					'</div>' +
					'' +
					'<scr' + 'ipt>' +
					'var docReady = function (fn) {' +
					'var stateCheck = setInterval(function () {' +
					'if (document.readyState !== "complete") return;' +
					'clearInterval(stateCheck);' +
					'try { fn() } catch (e) { }' +
					'}, 1);' +
					'};' +
					'docReady(function () {' +
					'jQuery("#{id}").css("display","block");' +
					'jQuery("#{id}").slick({' +
					'dots: true,' +
					'arrows: true,' +
					'infinite: true,' +
					'speed: 500,' +
					'cssEase: "linear",' +
					'slidesToShow: 1,' +
					'autoplay: false,' +
					'autoplaySpeed: 3000,' +
					'fade: false,' +
					'adaptiveHeight: true,' +
					'responsive: [' +
					'{breakpoint: 480, settings: {arrows: false,slidesToShow: 1}}' +
					']' +
					'});' +
					'});' +
					'</scr' + 'ipt>' +
					'') +

				'" data-settings="' +

				encodeURIComponent('[' +
					'{' +
					'"auto":false,' +
					'"arrow":true,' +
					'"dots":true,' +
					'"fade":false,' +
					'"height":"500",' +
					'"images":' +
					'[' +
					'{' +
					'"src": "' + image_path + 'minimalist/images/slide1.jpg", ' +
					'"caption": "", "link": "", "width": "450", "align": "", "position": "bottom left"' +
					'},' +
					'{' +
					'"src": "' + image_path + 'minimalist/images/slide2.jpg", ' +
					'"caption": "", "link": "", "width": "450", "align": "", "position": "bottom left"' +
					'},' +
					'{' +
					'"src": "' + image_path + 'minimalist/images/slide3.jpg", ' +
					'"caption": "", "link": "", "width": "450", "align": "", "position": "bottom left"' +
					'}' +
					']' +
					'}]') + '"' +

				'>' +

				'</div>' +
				'</div>'
		},*/
		{
			'thumbnail': 'preview/element-code.png',
			'category': '120',
			'html': '<div class="custom-module loading" id="module-{id}" data-moduleid="{id}" data-effect="html-js-css" data-module-desc="HTML JS CSS" data-module="shortcode" data-settings="%7B%22html_js_css%22%3A%22%3Ch1%3EHello%20World..!%3C%2Fh1%3E%5Cn%3Cp%3EThis%20is%20a%20code%20block.%20You%20can%20edit%20this%20block%20using%20the%20source%20dialog.%3C%2Fp%3E%22%7D"></div>'
		},


	]

};