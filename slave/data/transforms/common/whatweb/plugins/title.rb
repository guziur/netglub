##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Title" do
author "Andrew Horton"
version "0.1"
description "The HTML page title"
examples %w| www.google.com |


#

def passive
	m=[]
 	if @body =~ /<title>[^<]+<\/title>/i
                title=@body.scan(/<title>([^<]+)<\/title>/i)[0][0]                
                m << {:probability=>100,:name=>"page title",:string=>title} 
    end
 	m
end

end
