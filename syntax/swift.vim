if exists("b:current_syntax")
    finish
endif

if !exists("g:swiftHighlightIdents")
    let g:swiftHighlightIdents = 0
endif

let b:current_syntax = "swift"

"
" Conditionals
"

syntax keyword swiftElse else
syntax keyword swiftIf if
syntax keyword swiftSwitch switch

highlight default link swiftElse swiftConditional
highlight default link swiftIf swiftConditional
highlight default link swiftSwitch swiftConditional

"
" Repeats
"

syntax keyword swiftFor for
syntax keyword swiftRepeat repeat
syntax keyword swiftWhile while

highlight default link swiftFor swiftRepetition
highlight default link swiftRepeat swiftRepetition
highlight default link swiftWhile swiftRepetition

"
" Labels
"

syntax keyword swiftCase case
syntax keyword swiftDefault default

highlight default link swiftCase swiftLabel
highlight default link swiftDefault swiftLabel

"
" Exceptions
"

syntax keyword swiftCatch catch
syntax keyword swiftRethrows rethrows
syntax keyword swiftThrow throw
syntax keyword swiftThrows throws
syntax keyword swiftTry try

highlight default link swiftCatch swiftException
highlight default link swiftRethrows swiftException
highlight default link swiftThrow swiftException
highlight default link swiftThrows swiftException
highlight default link swiftTry swiftException

"
" Includes
"

syntax keyword swiftImport import
highlight default link swiftImport swiftInclude

"
" Access levels
"

syntax keyword swiftFilePrivate fileprivate
syntax keyword swiftInternal internal
syntax keyword swiftOpen open
syntax keyword swiftPrivate private
syntax keyword swiftPublic public

highlight default link swiftFilePrivate swiftAccessLevel
highlight default link swiftInternal swiftAccessLevel
highlight default link swiftOpen swiftAccessLevel
highlight default link swiftPrivate swiftAccessLevel
highlight default link swiftPublic swiftAccessLevel

"
" Storage classes
"

syntax keyword swiftInOut inout
syntax keyword swiftStatic static

highlight default link swiftInOut swiftStorageClass
highlight default link swiftStatic swiftStorageClass

"
" Other keywords
"

syntax keyword swiftAs as
syntax keyword swiftAssociatedType associatedtype
syntax keyword swiftBreak break
syntax keyword swiftClass class nextgroup=swiftTypeDef skipwhite skipempty
syntax keyword swiftContinue continue
syntax keyword swiftDefer defer
syntax keyword swiftDeinit deinit
syntax keyword swiftDo do
syntax keyword swiftEnum enum nextgroup=swiftTypeDef skipwhite skipempty
syntax keyword swiftExtension extension
syntax keyword swiftFallthrough fallthrough
syntax keyword swiftFunc func nextgroup=swiftFuncDef skipwhite skipempty
syntax keyword swiftGuard guard
syntax keyword swiftIn in
syntax keyword swiftInit init
syntax keyword swiftIs is
syntax keyword swiftLet let nextgroup=swiftIdentDef skipwhite skipempty
syntax keyword swiftMutating mutating
syntax keyword swiftNil nil
syntax keyword swiftOperator operator
syntax keyword swiftProtocol protocol
syntax keyword swiftReturn return
syntax keyword swiftSelfType Self
syntax keyword swiftSelfValue self
syntax keyword swiftStruct struct nextgroup=swiftTypeDef skipwhite skipempty
syntax keyword swiftSubscript subscript
syntax keyword swiftSuper super
syntax keyword swiftTypealias typealias nextgroup=swiftTypeDef skipwhite skipempty
syntax keyword swiftUnderscore _
syntax keyword swiftVar var nextgroup=swiftIdentDef skipwhite skipempty
syntax keyword swiftWhere where

