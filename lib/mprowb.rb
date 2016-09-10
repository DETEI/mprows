require 'savon'
require "mprowb/version"
require 'mprowb/order_request'
require 'mprowb/cancel'
require 'mprowb/results'

module Mprowb
	class Generator
    
    BASE_URI = "http://192.168.0.136/webservicempro/Documento.asmx?wsdl"
    
    ## 
    # Attributo accesible (lectura y escritura)
    attr_accessor :client

    ##
    # Se inicializa la clase con un usuario y su respectivo cliente con el soap
    def initialize
      @client = Savon.client(wsdl: BASE_URI,convert_request_keys_to: :none)
    end

    ##
    # Method for generate HTTP Request post
    def request(function, xml)
      operation = function.intern
      @client.call(operation) do
      	 message(DOCUMENTO: xml)
      end
    end
	end
end
