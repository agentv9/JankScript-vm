#ifndef JANKSCRIPT_PARSER_H
#define JANKSCRIPT_PARSER_H

#include <stdio.h>
#include <string.h>
#include <stdint.h>

#include"token.h"

enum _ParserStatus {
     SUCCESS,
     SYNTAX_ERROR
};
typedef _ParserStatus ParserStatus;


ParserStatus parser_start(TokenList* list, const char* source);
uint32_t parser_get_number(const char* buf);
TokenInst parser_get_inst(const char* buf);

#endif