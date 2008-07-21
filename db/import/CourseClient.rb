#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = CourseSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ApplyDescriptions(parameters)
#
# ARGS
#   parameters      ApplyDescriptions - {http://www.arcanic.dk/}ApplyDescriptions
#
# RETURNS
#   parameters      ApplyDescriptionsResponse - {http://www.arcanic.dk/}ApplyDescriptionsResponse
#
parameters = nil
puts obj.applyDescriptions(parameters)

# SYNOPSIS
#   CourseCatalogVersions(parameters)
#
# ARGS
#   parameters      CourseCatalogVersions - {http://www.arcanic.dk/}CourseCatalogVersions
#
# RETURNS
#   parameters      CourseCatalogVersionsResponse - {http://www.arcanic.dk/}CourseCatalogVersionsResponse
#
parameters = nil
puts obj.courseCatalogVersions(parameters)

# SYNOPSIS
#   GetAdmTxt(parameters)
#
# ARGS
#   parameters      GetAdmTxt - {http://www.arcanic.dk/}GetAdmTxt
#
# RETURNS
#   parameters      GetAdmTxtResponse - {http://www.arcanic.dk/}GetAdmTxtResponse
#
parameters = nil
puts obj.getAdmTxt(parameters)

# SYNOPSIS
#   GetBasket(parameters)
#
# ARGS
#   parameters      GetBasket - {http://www.arcanic.dk/}GetBasket
#
# RETURNS
#   parameters      GetBasketResponse - {http://www.arcanic.dk/}GetBasketResponse
#
parameters = nil
puts obj.getBasket(parameters)

# SYNOPSIS
#   GetCatalogVersionSelection(parameters)
#
# ARGS
#   parameters      GetCatalogVersionSelection - {http://www.arcanic.dk/}GetCatalogVersionSelection
#
# RETURNS
#   parameters      GetCatalogVersionSelectionResponse - {http://www.arcanic.dk/}GetCatalogVersionSelectionResponse
#
parameters = nil
puts obj.getCatalogVersionSelection(parameters)

# SYNOPSIS
#   GetCourse(parameters)
#
# ARGS
#   parameters      GetCourse - {http://www.arcanic.dk/}GetCourse
#
# RETURNS
#   parameters      GetCourseResponse - {http://www.arcanic.dk/}GetCourseResponse
#
parameters = nil
puts obj.getCourse(parameters)

# SYNOPSIS
#   GetCourseDescriptions(parameters)
#
# ARGS
#   parameters      GetCourseDescriptions - {http://www.arcanic.dk/}GetCourseDescriptions
#
# RETURNS
#   parameters      GetCourseDescriptionsResponse - {http://www.arcanic.dk/}GetCourseDescriptionsResponse
#
parameters = nil
puts obj.getCourseDescriptions(parameters)

# SYNOPSIS
#   GetLabels(parameters)
#
# ARGS
#   parameters      GetLabels - {http://www.arcanic.dk/}GetLabels
#
# RETURNS
#   parameters      GetLabelsResponse - {http://www.arcanic.dk/}GetLabelsResponse
#
parameters = nil
puts obj.getLabels(parameters)

# SYNOPSIS
#   InsertIntoMyBasket(parameters)
#
# ARGS
#   parameters      InsertIntoMyBasket - {http://www.arcanic.dk/}InsertIntoMyBasket
#
# RETURNS
#   parameters      InsertIntoMyBasketResponse - {http://www.arcanic.dk/}InsertIntoMyBasketResponse
#
parameters = nil
puts obj.insertIntoMyBasket(parameters)

# SYNOPSIS
#   GetKeyValues(parameters)
#
# ARGS
#   parameters      GetKeyValues - {http://www.arcanic.dk/}GetKeyValues
#
# RETURNS
#   parameters      GetKeyValuesResponse - {http://www.arcanic.dk/}GetKeyValuesResponse
#
parameters = nil
puts obj.getKeyValues(parameters)

# SYNOPSIS
#   RemoveFromBasket(parameters)
#
# ARGS
#   parameters      RemoveFromBasket - {http://www.arcanic.dk/}RemoveFromBasket
#
# RETURNS
#   parameters      RemoveFromBasketResponse - {http://www.arcanic.dk/}RemoveFromBasketResponse
#
parameters = nil
puts obj.removeFromBasket(parameters)

