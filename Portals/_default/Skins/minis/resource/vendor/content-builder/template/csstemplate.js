var csstemplate = {
    "btn-01":`
        body .btn-01,
		body .btn-01:link,
		body .btn-01:active,
		body .btn-01:visited,
		body .btn-01[type="button"],
		body .btn-01[type="submit"] {
			display: inline-block;
			font-size: 16px;
			color: #fff;
			padding: 0 30px;
			background-color: #1abc9c;
			transition: all .3s cubic-bezier(0.22, 0.61, 0.36, 1);
		}
		body .btn-01 * {
			color: #fff;
		}
		body .btn-01:hover{
			background-color: #00aa89;
		}
		body .box-shadow.btn-01,
		body .box-shadow.btn-01:link,
		body .box-shadow.btn-01:active,
		body .box-shadow.btn-01:visited,
		body .box-shadow.btn-01[type="button"],
		body .box-shadow.btn-01[type="submit"]{
			box-shadow: 0 0 8px #1abc9c;
		}
    `,
}