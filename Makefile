pool_id ?= us-west-2_hfZMCSkV4
client_id ?= 3fpd1vp9cckf8601ornklfl5br
css_content := $(shell tr -d '\n' < overresponse-auth.css)

set-test:
	echo "${css_content}"

set:
	aws cognito-idp set-ui-customization \
		--user-pool-id us-west-2_hfZMCSkV4 \
		--client-id ALL \
		--css "${css_content}" \
		--region us-west-2 \
		--image-file fileb://./logo-overresponse-white-small.png