# SYNOPSIS
#   SearchDtuShb(parameters)
#
# ARGS
#   parameters      SearchDtuShb - {http://www.arcanic.dk/}SearchDtuShb
#
# RETURNS
#   parameters      SearchDtuShbResponse - {http://www.arcanic.dk/}SearchDtuShbResponse
#
parameters = nil
puts obj.searchDtuShb(parameters)


endpoint_url = ARGV.shift
obj = CourseSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ApplyDescriptions(parameters)
#
# ARGS
#   parameters      ApplyDescriptions - {http://www.arcanic.dk/}ApplyDescriptions
#
# RETURNS
#   parameters      ApplyDescriptionsResponse - {http://www.arcanic.dk/}ApplyDescriptionsResponse
#
parameters = nil
puts obj.applyDescriptions(parameters)

# SYNOPSIS
#   CourseCatalogVersions(parameters)
#
# ARGS
#   parameters      CourseCatalogVersions - {http://www.arcanic.dk/}CourseCatalogVersions
#
# RETURNS
#   parameters      CourseCatalogVersionsResponse - {http://www.arcanic.dk/}CourseCatalogVersionsResponse
#
parameters = nil
puts obj.courseCatalogVersions(parameters)

# SYNOPSIS
#   GetAdmTxt(parameters)
#
# ARGS
#   parameters      GetAdmTxt - {http://www.arcanic.dk/}GetAdmTxt
#
# RETURNS
#   parameters      GetAdmTxtResponse - {http://www.arcanic.dk/}GetAdmTxtResponse
#
parameters = nil
puts obj.getAdmTxt(parameters)

# SYNOPSIS
#   GetBasket(parameters)
#
# ARGS
#   parameters      GetBasket - {http://www.arcanic.dk/}GetBasket
#
# RETURNS
#   parameters      GetBasketResponse - {http://www.arcanic.dk/}GetBasketResponse
#
parameters = nil
puts obj.getBasket(parameters)

# SYNOPSIS
#   GetCatalogVersionSelection(parameters)
#
# ARGS
#   parameters      GetCatalogVersionSelection - {http://www.arcanic.dk/}GetCatalogVersionSelection
#
# RETURNS
#   parameters      GetCatalogVersionSelectionResponse - {http://www.arcanic.dk/}GetCatalogVersionSelectionResponse
#
parameters = nil
puts obj.getCatalogVersionSelection(parameters)

# SYNOPSIS
#   GetCourse(parameters)
#
# ARGS
#   parameters      GetCourse - {http://www.arcanic.dk/}GetCourse
#
# RETURNS
#   parameters      GetCourseResponse - {http://www.arcanic.dk/}GetCourseResponse
#
parameters = nil
puts obj.getCourse(parameters)

# SYNOPSIS
#   GetCourseDescriptions(parameters)
#
# ARGS
#   parameters      GetCourseDescriptions - {http://www.arcanic.dk/}GetCourseDescriptions
#
# RETURNS
#   parameters      GetCourseDescriptionsResponse - {http://www.arcanic.dk/}GetCourseDescriptionsResponse
#
parameters = nil
puts obj.getCourseDescriptions(parameters)

# SYNOPSIS
#   GetLabels(parameters)
#
# ARGS
#   parameters      GetLabels - {http://www.arcanic.dk/}GetLabels
#
# RETURNS
#   parameters      GetLabelsResponse - {http://www.arcanic.dk/}GetLabelsResponse
#
parameters = nil
puts obj.getLabels(parameters)

# SYNOPSIS
#   InsertIntoMyBasket(parameters)
#
# ARGS
#   parameters      InsertIntoMyBasket - {http://www.arcanic.dk/}InsertIntoMyBasket
#
# RETURNS
#   parameters      InsertIntoMyBasketResponse - {http://www.arcanic.dk/}InsertIntoMyBasketResponse
#
parameters = nil
puts obj.insertIntoMyBasket(parameters)

