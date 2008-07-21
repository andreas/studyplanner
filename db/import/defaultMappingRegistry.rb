require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  LiteralRegistry.register(
    :class => ApplyDescriptions,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "ApplyDescriptions",
    :schema_qualified => true,
    :schema_element => [
      ["workFlowXML", [nil, XSD::QName.new("http://www.arcanic.dk/", "WorkFlowXML")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplyDescriptionsResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "ApplyDescriptionsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["applyDescriptionsResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "ApplyDescriptionsResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => CourseCatalogVersions,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "CourseCatalogVersions",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => CourseCatalogVersionsResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "CourseCatalogVersionsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["courseCatalogVersionsResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "CourseCatalogVersionsResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAdmTxt,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetAdmTxt",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetAdmTxtResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetAdmTxtResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getAdmTxtResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetAdmTxtResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBasket,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetBasket",
    :schema_qualified => true,
    :schema_element => [
      ["matrikelId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetBasketResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetBasketResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getBasketResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetBasketResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCatalogVersionSelection,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetCatalogVersionSelection",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetCatalogVersionSelectionResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetCatalogVersionSelectionResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getCatalogVersionSelectionResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetCatalogVersionSelectionResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCourse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetCourse",
    :schema_qualified => true,
    :schema_element => [
      ["courseCode", "SOAP::SOAPString"],
      ["yearGroup", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCourseResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetCourseResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getCourseResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetCourseResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCourseDescriptions,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetCourseDescriptions",
    :schema_qualified => true,
    :schema_element => [
      ["courseNumbers", "SOAP::SOAPString"],
      ["yearGroup", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCourseDescriptionsResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetCourseDescriptionsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getCourseDescriptionsResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetCourseDescriptionsResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetLabels,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetLabels",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetLabelsResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetLabelsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getLabelsResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetLabelsResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => InsertIntoMyBasket,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "InsertIntoMyBasket",
    :schema_qualified => true,
    :schema_element => [
      ["matrikelId", "SOAP::SOAPString"],
      ["courseCode", ["SOAP::SOAPString", XSD::QName.new("http://www.arcanic.dk/", "CourseCode")]],
      ["yearGroup", ["SOAP::SOAPString", XSD::QName.new("http://www.arcanic.dk/", "YearGroup")]],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InsertIntoMyBasketResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "InsertIntoMyBasketResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetKeyValues,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetKeyValues",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetKeyValuesResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "GetKeyValuesResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getKeyValuesResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "GetKeyValuesResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveFromBasket,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "RemoveFromBasket",
    :schema_qualified => true,
    :schema_element => [
      ["coursesToRemove", "SOAP::SOAPString"],
      ["yearGroup", "SOAP::SOAPString"],
      ["id", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveFromBasketResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "RemoveFromBasketResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SearchDtuShb,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "SearchDtuShb",
    :schema_qualified => true,
    :schema_element => [
      ["courseCode", "SOAP::SOAPString"],
      ["searchWords", "SOAP::SOAPString"],
      ["department", "SOAP::SOAPString"],
      ["teachingPeriod", "SOAP::SOAPString"],
      ["courseCatalogVersion", "SOAP::SOAPString"],
      ["courseCodeStart", "SOAP::SOAPString"],
      ["teachingLanguage", "SOAP::SOAPString"],
      ["courseIDList", "SOAP::SOAPString"],
      ["resultType", "SOAP::SOAPString"],
      ["education", "SOAP::SOAPString"],
      ["courseType", ["SOAP::SOAPString", XSD::QName.new("http://www.arcanic.dk/", "CourseType")]],
      ["masterRegular", ["SOAP::SOAPString", XSD::QName.new("http://www.arcanic.dk/", "MasterRegular")]],
      ["openUniversity", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchDtuShbResponse,
    :schema_ns => "http://www.arcanic.dk/",
    :schema_name => "SearchDtuShbResponse",
    :schema_qualified => true,
    :schema_element => [
      ["searchDtuShbResult", [nil, XSD::QName.new("http://www.arcanic.dk/", "SearchDtuShbResult")]]
    ]
  )
end
