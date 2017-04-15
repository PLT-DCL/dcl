type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | COMMA
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | EXPONT
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | TRUE
  | FALSE
  | AND
  | OR
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | BOOL
  | VOID
  | DOUBLE
  | STRING
  | INTLITERAL of (int)
  | DBLLITERAL of (float)
  | STRLITERAL of (string)
  | ID of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 46 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* COMMA *);
  263 (* PLUS *);
  264 (* MINUS *);
  265 (* TIMES *);
  266 (* DIVIDE *);
  267 (* EXPONT *);
  268 (* ASSIGN *);
  269 (* NOT *);
  270 (* EQ *);
  271 (* NEQ *);
  272 (* LT *);
  273 (* LEQ *);
  274 (* GT *);
  275 (* GEQ *);
  276 (* TRUE *);
  277 (* FALSE *);
  278 (* AND *);
  279 (* OR *);
  280 (* RETURN *);
  281 (* IF *);
  282 (* ELSE *);
  283 (* FOR *);
  284 (* WHILE *);
  285 (* INT *);
  286 (* BOOL *);
  287 (* VOID *);
  288 (* DOUBLE *);
  289 (* STRING *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  290 (* INTLITERAL *);
  291 (* DBLLITERAL *);
  292 (* STRLITERAL *);
  293 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\007\000\007\000\
\003\000\008\000\008\000\010\000\010\000\010\000\010\000\010\000\
\010\000\010\000\010\000\012\000\012\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\013\000\013\000\014\000\
\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\000\000\002\000\
\003\000\000\000\002\000\002\000\002\000\003\000\003\000\005\000\
\007\000\009\000\005\000\000\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000\002\000\003\000\004\000\003\000\000\000\001\000\001\000\
\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\058\000\000\000\010\000\014\000\013\000\011\000\
\012\000\001\000\003\000\004\000\000\000\000\000\017\000\000\000\
\000\000\000\000\000\000\008\000\000\000\000\000\015\000\000\000\
\000\000\009\000\016\000\000\000\000\000\000\000\000\000\018\000\
\005\000\000\000\000\000\033\000\034\000\000\000\000\000\000\000\
\000\000\030\000\031\000\032\000\000\000\019\000\000\000\000\000\
\000\000\049\000\050\000\021\000\000\000\000\000\000\000\000\000\
\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\053\000\023\000\022\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\052\000\000\000\000\000\000\000\027\000\
\000\000\000\000\000\000\025\000\000\000\000\000\026\000"

let yydgoto = "\002\000\
\003\000\004\000\011\000\012\000\013\000\018\000\025\000\029\000\
\019\000\046\000\047\000\078\000\081\000\082\000"

let yysindex = "\004\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\006\255\020\255\000\000\065\255\
\017\255\039\255\044\255\000\000\053\255\065\255\000\000\022\255\
\065\255\000\000\000\000\025\255\079\255\064\255\232\255\000\000\
\000\000\232\255\232\255\000\000\000\000\043\255\080\255\083\255\
\084\255\000\000\000\000\000\000\000\255\000\000\122\000\059\001\
\115\255\000\000\000\000\000\000\141\000\232\255\232\255\232\255\
\232\255\232\255\000\000\232\255\232\255\232\255\232\255\232\255\
\232\255\232\255\232\255\232\255\232\255\232\255\232\255\232\255\
\000\000\000\000\000\000\076\001\110\001\088\255\093\001\110\001\
\063\255\085\255\110\001\062\255\062\255\094\255\094\255\094\255\
\140\001\140\001\137\255\137\255\137\255\137\255\127\001\007\000\
\223\255\232\255\223\255\000\000\232\255\082\255\160\000\000\000\
\110\001\223\255\232\255\000\000\108\255\223\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\109\255\
\000\000\000\000\118\255\000\000\000\000\000\000\000\000\000\000\
\151\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\034\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\117\255\000\000\
\119\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\045\255\000\000\000\000\007\255\
\000\000\122\255\013\255\183\000\206\000\057\000\080\000\103\000\
\046\255\087\255\229\000\252\000\019\001\042\001\052\255\005\255\
\000\000\000\000\000\000\000\000\000\000\187\255\000\000\000\000\
\014\255\000\000\124\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\104\000\000\000\249\255\000\000\000\000\098\000\
\000\000\027\000\225\255\024\000\000\000\000\000"

let yytablesize = 671
let yytable = "\048\000\
\010\000\057\000\050\000\051\000\001\000\048\000\053\000\048\000\
\017\000\056\000\048\000\058\000\056\000\051\000\024\000\051\000\
\057\000\028\000\051\000\057\000\015\000\016\000\076\000\077\000\
\079\000\080\000\083\000\048\000\084\000\085\000\086\000\087\000\
\088\000\089\000\090\000\091\000\092\000\093\000\094\000\095\000\
\096\000\021\000\014\000\052\000\031\000\029\000\041\000\029\000\
\041\000\022\000\034\000\041\000\047\000\020\000\047\000\035\000\
\023\000\047\000\026\000\041\000\041\000\030\000\036\000\037\000\
\015\000\100\000\103\000\041\000\041\000\105\000\062\000\063\000\
\064\000\047\000\047\000\077\000\042\000\043\000\044\000\045\000\
\031\000\054\000\032\000\033\000\055\000\056\000\034\000\042\000\
\098\000\042\000\101\000\035\000\042\000\005\000\006\000\007\000\
\008\000\009\000\036\000\037\000\042\000\042\000\038\000\039\000\
\064\000\040\000\041\000\106\000\042\000\042\000\110\000\006\000\
\042\000\043\000\044\000\045\000\031\000\028\000\032\000\074\000\
\007\000\054\000\034\000\102\000\055\000\104\000\028\000\035\000\
\027\000\049\000\109\000\000\000\108\000\000\000\036\000\037\000\
\111\000\000\000\038\000\039\000\000\000\040\000\041\000\060\000\
\061\000\062\000\063\000\064\000\042\000\043\000\044\000\045\000\
\018\000\000\000\018\000\018\000\000\000\000\000\018\000\000\000\
\000\000\000\000\000\000\018\000\000\000\000\000\000\000\000\000\
\000\000\000\000\018\000\018\000\000\000\000\000\018\000\018\000\
\000\000\018\000\018\000\000\000\000\000\000\000\000\000\000\000\
\018\000\018\000\018\000\018\000\024\000\000\000\024\000\024\000\
\000\000\000\000\024\000\000\000\000\000\000\000\000\000\024\000\
\000\000\000\000\000\000\000\000\000\000\000\000\024\000\024\000\
\000\000\000\000\024\000\024\000\000\000\024\000\024\000\000\000\
\000\000\000\000\000\000\000\000\024\000\024\000\024\000\024\000\
\031\000\000\000\032\000\000\000\000\000\000\000\034\000\000\000\
\000\000\031\000\000\000\035\000\000\000\000\000\000\000\034\000\
\000\000\000\000\036\000\037\000\035\000\000\000\038\000\039\000\
\000\000\040\000\041\000\036\000\037\000\000\000\000\000\000\000\
\042\000\043\000\044\000\045\000\000\000\000\000\000\000\000\000\
\000\000\042\000\043\000\044\000\045\000\060\000\061\000\062\000\
\063\000\064\000\000\000\000\000\065\000\066\000\067\000\068\000\
\069\000\070\000\000\000\000\000\071\000\005\000\006\000\007\000\
\008\000\009\000\035\000\000\000\035\000\000\000\000\000\035\000\
\035\000\035\000\035\000\035\000\035\000\000\000\000\000\035\000\
\035\000\035\000\035\000\035\000\035\000\000\000\000\000\035\000\
\035\000\038\000\000\000\038\000\000\000\000\000\038\000\038\000\
\038\000\038\000\038\000\000\000\000\000\000\000\038\000\038\000\
\038\000\038\000\038\000\038\000\000\000\000\000\038\000\038\000\
\039\000\000\000\039\000\000\000\000\000\039\000\039\000\039\000\
\039\000\039\000\000\000\000\000\000\000\039\000\039\000\039\000\
\039\000\039\000\039\000\000\000\000\000\039\000\039\000\040\000\
\000\000\040\000\000\000\000\000\040\000\040\000\040\000\040\000\
\040\000\000\000\000\000\000\000\040\000\040\000\040\000\040\000\
\040\000\040\000\059\000\000\000\040\000\040\000\000\000\000\000\
\060\000\061\000\062\000\063\000\064\000\000\000\000\000\065\000\
\066\000\067\000\068\000\069\000\070\000\075\000\000\000\071\000\
\072\000\000\000\000\000\060\000\061\000\062\000\063\000\064\000\
\000\000\000\000\065\000\066\000\067\000\068\000\069\000\070\000\
\107\000\000\000\071\000\072\000\000\000\000\000\060\000\061\000\
\062\000\063\000\064\000\000\000\000\000\065\000\066\000\067\000\
\068\000\069\000\070\000\000\000\000\000\071\000\072\000\036\000\
\000\000\036\000\000\000\000\000\036\000\036\000\036\000\000\000\
\000\000\000\000\000\000\000\000\036\000\036\000\036\000\036\000\
\036\000\036\000\000\000\000\000\036\000\036\000\037\000\000\000\
\037\000\000\000\000\000\037\000\037\000\037\000\000\000\000\000\
\000\000\000\000\000\000\037\000\037\000\037\000\037\000\037\000\
\037\000\000\000\000\000\037\000\037\000\043\000\000\000\043\000\
\000\000\000\000\043\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\043\000\043\000\043\000\043\000\043\000\043\000\
\000\000\000\000\043\000\043\000\044\000\000\000\044\000\000\000\
\000\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\044\000\044\000\044\000\044\000\044\000\044\000\000\000\
\000\000\044\000\044\000\045\000\000\000\045\000\000\000\000\000\
\045\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\045\000\045\000\045\000\045\000\045\000\045\000\000\000\000\000\
\045\000\045\000\046\000\000\000\046\000\000\000\000\000\046\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\046\000\
\046\000\046\000\046\000\046\000\046\000\073\000\000\000\046\000\
\046\000\060\000\061\000\062\000\063\000\064\000\000\000\000\000\
\065\000\066\000\067\000\068\000\069\000\070\000\097\000\000\000\
\071\000\072\000\060\000\061\000\062\000\063\000\064\000\000\000\
\000\000\065\000\066\000\067\000\068\000\069\000\070\000\099\000\
\000\000\071\000\072\000\060\000\061\000\062\000\063\000\064\000\
\000\000\000\000\065\000\066\000\067\000\068\000\069\000\070\000\
\000\000\000\000\071\000\072\000\060\000\061\000\062\000\063\000\
\064\000\000\000\000\000\065\000\066\000\067\000\068\000\069\000\
\070\000\000\000\000\000\071\000\072\000\060\000\061\000\062\000\
\063\000\064\000\000\000\000\000\065\000\066\000\067\000\068\000\
\069\000\070\000\060\000\061\000\062\000\063\000\064\000\000\000\
\000\000\000\000\000\000\067\000\068\000\069\000\070\000"

let yycheck = "\031\000\
\000\000\002\001\034\000\035\000\001\000\001\001\038\000\003\001\
\016\000\003\001\006\001\012\001\006\001\001\001\022\000\003\001\
\003\001\025\000\006\001\006\001\001\001\002\001\054\000\055\000\
\056\000\057\000\058\000\023\001\060\000\061\000\062\000\063\000\
\064\000\065\000\066\000\067\000\068\000\069\000\070\000\071\000\
\072\000\003\001\037\001\001\001\002\001\001\001\001\001\003\001\
\003\001\006\001\008\001\006\001\001\001\037\001\003\001\013\001\
\004\001\006\001\037\001\014\001\015\001\037\001\020\001\021\001\
\001\001\003\001\098\000\022\001\023\001\101\000\009\001\010\001\
\011\001\022\001\023\001\107\000\034\001\035\001\036\001\037\001\
\002\001\002\001\004\001\005\001\002\001\002\001\008\001\001\001\
\001\001\003\001\006\001\013\001\006\001\029\001\030\001\031\001\
\032\001\033\001\020\001\021\001\014\001\015\001\024\001\025\001\
\011\001\027\001\028\001\026\001\022\001\023\001\003\001\003\001\
\034\001\035\001\036\001\037\001\002\001\001\001\004\001\005\001\
\003\001\003\001\008\001\097\000\003\001\099\000\003\001\013\001\
\025\000\032\000\107\000\255\255\106\000\255\255\020\001\021\001\
\110\000\255\255\024\001\025\001\255\255\027\001\028\001\007\001\
\008\001\009\001\010\001\011\001\034\001\035\001\036\001\037\001\
\002\001\255\255\004\001\005\001\255\255\255\255\008\001\255\255\
\255\255\255\255\255\255\013\001\255\255\255\255\255\255\255\255\
\255\255\255\255\020\001\021\001\255\255\255\255\024\001\025\001\
\255\255\027\001\028\001\255\255\255\255\255\255\255\255\255\255\
\034\001\035\001\036\001\037\001\002\001\255\255\004\001\005\001\
\255\255\255\255\008\001\255\255\255\255\255\255\255\255\013\001\
\255\255\255\255\255\255\255\255\255\255\255\255\020\001\021\001\
\255\255\255\255\024\001\025\001\255\255\027\001\028\001\255\255\
\255\255\255\255\255\255\255\255\034\001\035\001\036\001\037\001\
\002\001\255\255\004\001\255\255\255\255\255\255\008\001\255\255\
\255\255\002\001\255\255\013\001\255\255\255\255\255\255\008\001\
\255\255\255\255\020\001\021\001\013\001\255\255\024\001\025\001\
\255\255\027\001\028\001\020\001\021\001\255\255\255\255\255\255\
\034\001\035\001\036\001\037\001\255\255\255\255\255\255\255\255\
\255\255\034\001\035\001\036\001\037\001\007\001\008\001\009\001\
\010\001\011\001\255\255\255\255\014\001\015\001\016\001\017\001\
\018\001\019\001\255\255\255\255\022\001\029\001\030\001\031\001\
\032\001\033\001\001\001\255\255\003\001\255\255\255\255\006\001\
\007\001\008\001\009\001\010\001\011\001\255\255\255\255\014\001\
\015\001\016\001\017\001\018\001\019\001\255\255\255\255\022\001\
\023\001\001\001\255\255\003\001\255\255\255\255\006\001\007\001\
\008\001\009\001\010\001\255\255\255\255\255\255\014\001\015\001\
\016\001\017\001\018\001\019\001\255\255\255\255\022\001\023\001\
\001\001\255\255\003\001\255\255\255\255\006\001\007\001\008\001\
\009\001\010\001\255\255\255\255\255\255\014\001\015\001\016\001\
\017\001\018\001\019\001\255\255\255\255\022\001\023\001\001\001\
\255\255\003\001\255\255\255\255\006\001\007\001\008\001\009\001\
\010\001\255\255\255\255\255\255\014\001\015\001\016\001\017\001\
\018\001\019\001\001\001\255\255\022\001\023\001\255\255\255\255\
\007\001\008\001\009\001\010\001\011\001\255\255\255\255\014\001\
\015\001\016\001\017\001\018\001\019\001\001\001\255\255\022\001\
\023\001\255\255\255\255\007\001\008\001\009\001\010\001\011\001\
\255\255\255\255\014\001\015\001\016\001\017\001\018\001\019\001\
\001\001\255\255\022\001\023\001\255\255\255\255\007\001\008\001\
\009\001\010\001\011\001\255\255\255\255\014\001\015\001\016\001\
\017\001\018\001\019\001\255\255\255\255\022\001\023\001\001\001\
\255\255\003\001\255\255\255\255\006\001\007\001\008\001\255\255\
\255\255\255\255\255\255\255\255\014\001\015\001\016\001\017\001\
\018\001\019\001\255\255\255\255\022\001\023\001\001\001\255\255\
\003\001\255\255\255\255\006\001\007\001\008\001\255\255\255\255\
\255\255\255\255\255\255\014\001\015\001\016\001\017\001\018\001\
\019\001\255\255\255\255\022\001\023\001\001\001\255\255\003\001\
\255\255\255\255\006\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\014\001\015\001\016\001\017\001\018\001\019\001\
\255\255\255\255\022\001\023\001\001\001\255\255\003\001\255\255\
\255\255\006\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\014\001\015\001\016\001\017\001\018\001\019\001\255\255\
\255\255\022\001\023\001\001\001\255\255\003\001\255\255\255\255\
\006\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\014\001\015\001\016\001\017\001\018\001\019\001\255\255\255\255\
\022\001\023\001\001\001\255\255\003\001\255\255\255\255\006\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\014\001\
\015\001\016\001\017\001\018\001\019\001\003\001\255\255\022\001\
\023\001\007\001\008\001\009\001\010\001\011\001\255\255\255\255\
\014\001\015\001\016\001\017\001\018\001\019\001\003\001\255\255\
\022\001\023\001\007\001\008\001\009\001\010\001\011\001\255\255\
\255\255\014\001\015\001\016\001\017\001\018\001\019\001\003\001\
\255\255\022\001\023\001\007\001\008\001\009\001\010\001\011\001\
\255\255\255\255\014\001\015\001\016\001\017\001\018\001\019\001\
\255\255\255\255\022\001\023\001\007\001\008\001\009\001\010\001\
\011\001\255\255\255\255\014\001\015\001\016\001\017\001\018\001\
\019\001\255\255\255\255\022\001\023\001\007\001\008\001\009\001\
\010\001\011\001\255\255\255\255\014\001\015\001\016\001\017\001\
\018\001\019\001\007\001\008\001\009\001\010\001\011\001\255\255\
\255\255\255\255\255\255\016\001\017\001\018\001\019\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  COMMA\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  EXPONT\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  BOOL\000\
  VOID\000\
  DOUBLE\000\
  STRING\000\
  EOF\000\
  "

let yynames_block = "\
  INTLITERAL\000\
  DBLLITERAL\000\
  STRLITERAL\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 36 "parser.mly"
            ( _1 )
# 391 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
                 ( [], [] )
# 397 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 40 "parser.mly"
               ( (_2 :: fst _1), snd _1 )
# 405 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 41 "parser.mly"
               ( fst _1, (_2 :: snd _1) )
# 413 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 45 "parser.mly"
     ( { typ = _1;
	 fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8 } )
# 428 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
                  ( [] )
# 434 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 53 "parser.mly"
                  ( List.rev _1 )
# 441 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
                             ( [(_1,_2)] )
# 449 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 57 "parser.mly"
                             ( (_3,_4) :: _1 )
# 458 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
        ( Int )
# 464 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
           ( Double )
# 470 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
           ( String )
# 476 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
         ( Void )
# 482 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
         ( Bool )
# 488 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
                     ( [] )
# 494 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 70 "parser.mly"
                     ( _2 :: _1 )
# 502 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 73 "parser.mly"
               ( (_1, _2) )
# 510 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
                   ( [] )
# 516 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 77 "parser.mly"
                   ( _2 :: _1 )
# 524 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
              ( Expr _1 )
# 531 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "parser.mly"
                ( Return Noexpr )
# 537 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                     ( Return _2 )
# 544 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 83 "parser.mly"
                            ( Block(List.rev _2) )
# 551 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 84 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 559 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 85 "parser.mly"
                                            ( If(_3, _5, _7) )
# 568 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 87 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 578 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 88 "parser.mly"
                                  ( While(_3, _5) )
# 586 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "parser.mly"
                  ( Noexpr )
# 592 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
                  ( _1 )
# 599 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 95 "parser.mly"
                     ( IntLiteral(_1) )
# 606 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 96 "parser.mly"
                     ( DblLiteral(_1) )
# 613 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "parser.mly"
                     ( StrLiteral(_1) )
# 620 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 98 "parser.mly"
                     (BoolLiteral(true))
# 626 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "parser.mly"
                     (BoolLiteral(false))
# 632 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 100 "parser.mly"
                     ( Id(_1) )
# 639 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 647 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 102 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 655 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 103 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 663 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 671 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( Binop(_1, Exp,   _3) )
# 679 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 687 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 695 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 703 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 711 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 719 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 727 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 735 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 743 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                         ( Unop(Neg, _2) )
# 750 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Unop(Not, _2) )
# 757 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Assign(_1, _3) )
# 765 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 117 "parser.mly"
                                 ( Call(_1, _3) )
# 773 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                       ( _2 )
# 780 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 121 "parser.mly"
                  ( [] )
# 786 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 122 "parser.mly"
                  ( List.rev _1 )
# 793 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 125 "parser.mly"
                            ( [_1] )
# 800 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 126 "parser.mly"
                            ( _3 :: _1 )
# 808 "parser.ml"
               : 'actuals_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)