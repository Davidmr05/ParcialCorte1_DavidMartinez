#!/usr/bin/awk -f

# Definir los tokens a reconocer
{
    # + token
    if ($0 ~ /^\+$/) {
        print "TOKEN: PLUS ( + )"
    }
    # ++ token
    else if ($0 ~ /^\+\+$/) {
        print "TOKEN: DOUBLE_PLUS ( ++ )"
    }
    # [0-9]+ (número entero)
    else if ($0 ~ /^[0-9]+$/) {
        print "TOKEN: INTEGER (" $0 ")"
    }
    # ([0-9]+) "." ([0-9]+) (número decimal)
    else if ($0 ~ /^[0-9]+\.[0-9]+$/) {
        print "TOKEN: FLOAT (" $0 ")"
    }
    else {
        print "ERROR: Expresión no reconocida (" $0 ")"
    }
}