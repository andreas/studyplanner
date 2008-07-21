require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class CourseSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://preproduction.kurser.dtu.arcanic.dk/CourseWebservice/Course.asmx"

  Methods = [
    [ "http://www.arcanic.dk/ApplyDescriptions",
      "applyDescriptions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "ApplyDescriptions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "ApplyDescriptionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/CourseCatalogVersions",
      "courseCatalogVersions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "CourseCatalogVersions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "CourseCatalogVersionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetAdmTxt",
      "getAdmTxt",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetAdmTxt"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetAdmTxtResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetBasket",
      "getBasket",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetBasket"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetBasketResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetCatalogVersionSelection",
      "getCatalogVersionSelection",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetCatalogVersionSelection"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetCatalogVersionSelectionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetCourse",
      "getCourse",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetCourse"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetCourseResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetCourseDescriptions",
      "getCourseDescriptions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetCourseDescriptions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetCourseDescriptionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetLabels",
      "getLabels",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetLabels"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetLabelsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/InsertIntoMyBasket",
      "insertIntoMyBasket",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "InsertIntoMyBasket"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "InsertIntoMyBasketResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/GetKeyValues",
      "getKeyValues",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetKeyValues"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "GetKeyValuesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/RemoveFromBasket",
      "removeFromBasket",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "RemoveFromBasket"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "RemoveFromBasketResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "http://www.arcanic.dk/SearchDtuShb",
      "searchDtuShb",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "SearchDtuShb"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.arcanic.dk/", "SearchDtuShbResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end



