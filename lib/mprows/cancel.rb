module Mprows
	class Generator

		def cancelOrder(xml)
		 response = request("cancela_documento", xml)
         parse_result_cancelOrder response.body
	    end
	    
	end
end 