# SYNOPSIS
#   GetKeyValues(parameters)
#
# ARGS
#   parameters      GetKeyValues - {http://www.arcanic.dk/}GetKeyValues
#
# RETURNS
#   parameters      GetKeyValuesResponse - {http://www.arcanic.dk/}GetKeyValuesResponse
#
parameters = nil
puts obj.getKeyValues(parameters)

# SYNOPSIS
#   RemoveFromBasket(parameters)
#
# ARGS
#   parameters      RemoveFromBasket - {http://www.arcanic.dk/}RemoveFromBasket
#
# RETURNS
#   parameters      RemoveFromBasketResponse - {http://www.arcanic.dk/}RemoveFromBasketResponse
#
parameters = nil
puts obj.removeFromBasket(parameters)

# SYNOPSIS
#   SearchDtuShb(parameters)
#
# ARGS
#   parameters      SearchDtuShb - {http://www.arcanic.dk/}SearchDtuShb
#
# RETURNS
#   parameters      SearchDtuShbResponse - {http://www.arcanic.dk/}SearchDtuShbResponse
#
parameters = nil
puts obj.searchDtuShb(parameters)


endpoint_url = ARGV.shift
obj = CourseHttpGet.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   CourseCatalogVersions
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.courseCatalogVersions

# SYNOPSIS
#   GetAdmTxt
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getAdmTxt

# SYNOPSIS
#   GetBasket(matrikelId)
#
# ARGS
#   matrikelId      String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
matrikelId = nil
puts obj.getBasket(matrikelId)

# SYNOPSIS
#   GetCatalogVersionSelection
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getCatalogVersionSelection

# SYNOPSIS
#   GetCourse(courseCode, yearGroup)
#
# ARGS
#   courseCode      String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
courseCode = yearGroup = nil
puts obj.getCourse(courseCode, yearGroup)

# SYNOPSIS
#   GetCourseDescriptions(courseNumbers, yearGroup)
#
# ARGS
#   courseNumbers   String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
courseNumbers = yearGroup = nil
puts obj.getCourseDescriptions(courseNumbers, yearGroup)

# SYNOPSIS
#   GetLabels
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getLabels

# SYNOPSIS
#   InsertIntoMyBasket(matrikelId, courseCode, yearGroup, password)
#
# ARGS
#   matrikelId      String - {http://www.w3.org/2001/XMLSchema}string
#   courseCode      String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#   password        String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
matrikelId = courseCode = yearGroup = password = nil
puts obj.insertIntoMyBasket(matrikelId, courseCode, yearGroup, password)

# SYNOPSIS
#   GetKeyValues
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getKeyValues

# SYNOPSIS
#   RemoveFromBasket(coursesToRemove, yearGroup, id, password)
#
# ARGS
#   coursesToRemove String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#   id              String - {http://www.w3.org/2001/XMLSchema}string
#   password        String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
coursesToRemove = yearGroup = id = password = nil
puts obj.removeFromBasket(coursesToRemove, yearGroup, id, password)

# SYNOPSIS
#   SearchDtuShb(courseCode, searchWords, department, teachingPeriod, courseCatalogVersion, courseCodeStart, teachingLanguage, courseIDList, resultType, education, courseType, masterRegular, openUniversity)
#
# ARGS
#   courseCode      String - {http://www.w3.org/2001/XMLSchema}string
#   searchWords     String - {http://www.w3.org/2001/XMLSchema}string
#   department      String - {http://www.w3.org/2001/XMLSchema}string
#   teachingPeriod  String - {http://www.w3.org/2001/XMLSchema}string
#   courseCatalogVersion String - {http://www.w3.org/2001/XMLSchema}string
#   courseCodeStart String - {http://www.w3.org/2001/XMLSchema}string
#   teachingLanguage String - {http://www.w3.org/2001/XMLSchema}string
#   courseIDList    String - {http://www.w3.org/2001/XMLSchema}string
#   resultType      String - {http://www.w3.org/2001/XMLSchema}string
#   education       String - {http://www.w3.org/2001/XMLSchema}string
#   courseType      String - {http://www.w3.org/2001/XMLSchema}string
#   masterRegular   String - {http://www.w3.org/2001/XMLSchema}string
#   openUniversity  String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
courseCode = searchWords = department = teachingPeriod = courseCatalogVersion = courseCodeStart = teachingLanguage = courseIDList = resultType = education = courseType = masterRegular = openUniversity = nil
puts obj.searchDtuShb(courseCode, searchWords, department, teachingPeriod, courseCatalogVersion, courseCodeStart, teachingLanguage, courseIDList, resultType, education, courseType, masterRegular, openUniversity)


