if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "swift"

"
" Conditionals
"

syntax keyword swiftElse else
syntax keyword swiftIf if
syntax keyword swiftSwitch switch

highlight link swiftElse swiftConditional
highlight link swiftIf swiftConditional
highlight link swiftSwitch swiftConditional

"
" Repeats
"

syntax keyword swiftFor for
syntax keyword swiftRepeat repeat
syntax keyword swiftWhile while

highlight link swiftFor swiftRepeat
highlight link swiftRepeat swiftRepeat
highlight link swiftWhile swiftRepeat

"
" Labels
"

syntax keyword swiftCase case
syntax keyword swiftDefault default

highlight link swiftCase swiftLabel
highlight link swiftDefault swiftLabel

"
" Exceptions
"

syntax keyword swiftCatch catch
syntax keyword swiftRethrows rethrows
syntax keyword swiftThrow throw
syntax keyword swiftThrows throws
syntax keyword swiftTry try

highlight link swiftCatch swiftException
highlight link swiftRethrows swiftException
highlight link swiftThrow swiftException
highlight link swiftThrows swiftException
highlight link swiftTry swiftException

"
" Includes
"

syntax keyword swiftImport import
highlight link swiftImport swiftInclude

"
" Access levels
"

syntax keyword swiftFilePrivate fileprivate
syntax keyword swiftInternal internal
syntax keyword swiftOpen open
syntax keyword swiftPrivate private
syntax keyword swiftPublic public

highlight link swiftFilePrivate swiftAccessLevel
highlight link swiftInternal swiftAccessLevel
highlight link swiftOpen swiftAccessLevel
highlight link swiftPrivate swiftAccessLevel
highlight link swiftPublic swiftAccessLevel

"
" Storage classes
"

syntax keyword swiftInOut inout
syntax keyword swiftStatic static

highlight link swiftInOut swiftStorageClass
highlight link swiftStatic swiftStorageClass

"
" Other keywords
"

syntax keyword swiftAs as
syntax keyword swiftAssociatedType associatedtype
syntax keyword swiftBreak break
syntax keyword swiftClass class
syntax keyword swiftContinue continue
syntax keyword swiftDefer defer
syntax keyword swiftDeinit deinit
syntax keyword swiftDo do
syntax keyword swiftEnum enum
syntax keyword swiftExtension extension
syntax keyword swiftFallthrough fallthrough
syntax keyword swiftFunc func
syntax keyword swiftGuard guard
syntax keyword swiftIn in
syntax keyword swiftInit init
syntax keyword swiftIs is
syntax keyword swiftLet let
syntax keyword swiftNil nil
syntax keyword swiftOperator operator
syntax keyword swiftProtocol protocol
syntax keyword swiftReturn return
syntax keyword swiftSelf self
syntax keyword swiftStruct struct
syntax keyword swiftSubscript subscript
syntax keyword swiftSuper super
syntax keyword swiftTypealias typealias
syntax keyword swiftUnderscore _
syntax keyword swiftVar var
syntax keyword swiftWhere where

highlight link swiftAs swiftKeyword
highlight link swiftAssociatedType swiftKeyword
highlight link swiftBreak swiftKeyword
highlight link swiftClass swiftKeyword
highlight link swiftContinue swiftKeyword
highlight link swiftDefer swiftKeyword
highlight link swiftDeinit swiftKeyword
highlight link swiftDo swiftKeyword
highlight link swiftEnum swiftKeyword
highlight link swiftExtension swiftKeyword
highlight link swiftFallthrough swiftKeyword
highlight link swiftFunc swiftKeyword
highlight link swiftGuard swiftKeyword
highlight link swiftIn swiftKeyword
highlight link swiftInit swiftKeyword
highlight link swiftIs swiftKeyword
highlight link swiftLet swiftKeyword
highlight link swiftNil swiftKeyword
highlight link swiftOperator swiftKeyword
highlight link swiftProtocol swiftKeyword
highlight link swiftReturn swiftKeyword
highlight link swiftSelf swiftKeyword
highlight link swiftStruct swiftKeyword
highlight link swiftSubscript swiftKeyword
highlight link swiftSuper swiftKeyword
highlight link swiftTypealias swiftKeyword
highlight link swiftUnderscore swiftKeyword
highlight link swiftVar swiftKeyword
highlight link swiftWhere swiftKeyword

"
" Strings
"

syntax region swiftString start='"' end='"'

"
" Default Linkages
"

highlight link swiftAccessLevel swiftKeyword
highlight link swiftConditional Conditional
highlight link swiftException Exception
highlight link swiftInclude Include
highlight link swiftKeyword Keyword
highlight link swiftLabel Label
highlight link swiftRepeat Repeat
highlight link swiftStorageClass StorageClass
highlight link swiftString String