highlight default link swiftAs swiftKeyword
highlight default link swiftAssociatedType swiftKeyword
highlight default link swiftBreak swiftKeyword
highlight default link swiftClass swiftKeyword
highlight default link swiftContinue swiftKeyword
highlight default link swiftDefer swiftKeyword
highlight default link swiftDeinit swiftKeyword
highlight default link swiftDo swiftKeyword
highlight default link swiftEnum swiftKeyword
highlight default link swiftExtension swiftKeyword
highlight default link swiftFallthrough swiftKeyword
highlight default link swiftFunc swiftKeyword
highlight default link swiftGuard swiftKeyword
highlight default link swiftIn swiftKeyword
highlight default link swiftInit swiftKeyword
highlight default link swiftIs swiftKeyword
highlight default link swiftLet swiftKeyword
highlight default link swiftMutating swiftKeyword
highlight default link swiftNil swiftKeyword
highlight default link swiftOperator swiftKeyword
highlight default link swiftProtocol swiftKeyword
highlight default link swiftReturn swiftKeyword
highlight default link swiftSelfType swiftKeyword
highlight default link swiftSelfValue swiftKeyword
highlight default link swiftStruct swiftKeyword
highlight default link swiftSubscript swiftKeyword
highlight default link swiftSuper swiftKeyword
highlight default link swiftTypealias swiftKeyword
highlight default link swiftUnderscore swiftKeyword
highlight default link swiftVar swiftKeyword
highlight default link swiftWhere swiftKeyword

"
" Strings
"

syntax region swiftString start='"' skip='\\"' end='"'
syntax region swiftMultilineString start='"""' end='"""'

syntax region swiftStringInterpolation
            \ start='\\('
            \ end=')'
            \ containedin=swiftString
            " swiftDelimiter matches parens, stopping the group from closing
            \ contains=TOP,swiftDelimiter

highlight default link swiftMultilineString swiftString

"
" User Identifiers
"

if g:swiftHighlightIdents
    syntax match swiftUserIdent '\v<[a-z][A-Za-z0-9]*>'
endif

"
" User-defined types
"

syntax match swiftUserType "\v<[A-Z][A-Za-z0-9]*>"

"
" Standard library types
"

