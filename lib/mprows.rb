require 'savon'
require "mprows/version"
require 'mprows/order_request'
require 'mprows/cancel'
require 'mprows/results'
module Mprows
	class Generator
    
    BASE_URI = "http://192.168.1.79/webservicempro/Documento.asmx?wsdl"
    
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
