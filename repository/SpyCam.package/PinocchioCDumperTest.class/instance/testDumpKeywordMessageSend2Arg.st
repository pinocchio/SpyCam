running
testDumpKeywordMessageSend2Arg
	| ast result |
	ast := self ast: 'true at: 1 put: 2'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed should = 
('Object ', ast receiver uid,					' = (Object)new_Type_Constant(true);', String cr,
 'Object ', ast message uid,					' = (Object)new_Type_Symbol(L"at:put:");', String cr,
 'Object ',  (ast arguments at: 1) constant uid,' = (Object)new_Type_SmallInt(1);', String cr,
 'Object ', (ast arguments at: 1) uid,			' = (Object)new_Type_Constant(', (ast arguments at: 1) constant uid,');', String cr,
 'Object ',  (ast arguments at: 2) constant uid,' = (Object)new_Type_SmallInt(2);', String cr,
 'Object ', (ast arguments at: 2) uid,			' = (Object)new_Type_Constant(', (ast arguments at: 2) constant uid,');', String cr,
 'Object ', ast arguments uid,					' = (Object)new_Type_Array_With(2, ', 
																	(ast arguments at: 1) uid,', ',
																	(ast arguments at: 2) uid,');'  , String cr,
 'Object ', ast uid,   							' = (Object)new_AST_Send(', ast receiver uid,', ', ast message uid,', ', ast arguments uid,');') 