let s:standardLibraryTypes = ["ASCII", "AdditiveArithmetic", "AncestorRepresentation", "AnyBidirectionalCollection", "AnyClass", "AnyCollection", "AnyHashable", "AnyIndex", "AnyIterator", "AnyKeyPath", "AnyObject", "AnyRandomAccessCollection", "AnySequence", "Array", "ArrayLiteralElement", "ArraySlice", "AutoreleasingUnsafeMutablePointer", "BidirectionalCollection", "BinaryFloatingPoint", "BinaryInteger", "Bool", "BooleanLiteralType", "CBool", "CChar", "CChar16", "CChar32", "CDouble", "CFloat", "CInt", "CLong", "CLongDouble", "CLongLong", "CShort", "CSignedChar", "CUnsignedChar", "CUnsignedInt", "CUnsignedLong", "CUnsignedLongLong", "CUnsignedShort", "CVaListPointer", "CVarArg", "CWideChar", "CanonicalCombiningClass", "CaseIterable", "Change", "Character", "Child", "Children", "ClosedRange", "Codable", "CodeUnit", "CodingKey", "CodingUserInfoKey", "Collection", "CollectionDifference", "CollectionOfOne", "CommandLine", "Comparable", "Context", "ContiguousArray", "CountableClosedRange", "CountablePartialRangeFrom", "CountableRange", "CustomDebugStringConvertible", "CustomLeafReflectable", "CustomPlaygroundDisplayConvertible", "CustomReflectable", "CustomStringConvertible", "Decodable", "Decoder", "DecodingError", "DefaultIndices", "DefaultStringInterpolation", "Dictionary", "DictionaryIndex", "DictionaryIterator", "DictionaryLiteral", "DisplayStyle", "Distance", "Double", "DropFirstSequence", "DropWhileSequence", "Element", "Elements", "EmptyCollection", "Encodable", "EncodedScalar", "Encoder", "Encoding", "EncodingError", "EnumeratedIterator", "EnumeratedSequence", "Equatable", "Error", "Exponent", "ExpressibleByArrayLiteral", "ExpressibleByBooleanLiteral", "ExpressibleByDictionaryLiteral", "ExpressibleByExtendedGraphemeClusterLiteral", "ExpressibleByFloatLiteral", "ExpressibleByIntegerLiteral", "ExpressibleByNilLiteral", "ExpressibleByStringInterpolation", "ExpressibleByStringLiteral", "ExpressibleByUnicodeScalarLiteral", "ExtendedGraphemeClusterLiteralType", "ExtendedGraphemeClusterType", "FixedWidthInteger", "FlattenCollection", "FlattenSequence", "Float", "Float32", "Float64", "Float80", "FloatLiteralType", "FloatingPoint", "FloatingPointClassification", "FloatingPointRoundingRule", "FloatingPointSign", "ForwardParser", "GeneralCategory", "Hashable", "Hasher", "Identifiable", "Index", "IndexDistance", "IndexingIterator", "Indices", "Int", "Int16", "Int32", "Int64", "Int8", "IntegerLiteralType", "Iterator", "IteratorProtocol", "IteratorSequence", "JoinedSequence", "Key", "KeyPath", "KeyValuePairs", "KeyedDecodingContainer", "KeyedDecodingContainerProtocol", "KeyedEncodingContainer", "KeyedEncodingContainerProtocol", "Keys", "LazyCollection", "LazyCollectionProtocol", "LazyDropWhileCollection", "LazyDropWhileSequence", "LazyFilterCollection", "LazyFilterSequence", "LazyMapCollection", "LazyMapSequence", "LazyPrefixWhileCollection", "LazyPrefixWhileSequence", "LazySequence", "LazySequenceProtocol", "LosslessStringConvertible", "Magnitude", "ManagedBufferPointer", "MaskStorage", "MemoryLayout", "Mirror", "MirrorPath", "MutableCollection", "Never", "Numeric", "NumericType", "ObjectIdentifier", "OpaquePointer", "OptionSet", "Optional", "ParseResult", "Parser", "PartialKeyPath", "PartialRangeFrom", "PartialRangeThrough", "PartialRangeUpTo", "PlaygroundQuickLook", "Pointee", "PrefixSequence", "Properties", "RandomAccessCollection", "RandomNumberGenerator", "Range", "RangeExpression", "RangeReplaceableCollection", "RawExponent", "RawRepresentable", "RawSignificand", "RawValue", "ReferenceWritableKeyPath", "Repeated", "Result", "ReverseParser", "ReversedCollection", "SIMD", "SIMD16", "SIMD16Storage", "SIMD2", "SIMD2Storage", "SIMD3", "SIMD32", "SIMD32Storage", "SIMD4", "SIMD4Storage", "SIMD64", "SIMD64Storage", "SIMD8", "SIMD8Storage", "SIMDMask", "SIMDMaskScalar", "SIMDScalar", "SIMDStorage", "Scalar", "Sequence", "Set", "SetAlgebra", "SetIndex", "SetIterator", "SignedInteger", "SignedNumeric", "SingleValueDecodingContainer", "SingleValueEncodingContainer", "Slice", "StaticString", "Stride", "StrideThrough", "StrideThroughIterator", "StrideTo", "StrideToIterator", "Strideable", "String", "StringInterpolation", "StringInterpolationProtocol", "StringLiteralType", "StringProtocol", "SubSequence", "Substring", "SystemRandomNumberGenerator", "TextOutputStream", "TextOutputStreamable", "UInt", "UInt16", "UInt32", "UInt64", "UInt8", "UTF16", "UTF16View", "UTF32", "UTF8", "UTF8View", "UnboundedRange", "UnfoldFirstSequence", "UnfoldSequence", "Unicode", "UnicodeCodec", "UnicodeDecodingResult", "UnicodeScalar", "UnicodeScalarIndex", "UnicodeScalarLiteralType", "UnicodeScalarType", "UnicodeScalarView", "UnkeyedDecodingContainer", "UnkeyedEncodingContainer", "Unmanaged", "UnsafeBufferPointer", "UnsafeMutableBufferPointer", "UnsafeMutablePointer", "UnsafeMutableRawBufferPointer", "UnsafeMutableRawPointer", "UnsafePointer", "UnsafeRawBufferPointer", "UnsafeRawPointer", "UnsignedInteger", "Values", "Version", "Void", "Words", "WritableKeyPath", "Zip2Sequence"]

