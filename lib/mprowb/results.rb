module Mprowb
	class Generator
		def parse_result_generateOrder(result)
			object_result=result[:recibe_documento_response][:recibe_documento_result].to_s
    		result_xml = Nokogiri::XML(object_result)
    		result_xml.remove_namespaces!
    		{
    	    message: (result_xml.xpath("//Mensaje").text).encode("utf-8")
      		}
	    end


	    def parse_result_cancelOrder(result)
			object_result=result[:cancela_documento_response][:cancela_documento_result].to_s
    		result_xml = Nokogiri::XML(object_result)
    		result_xml.remove_namespaces!
    		{
    	    message: (result_xml.xpath("//Mensaje").text).encode("utf-8")
      		}
	    end
	end
end 
