module Mprowb
	class Generator

		def generateOrder(xml)
		 response = request("recibe_documento", xml)
         parse_result_generateOrder response.body
	    end
	    
    end
end 