endpoint_url = ARGV.shift
obj = CourseHttpPost.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   CourseCatalogVersions
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.courseCatalogVersions

# SYNOPSIS
#   GetAdmTxt
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getAdmTxt

# SYNOPSIS
#   GetBasket(matrikelId)
#
# ARGS
#   matrikelId      String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
matrikelId = nil
puts obj.getBasket(matrikelId)

# SYNOPSIS
#   GetCatalogVersionSelection
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getCatalogVersionSelection

# SYNOPSIS
#   GetCourse(courseCode, yearGroup)
#
# ARGS
#   courseCode      String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
courseCode = yearGroup = nil
puts obj.getCourse(courseCode, yearGroup)

# SYNOPSIS
#   GetCourseDescriptions(courseNumbers, yearGroup)
#
# ARGS
#   courseNumbers   String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
courseNumbers = yearGroup = nil
puts obj.getCourseDescriptions(courseNumbers, yearGroup)

# SYNOPSIS
#   GetLabels
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getLabels

# SYNOPSIS
#   InsertIntoMyBasket(matrikelId, courseCode, yearGroup, password)
#
# ARGS
#   matrikelId      String - {http://www.w3.org/2001/XMLSchema}string
#   courseCode      String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#   password        String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
matrikelId = courseCode = yearGroup = password = nil
puts obj.insertIntoMyBasket(matrikelId, courseCode, yearGroup, password)

# SYNOPSIS
#   GetKeyValues
#
# ARGS
#   N/A
#
# RETURNS
#   N/A
#

puts obj.getKeyValues

# SYNOPSIS
#   RemoveFromBasket(coursesToRemove, yearGroup, id, password)
#
# ARGS
#   coursesToRemove String - {http://www.w3.org/2001/XMLSchema}string
#   yearGroup       String - {http://www.w3.org/2001/XMLSchema}string
#   id              String - {http://www.w3.org/2001/XMLSchema}string
#   password        String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
coursesToRemove = yearGroup = id = password = nil
puts obj.removeFromBasket(coursesToRemove, yearGroup, id, password)

# SYNOPSIS
#   SearchDtuShb(courseCode, searchWords, department, teachingPeriod, courseCatalogVersion, courseCodeStart, teachingLanguage, courseIDList, resultType, education, courseType, masterRegular, openUniversity)
#
# ARGS
#   courseCode      String - {http://www.w3.org/2001/XMLSchema}string
#   searchWords     String - {http://www.w3.org/2001/XMLSchema}string
#   department      String - {http://www.w3.org/2001/XMLSchema}string
#   teachingPeriod  String - {http://www.w3.org/2001/XMLSchema}string
#   courseCatalogVersion String - {http://www.w3.org/2001/XMLSchema}string
#   courseCodeStart String - {http://www.w3.org/2001/XMLSchema}string
#   teachingLanguage String - {http://www.w3.org/2001/XMLSchema}string
#   courseIDList    String - {http://www.w3.org/2001/XMLSchema}string
#   resultType      String - {http://www.w3.org/2001/XMLSchema}string
#   education       String - {http://www.w3.org/2001/XMLSchema}string
#   courseType      String - {http://www.w3.org/2001/XMLSchema}string
#   masterRegular   String - {http://www.w3.org/2001/XMLSchema}string
#   openUniversity  String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   N/A
#
courseCode = searchWords = department = teachingPeriod = courseCatalogVersion = courseCodeStart = teachingLanguage = courseIDList = resultType = education = courseType = masterRegular = openUniversity = nil
puts obj.searchDtuShb(courseCode, searchWords, department, teachingPeriod, courseCatalogVersion, courseCodeStart, teachingLanguage, courseIDList, resultType, education, courseType, masterRegular, openUniversity)