for s:standardLibraryType in s:standardLibraryTypes
    execute 'syntax keyword swiftLibraryType ' . s:standardLibraryType
endfor

"
" User-defined properties
"

syntax match swiftUserProp '\v(\.)@<=[a-z][A-Za-z0-9]*'

"
" Standard library properties
"

let s:standardLibraryProps = ["above", "aboveLeft", "aboveRight", "age", "alignment", "allKeys", "argc", "arguments", "asciiValue", "attachedAbove", "attachedAboveRight", "attachedBelow", "attachedBelowLeft", "base", "baseAddress", "below", "belowLeft", "belowRight", "bigEndian", "binade", "bitPattern", "bitWidth", "buffer", "byteSwapped", "canonicalCombiningClass", "capacity", "changesWhenCaseFolded", "changesWhenCaseMapped", "changesWhenLowercased", "changesWhenNFKCCaseFolded", "changesWhenTitlecased", "changesWhenUppercased", "children", "codingPath", "count", "customMirror", "customPlaygroundQuickLook", "debugDescription", "description", "displayStyle", "doubleAbove", "doubleBelow", "elements", "encodedOffset", "encodedReplacementCharacter", "endIndex", "evenHalf", "exponent", "exponentBitCount", "exponentBitPattern", "final capacity", "final hashValue", "final header", "first", "floatingPointClass", "generalCategory", "greatestFiniteMagnitude", "hasPointerRepresentation", "hashValue", "header", "hexDigitValue", "highHalf", "id", "indices", "infinity", "insertions", "iotaSubscript", "isASCII", "isASCIIHexDigit", "isAlphabetic", "isBidiControl", "isBidiMirrored", "isCanonical", "isCaseIgnorable", "isCased", "isContiguousUTF8", "isCurrencySymbol", "isDash", "isDefaultIgnorableCodePoint", "isDeprecated", "isDiacritic", "isEmoji", "isEmojiModifier", "isEmojiModifierBase", "isEmojiPresentation", "isEmpty", "isExtender", "isFinite", "isFullCompositionExclusion", "isGraphemeBase", "isGraphemeExtend", "isHexDigit", "isIDContinue", "isIDSBinaryOperator", "isIDSTrinaryOperator", "isIDStart", "isIdeographic", "isInfinite", "isJoinControl", "isLetter", "isLogicalOrderException", "isLowercase", "isMath", "isMathSymbol", "isNaN", "isNewline", "isNoncharacterCodePoint", "isNormal", "isNumber", "isPatternSyntax", "isPatternWhitespace", "isPunctuation", "isQuotationMark", "isRadical", "isSentenceTerminal", "isSignalingNaN", "isSigned", "isSoftDotted", "isSubnormal", "isSymbol", "isTerminalPunctuation", "isUnifiedIdeograph", "isUppercase", "isVariationSelector", "isWhitespace", "isWholeNumber", "isXIDContinue", "isXIDStart", "isZero", "kanaVoicing", "keys", "last", "lazy", "leadingZeroBitCount", "leastNonzeroMagnitude", "leastNormalMagnitude", "left", "littleEndian", "lowHalf", "lowerBound", "lowercaseMapping", "magnitude", "max", "min", "name", "nameAlias", "nan", "nextDown", "nextUp", "nonzeroBitCount", "notReordered", "nukta", "numericType", "numericValue", "oddHalf", "one", "overlay", "pi", "pointee", "properties", "radix", "rawValue", "removals", "repeatedValue", "right", "rootType", "scalarCount", "sign", "signalingNaN", "significand", "significandBitCount", "significandBitPattern", "significandWidth", "size", "startIndex", "stride", "subjectType", "superclassMirror", "titlecaseMapping", "trailingZeroBitCount", "ulp", "ulpOfOne", "underestimatedCount", "underlyingError", "unicodeScalar", "unicodeScalars", "unsafeArgv", "unsafelyUnwrapped", "upperBound", "uppercaseMapping", "utf16", "utf8", "utf8CString", "utf8CodeUnitCount", "utf8Start", "value", "valueType", "values", "virama", "w", "wholeNumberValue", "words", "x", "y", "z", "zero"]

