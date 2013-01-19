package Compiler::Lexer::TokenType;
use strict;
use warnings;
use constant {
    T_Return => 0,
    T_Add => 1,
    T_Sub => 2,
    T_Mul => 3,
    T_Div => 4,
    T_Greater => 5,
    T_Less => 6,
    T_StringAdd => 7,
    T_Ref => 8,
    T_BitNot => 9,
    T_BitOr => 10,
    T_Or => 11,
    T_BitAnd => 12,
    T_And => 13,
    T_BitXOr => 14,
    T_XOr => 15,
    T_StringMul => 16,
    T_AddEqual => 17,
    T_SubEqual => 18,
    T_MulEqual => 19,
    T_DivEqual => 20,
    T_GreaterEqual => 21,
    T_LessEqual => 22,
    T_EqualEqual => 23,
    T_Diamond => 24,
    T_Compare => 25,
    T_RegOK => 26,
    T_RegNot => 27,
    T_NotEqual => 28,
    T_ArraySize => 29,
    T_StringLess => 30,
    T_StringLessEqual => 31,
    T_StringGrater => 32,
    T_StringGraterEqual => 33,
    T_StringEqual => 34,
    T_StringNotEqual => 35,
    T_StringCompare => 36,
    T_Inc => 37,
    T_Dec => 38,
    T_Exp => 39,
    T_LeftShift => 40,
    T_RightShift => 41,
    T_Slice => 42,
    T_VarDecl => 43,
    T_FunctionDecl => 44,
    T_Assign => 45,
    T_Is => 46,
    T_IsNot => 47,
    T_Not => 48,
    T_BuiltinFunc => 49,
    T_RequireDecl => 50,
    T_Import => 51,
    T_SpecificKeyword => 52,
    T_DataWord => 53,
    T_ModWord => 54,
    T_AUTOLOAD => 55,
    T_CORE => 56,
    T_DESTROY => 57,
    T_STDIN => 58,
    T_STDOUT => 59,
    T_STDERR => 60,
    T_Redo => 61,
    T_Next => 62,
    T_Last => 63,
    T_Goto => 64,
    T_Continue => 65,
    T_Do => 66,
    T_Break => 67,
    T_Handle => 68,
    T_LocalDecl => 69,
    T_OurDecl => 70,
    T_StateDecl => 71,
    T_UseDecl => 72,
    T_IfStmt => 73,
    T_ElseStmt => 74,
    T_ElsifStmt => 75,
    T_UnlessStmt => 76,
    T_UntilStmt => 77,
    T_WhenStmt => 78,
    T_GivenStmt => 79,
    T_DefaultStmt => 80,
    T_Comma => 81,
    T_SemiColon => 82,
    T_LeftParenthesis => 83,
    T_RightParenthesis => 84,
    T_LeftBrace => 85,
    T_RightBrace => 86,
    T_LeftBracket => 87,
    T_RightBracket => 88,
    T_ArrayDereference => 89,
    T_HashDereference => 90,
    T_Key => 91,
    T_Arrow => 92,
    T_Pointer => 93,
    T_NamespaceResolver => 94,
    T_Namespace => 95,
    T_Package => 96,
    T_Class => 97,
    T_CallDecl => 98,
    T_CodeRef => 99,
    T_WhileStmt => 100,
    T_ForStmt => 101,
    T_ForeachStmt => 102,
    T_Annotation => 103,
    T_ArgumentArray => 104,
    T_SpecificValue => 105,
    T_ConstValue => 106,
    T_ProgramArgument => 107,
    T_LibraryDirectories => 108,
    T_Environment => 109,
    T_Include => 110,
    T_Signal => 111,
    T_RegOpt => 112,
    T_RegQuote => 113,
    T_RegDoubleQuote => 114,
    T_RegList => 115,
    T_RegExec => 116,
    T_RegDecl => 117,
    T_RegMatch => 118,
    T_RegDelim => 119,
    T_RegMiddleDelim => 120,
    T_RegAllReplace => 121,
    T_RegReplace => 122,
    T_RegReplaceFrom => 123,
    T_RegReplaceTo => 124,
    T_FieldDecl => 125,
    T_TypeRef => 126,
    T_LabelRef => 127,
    T_LocalVarDecl => 128,
    T_GlobalVarDecl => 129,
    T_MultiLocalVarDecl => 130,
    T_MultiGlobalVarDecl => 131,
    T_Var => 132,
    T_CodeVar => 133,
    T_ArrayVar => 134,
    T_HashVar => 135,
    T_Int => 136,
    T_Double => 137,
    T_String => 138,
    T_RawString => 139,
    T_ExecString => 140,
    T_HereDocumentTag => 141,
    T_HereDocumentRawTag => 142,
    T_RawHereDocument => 143,
    T_HereDocument => 144,
    T_HereDocumentEnd => 145,
    T_Object => 146,
    T_RegExp => 147,
    T_Array => 148,
    T_Hash => 149,
    T_Operator => 150,
    T_LocalVar => 151,
    T_LocalArrayVar => 152,
    T_LocalHashVar => 153,
    T_GlobalVar => 154,
    T_GlobalArrayVar => 155,
    T_GlobalHashVar => 156,
    T_ArrayRef => 157,
    T_HashRef => 158,
    T_ArrayAt => 159,
    T_HashAt => 160,
    T_ArraySet => 161,
    T_HashSet => 162,
    T_Function => 163,
    T_Call => 164,
    T_Argument => 165,
    T_List => 166,
    T_Default => 167,
    T_Undefined => 168,

};
1;

package Compiler::Lexer::SyntaxType;
use strict;
use warnings;
use constant {
    T_Value     => 0,
    T_Term      => 1,
    T_Expr      => 2,
    T_Stmt      => 3,
    T_BlockStmt => 4
};
1;

package Compiler::Lexer::Kind;
use strict;
use warnings;
use constant {
    T_Return => 0,
    T_Operator => 1,
    T_Assign => 2,
    T_Decl => 3,
    T_SingleTerm => 4,
    T_Function => 5,
    T_Import => 6,
    T_SpecificKeyword => 7,
    T_DataWord => 8,
    T_ModWord => 9,
    T_AUTOLOAD => 10,
    T_CORE => 11,
    T_DESTROY => 12,
    T_Handle => 13,
    T_Redo => 14,
    T_Next => 15,
    T_Last => 16,
    T_Goto => 17,
    T_Continue => 18,
    T_Do => 19,
    T_Break => 20,
    T_Stmt => 21,
    T_DefaultStmt => 22,
    T_Comma => 23,
    T_StmtEnd => 24,
    T_Symbol => 25,
    T_Modifier => 26,
    T_Term => 27,
    T_Namespace => 28,
    T_Annotation => 29,
    T_Ref => 30,
    T_Get => 31,
    T_Set => 32,
    T_Undefined => 33,

};
1;
