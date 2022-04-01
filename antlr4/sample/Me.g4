Prog --> PROGRAM IDENTIFIER PVIG Decls CmdComp PONTO
Decls --> € | var ListDecl
ListDecl --> DeclTip | DeclTip ListDecl
DeclTip --> ListId DPONTOS Tip PVIG
ListId --> IDENTIFIER | IDENTIFIER VIG ListId
Tip --> INTEGER | BOOLEAN | STRING

CmdComp --> BEGIN ListCmd END
ListCmd --> Cmd | Cmd PVIG ListCmd
Cmd --> CmdIf | CmdWhile | CmdRead | CmdWrite | CmdAtrib | CmdComp

CmdIf --> IF Expr THEN Cmd

CmdRead --> READ (ListId)
CmdWrite --> WRITE (ListW)
ListW --> ElemW | ElemW VIG ListW
ElemW --> Expr | CADEIA

CmdAtrib --> IDENTIFIER :- Expr

Expr --> Expr OPREL Expr | Expr OPAD Expr | Expr OPMULT Expr
Expr --> IDENTIFIER | CTE | ABPAR EXPR FPAR | TRUE | FALSE | OPNEG Expr