for s:standardLibraryProp in s:standardLibraryProps
    execute 'syntax match swiftLibraryProp "\v(\.)@<=' . s:standardLibraryProp . '>"'
endfor

"
" User-defined functions
"

syntax match swiftUserFunc '\v<[a-z][A-Za-z0-9]*(\()@='

"
" Standard library functions
"

let s:standardLibraryFuncs = ["abs", "addProduct", "addingProduct", "addingReportingOverflow", "advanced", "alignment", "all", "allSatisfy", "allocate", "any", "append", "appendInterpolation", "appendLiteral", "appending", "applying", "assert", "assertionFailure", "assign", "assumingMemoryBound", "autorelease", "bindMemory", "clamp", "clamped", "combine", "compactMap", "compactMapValues", "contains", "copyBytes", "copyMemory", "dataCorruptedError", "deallocate", "debugPrint", "decode", "decodeCString", "decodeIfPresent", "decodeNil", "deinitialize", "descendant", "difference", "distance", "dividedReportingOverflow", "dividingFullWidth", "drop", "dropFirst", "dropLast", "dump", "elementsEqual", "encode", "encodeConditional", "encodeIfPresent", "encodeNil", "enumerated", "escaped", "fatalError", "filter", "finalize", "first", "firstIndex", "flatMap", "flatMapError", "forEach", "formIndex", "formIntersection", "formRemainder", "formSquareRoot", "formSymmetricDifference", "formTruncatingRemainder", "formUnion", "fromOpaque", "get", "getVaList", "hasPrefix", "hasSuffix", "hash", "index", "inferringMoves", "initialize", "initializeMemory", "insert", "intersection", "inverse", "isASCII", "isContinuation", "isDisjoint", "isEqual", "isKnownUniquelyReferenced", "isLeadSurrogate", "isLess", "isLessThanOrEqualTo", "isMultiple", "isStrictSubset", "isStrictSuperset", "isSubset", "isSuperset", "isSurrogate", "isTotallyOrdered", "isTrailSurrogate", "isUniqueReference", "joined", "last", "lastIndex", "leadSurrogate", "lexicographicallyPrecedes", "load", "lowercased", "makeContiguousUTF8", "makeIterator", "map", "mapError", "mapValues", "max", "maximum", "maximumMagnitude", "merge", "merging", "min", "minimum", "minimumMagnitude", "move", "moveAssign", "moveInitialize", "moveInitializeMemory", "multipliedFullWidth", "multipliedReportingOverflow", "negate", "nestedContainer", "nestedUnkeyedContainer", "next", "numericCast", "offset", "overlaps", "parseScalar", "partition", "passRetained", "passUnretained", "pointwiseMax", "pointwiseMin", "popFirst", "popLast", "precondition", "preconditionFailure", "prefix", "print", "quotientAndRemainder", "random", "randomElement", "readLine", "reduce", "relative", "release", "remainder", "remainderReportingOverflow", "remove", "removeAll", "removeFirst", "removeLast", "removeSubrange", "removeValue", "repeatElement", "replace", "replaceSubrange", "replacing", "reserveCapacity", "retain", "reverse", "reversed", "round", "rounded", "samePosition", "sequence", "shuffle", "shuffled", "signum", "size", "sort", "sorted", "split", "squareRoot", "starts", "storeBytes", "stride", "subtract", "subtracting", "subtractingReportingOverflow", "suffix", "sum", "superDecoder", "superEncoder", "swap", "swapAt", "symmetricDifference", "takeRetainedValue", "takeUnretainedValue", "toOpaque", "toggle", "trailSurrogate", "transcode", "transcodedLength", "truncatingRemainder", "type", "union", "unsafeBitCast", "unsafeDowncast", "update", "updateValue", "uppercased", "utf16Offset", "width", "withCString", "withContiguousMutableStorageIfAvailable", "withContiguousStorageIfAvailable", "withExtendedLifetime", "withMemoryRebound", "withUTF8", "withUTF8Buffer", "withUnsafeBufferPointer", "withUnsafeBytes", "withUnsafeMutableBufferPointer", "withUnsafeMutableBytes", "withUnsafeMutablePointer", "withUnsafeMutablePointerToElements", "withUnsafeMutablePointerToHeader", "withUnsafeMutablePointers", "withUnsafePointer", "withVaList", "withoutActuallyEscaping", "wrappedSum", "write", "zip"]

