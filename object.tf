resource "aws_s3_object" "index"{
	bucket = "c180471-ditiss-project"
	key = "index.html"
	source = "index.html"
	acl = "private"
	content_type = "text/html"

}

resource "aws_s3_object" "error" {
	bucket = "c180471-ditiss-project"
	key = "error.html"
	source = "error.html"
	acl = "private"
	content_type = "text/html"
}

resource "aws_s3_object" "style" {
	bucket = "c180471-ditiss-project"
	key = "style.css"
	source = "style.css"
	acl = "private"
	content_type = "text/css"
}


resource "aws_s3_object" "script" {
	bucket = "c180471-ditiss-project"
	key = "script.js"
	source = "script.js"
	acl = "private"
	content_type = "text/javascript"
}

resource "aws_s3_bucket_website_configuration" "website" {
	bucket = "c180471-ditiss-project"
	index_document {
		suffix = "index.html"
		}
	
	error_document {
		key = "error.html"
		}
	depends_on = [
		aws_s3_object.index,
		aws_s3_object.error,
		aws_s3_object.style,
		aws_s3_object.script
		]

}