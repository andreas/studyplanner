require 'xsd/qname'

# {http://www.arcanic.dk/}ApplyDescriptions
class ApplyDescriptions
  attr_accessor :workFlowXML

  def initialize(workFlowXML = nil)
    @workFlowXML = workFlowXML
  end
end

# {http://www.arcanic.dk/}ApplyDescriptionsResponse
class ApplyDescriptionsResponse
  attr_accessor :applyDescriptionsResult

  def initialize(applyDescriptionsResult = nil)
    @applyDescriptionsResult = applyDescriptionsResult
  end
end

# {http://www.arcanic.dk/}CourseCatalogVersions
class CourseCatalogVersions
  def initialize
  end
end

# {http://www.arcanic.dk/}CourseCatalogVersionsResponse
class CourseCatalogVersionsResponse
  attr_accessor :courseCatalogVersionsResult

  def initialize(courseCatalogVersionsResult = nil)
    @courseCatalogVersionsResult = courseCatalogVersionsResult
  end
end

# {http://www.arcanic.dk/}GetAdmTxt
class GetAdmTxt
  def initialize
  end
end

# {http://www.arcanic.dk/}GetAdmTxtResponse
class GetAdmTxtResponse
  attr_accessor :getAdmTxtResult

  def initialize(getAdmTxtResult = nil)
    @getAdmTxtResult = getAdmTxtResult
  end
end

# {http://www.arcanic.dk/}GetBasket
class GetBasket
  attr_accessor :matrikelId

  def initialize(matrikelId = nil)
    @matrikelId = matrikelId
  end
end

# {http://www.arcanic.dk/}GetBasketResponse
class GetBasketResponse
  attr_accessor :getBasketResult

  def initialize(getBasketResult = nil)
    @getBasketResult = getBasketResult
  end
end

# {http://www.arcanic.dk/}GetCatalogVersionSelection
class GetCatalogVersionSelection
  def initialize
  end
end

# {http://www.arcanic.dk/}GetCatalogVersionSelectionResponse
class GetCatalogVersionSelectionResponse
  attr_accessor :getCatalogVersionSelectionResult

  def initialize(getCatalogVersionSelectionResult = nil)
    @getCatalogVersionSelectionResult = getCatalogVersionSelectionResult
  end
end

# {http://www.arcanic.dk/}GetCourse
class GetCourse
  attr_accessor :courseCode
  attr_accessor :yearGroup

  def initialize(courseCode = nil, yearGroup = nil)
    @courseCode = courseCode
    @yearGroup = yearGroup
  end
end

# {http://www.arcanic.dk/}GetCourseResponse
class GetCourseResponse
  attr_accessor :getCourseResult

  def initialize(getCourseResult = nil)
    @getCourseResult = getCourseResult
  end
end

# {http://www.arcanic.dk/}GetCourseDescriptions
class GetCourseDescriptions
  attr_accessor :courseNumbers
  attr_accessor :yearGroup

  def initialize(courseNumbers = nil, yearGroup = nil)
    @courseNumbers = courseNumbers
    @yearGroup = yearGroup
  end
end

# {http://www.arcanic.dk/}GetCourseDescriptionsResponse
class GetCourseDescriptionsResponse
  attr_accessor :getCourseDescriptionsResult

  def initialize(getCourseDescriptionsResult = nil)
    @getCourseDescriptionsResult = getCourseDescriptionsResult
  end
end

# {http://www.arcanic.dk/}GetLabels
class GetLabels
  def initialize
  end
end

# {http://www.arcanic.dk/}GetLabelsResponse
class GetLabelsResponse
  attr_accessor :getLabelsResult

  def initialize(getLabelsResult = nil)
    @getLabelsResult = getLabelsResult
  end
end

# {http://www.arcanic.dk/}InsertIntoMyBasket
class InsertIntoMyBasket
  attr_accessor :matrikelId
  attr_accessor :courseCode
  attr_accessor :yearGroup
  attr_accessor :password

  def initialize(matrikelId = nil, courseCode = nil, yearGroup = nil, password = nil)
    @matrikelId = matrikelId
    @courseCode = courseCode
    @yearGroup = yearGroup
    @password = password
  end
end

# {http://www.arcanic.dk/}InsertIntoMyBasketResponse
class InsertIntoMyBasketResponse
  def initialize
  end
end

# {http://www.arcanic.dk/}GetKeyValues
class GetKeyValues
  def initialize
  end
end

# {http://www.arcanic.dk/}GetKeyValuesResponse
class GetKeyValuesResponse
  attr_accessor :getKeyValuesResult

  def initialize(getKeyValuesResult = nil)
    @getKeyValuesResult = getKeyValuesResult
  end
end

# {http://www.arcanic.dk/}RemoveFromBasket
class RemoveFromBasket
  attr_accessor :coursesToRemove
  attr_accessor :yearGroup
  attr_accessor :id
  attr_accessor :password

  def initialize(coursesToRemove = nil, yearGroup = nil, id = nil, password = nil)
    @coursesToRemove = coursesToRemove
    @yearGroup = yearGroup
    @id = id
    @password = password
  end
end

# {http://www.arcanic.dk/}RemoveFromBasketResponse
class RemoveFromBasketResponse
  def initialize
  end
end

# {http://www.arcanic.dk/}SearchDtuShb
class SearchDtuShb
  attr_accessor :courseCode
  attr_accessor :searchWords
  attr_accessor :department
  attr_accessor :teachingPeriod
  attr_accessor :courseCatalogVersion
  attr_accessor :courseCodeStart
  attr_accessor :teachingLanguage
  attr_accessor :courseIDList
  attr_accessor :resultType
  attr_accessor :education
  attr_accessor :courseType
  attr_accessor :masterRegular
  attr_accessor :openUniversity

  def initialize(courseCode = nil, searchWords = nil, department = nil, teachingPeriod = nil, courseCatalogVersion = nil, courseCodeStart = nil, teachingLanguage = nil, courseIDList = nil, resultType = nil, education = nil, courseType = nil, masterRegular = nil, openUniversity = nil)
    @courseCode = courseCode
    @searchWords = searchWords
    @department = department
    @teachingPeriod = teachingPeriod
    @courseCatalogVersion = courseCatalogVersion
    @courseCodeStart = courseCodeStart
    @teachingLanguage = teachingLanguage
    @courseIDList = courseIDList
    @resultType = resultType
    @education = education
    @courseType = courseType
    @masterRegular = masterRegular
    @openUniversity = openUniversity
  end
end

# {http://www.arcanic.dk/}SearchDtuShbResponse
class SearchDtuShbResponse
  attr_accessor :searchDtuShbResult

  def initialize(searchDtuShbResult = nil)
    @searchDtuShbResult = searchDtuShbResult
  end
end
