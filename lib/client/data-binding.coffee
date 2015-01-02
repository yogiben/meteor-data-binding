$(document).on "click keydown keyup change", "[mb-key]", (e) ->
	$e = $(e.currentTarget)

	#check whether to continue
	if $e.attr('mb-on')
		mbOn = $e.attr('mb-on').split(',')
	else
		mbOn = ['click']

	if _.contains mbOn, e.type
		console.log 'yes!'

		#Execute
		key = $e.attr 'mb-key'
		value = $e.attr('mb-value') || $e.val()



		if $e.attr 'mb-return'
			mbReturn = $e.attr('mb-return')

			mbReturn = mbReturn.replace('x','value')

			value = eval(mbReturn)

		console.log 'Session.set("' + key + '","' + value + '")'
		Session.set key, value




###
Click, keydown, keyup,...

mb-on="click,change,keyup"

	default to click

mb-key="key"

mb-value="value"

mb-operation="push,pull,set"

to 

set
pull
###