for s:standardLibraryFunc in s:standardLibraryFuncs
    execute 'syntax match swiftLibraryFunc "\v<' . s:standardLibraryFunc . '(\()@="'
endfor

"
" Type definitions
"

syntax match swiftTypeDef '\v<[A-Z][A-Za-z0-9]*' contained display

" Generics
syntax match swiftTypeDef '\v(\<)@<=[A-Z][A-Za-z0-9]*(\>)@='

"
" Identifier definitions
"

syntax match swiftIdentDef '\v<[a-z][A-Za-z0-9]*' contained display

"
" Function definitions
"

syntax match swiftFuncDef '\v<[a-z][A-Za-z0-9]*(\()@=' contained display

"
" Punctuation
"

syntax match swiftPunctuation '[!%&*+-./:<=>?^|~]\+'

"
" Delimiters
"

syntax match swiftDelimiter '[(){}\[\]]\+'

"
" Comments
"

syntax region swiftComment start='//' end='$'
syntax region swiftDocComment start='///' end='$'

syntax match swiftCommentNote '\v[A-Z]+(:)@=' containedin=swiftComment,swiftDocComment

"
" Numbers
"

syntax match swiftNumber '\v<[0-9_]+>'
syntax match swiftFloat '\v<[0-9_]+\.[0-9_]+>'

"
" Booleans
"

syntax keyword swiftFalse false
syntax keyword swiftTrue true

highlight default link swiftFalse swiftBoolean
highlight default link swiftTrue swiftBoolean

"
" Default Linkages
"

highlight default link swiftAccessLevel swiftKeyword
highlight default link swiftBoolean Boolean
highlight default link swiftComment Comment
highlight default link swiftCommentNote Todo
highlight default link swiftConditional Conditional
highlight default link swiftDelimiter Delimiter
highlight default link swiftDocComment SpecialComment
highlight default link swiftException Exception
highlight default link swiftFloat Float
highlight default link swiftFuncDef Function
highlight default link swiftIdentDef Identifier
highlight default link swiftInclude Include
highlight default link swiftKeyword Keyword
highlight default link swiftLabel Label
highlight default link swiftLibraryFunc Function
highlight default link swiftLibraryProp Identifier
highlight default link swiftLibraryType Type
highlight default link swiftNumber Number
highlight default link swiftPunctuation Operator
highlight default link swiftRepetition Repeat
highlight default link swiftStorageClass StorageClass
highlight default link swiftString String
highlight default link swiftTypeDef Typedef
highlight default link swiftUserFunc Function
highlight default link swiftUserProp Identifier
highlight default link swiftUserType Type

if g:swiftHighlightIdents
    highlight default link swiftUserIdent Identifier
endif
