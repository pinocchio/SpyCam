running
testDumpKeywordMessageSend1Arg
	| ast result |
	ast := self ast: 'true a: 1'.
	dumper visit: ast.
	dumper printString withBlanksTrimmed  should = 
('Object ', ast receiver uid,					' = (Object)new_AST_Constant(true);', String cr,
 'Object ', ast message uid,					' = (Object)new_Type_Symbol(L"a:");', String cr,
 'Object ',  (ast arguments at: 1) constant uid,' = (Object)new_Type_SmallInt(1);', String cr,
 'Object ', (ast arguments at: 1) uid,			' = (Object)new_AST_Constant(', (ast arguments at: 1) constant uid,');', String cr,
 'Object ', ast arguments uid,					' = (Object)new_Type_Array_With(1, ', (ast arguments at: 1) uid,');'  , String cr,
 'Object ', ast uid,   							' = (Object)new_AST_Send(', 
																ast receiver uid,', ', 
																ast message uid,', ', 
																'(Type_Array)',ast arguments uid,');') 