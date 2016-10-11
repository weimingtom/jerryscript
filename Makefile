# python tools/build.py
PLAT := 

CC := $(PLAT)gcc 
CPP := $(PLAT)g++
LD := $(PLAT)ld
AR := $(PLAT)ar rcu 
RANLIB := $(PLAT)ranlib
STRIP := $(PLAT)strip
RM := rm -f

CFLAGS := 
CFLAGS += -DCONFIG_MEM_HEAP_AREA_SIZE=524288 
#CFLAGS += -DJERRY_NDEBUG 
#CFLAGS += -mfpmath=sse -msse2 
#CFLAGS += -flto -fno-fat-lto-objects 
#CFLAGS += -fno-builtin 
#CFLAGS += -fno-stack-protector 
CFLAGS += -g 
CFLAGS += -Wall -Werror=all -Wextra -Werror=extra -Wformat-nonliteral -Werror=format-nonliteral -Winit-self 
CFLAGS += -Werror=init-self 
#CFLAGS += -Wconversion 
#CFLAGS += -Werror=conversion 
#CFLAGS += -Wsign-conversion 
#CFLAGS += -Werror=sign-conversion 
CFLAGS += -Wformat-security -Werror=format-security 
CFLAGS += -Wmissing-declarations -Werror=missing-declarations -Wno-stack-protector 
CFLAGS += -Wno-attributes -Wlogical-op -Werror=logical-op -Werror 
CFLAGS += -std=c99 -pedantic 

CFLAGS += -Ijerry-core 
CFLAGS += -Ijerry-core/ecma/base 
CFLAGS += -Ijerry-core/ecma/builtin-objects 
CFLAGS += -Ijerry-core/ecma/operations 
CFLAGS += -Ijerry-core/jcontext 
CFLAGS += -Ijerry-core/jmem 
CFLAGS += -Ijerry-core/jrt 
CFLAGS += -Ijerry-core/lit 
CFLAGS += -Ijerry-core/parser/js 
CFLAGS += -Ijerry-core/parser/regexp 
CFLAGS += -Ijerry-core/vm



LDFLAGS += -DCONFIG_MEM_HEAP_AREA_SIZE=524288 -DJERRY_COMMIT_HASH="\" (9915307)\"" -DJERRY_NDEBUG 
#LDFLAGS += -mfpmath=sse -msse2 
#LDFLAGS += -flto -fno-fat-lto-objects -fno-builtin 
#LDFLAGS += -fno-stack-protector 
LDFLAGS += -g 
LDFLAGS += -Wall -Werror=all -Wextra -Werror=extra -Wformat-nonliteral -Werror=format-nonliteral 
LDFLAGS += -Winit-self -Werror=init-self 
#LDFLAGS += -Wconversion 
#LDFLAGS += -Werror=conversion 
#LDFLAGS += -Wsign-conversion 
#LDFLAGS += -Werror=sign-conversion 
LDFLAGS += -Wformat-security -Werror=format-security -Wmissing-declarations 
LDFLAGS += -Werror=missing-declarations -Wno-stack-protector -Wno-attributes -Wlogical-op 
LDFLAGS += -Werror=logical-op -Werror 
LDFLAGS += -std=c99 -pedantic 
#-Os -mfpmath=sse -msse2  -static 
#LDFLAGS += -flto -Wl,-z,noexecstack -nostdlib 
LDFLAGS += -lm

#LDFLAGS += -Ijerry-core 
#LDFLAGS += -Ijerry-core/ecma/base 
#LDFLAGS += -Ijerry-core/ecma/builtin-objects 
#LDFLAGS += -Ijerry-core/ecma/operations 
#LDFLAGS += -Ijerry-core/jcontext 
#LDFLAGS += -Ijerry-core/jmem 
#LDFLAGS += -Ijerry-core/jrt 
#LDFLAGS += -Ijerry-core/lit 
#LDFLAGS += -Ijerry-core/parser/js 
#LDFLAGS += -Ijerry-core/parser/regexp 
#LDFLAGS += -Ijerry-core/vm
LDFLAGS += -Itargets/default











OBJECTS := 
OBJECTS += jerry-core/jerry.o

OBJECTS += jerry-core/ecma/base/ecma-property-hashmap.o
OBJECTS += jerry-core/ecma/base/ecma-gc.o
OBJECTS += jerry-core/ecma/base/ecma-init-finalize.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-string.o
OBJECTS += jerry-core/ecma/base/ecma-lcache.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-conversion.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-errol.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-value.o
OBJECTS += jerry-core/ecma/base/ecma-literal-storage.o
OBJECTS += jerry-core/ecma/base/ecma-alloc.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-external-pointers.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-values-collection.o
OBJECTS += jerry-core/ecma/base/ecma-helpers-number.o
OBJECTS += jerry-core/ecma/base/ecma-helpers.o

OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-helpers-json.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-string-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-urierror.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtins.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-global.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-boolean-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-helpers-error.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-type-error-thrower.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-referenceerror-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-array.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-number.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-object-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-function.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-object.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-referenceerror.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-json.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-function-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-evalerror-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-date-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-regexp-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-typeerror-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-syntaxerror.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-helpers.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-regexp.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-syntaxerror-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-error-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-rangeerror-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-array-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-boolean.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-helpers-date.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-math.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-number-prototype.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-rangeerror.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-date.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-evalerror.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-error.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-string.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-typeerror.o
OBJECTS += jerry-core/ecma/builtin-objects/ecma-builtin-urierror-prototype.o

OBJECTS += jerry-core/ecma/operations/ecma-objects-arguments.o
OBJECTS += jerry-core/ecma/operations/ecma-reference.o
OBJECTS += jerry-core/ecma/operations/ecma-conversion.o
OBJECTS += jerry-core/ecma/operations/ecma-regexp-object.o
OBJECTS += jerry-core/ecma/operations/ecma-get-put-value.o
OBJECTS += jerry-core/ecma/operations/ecma-comparison.o
OBJECTS += jerry-core/ecma/operations/ecma-function-object.o
OBJECTS += jerry-core/ecma/operations/ecma-lex-env.o
OBJECTS += jerry-core/ecma/operations/ecma-eval.o
OBJECTS += jerry-core/ecma/operations/ecma-objects.o
OBJECTS += jerry-core/ecma/operations/ecma-array-object.o
OBJECTS += jerry-core/ecma/operations/ecma-objects-general.o
OBJECTS += jerry-core/ecma/operations/ecma-exceptions.o
OBJECTS += jerry-core/ecma/operations/ecma-string-object.o
OBJECTS += jerry-core/ecma/operations/ecma-number-arithmetic.o
OBJECTS += jerry-core/ecma/operations/ecma-number-object.o
OBJECTS += jerry-core/ecma/operations/ecma-boolean-object.o

OBJECTS += jerry-core/jcontext/jcontext.o

OBJECTS += jerry-core/jmem/jmem-heap.o
OBJECTS += jerry-core/jmem/jmem-poolman.o
OBJECTS += jerry-core/jmem/jmem-allocator.o

OBJECTS += jerry-core/jrt/jrt-fatals.o

OBJECTS += jerry-core/lit/lit-char-helpers.o
OBJECTS += jerry-core/lit/lit-strings.o
OBJECTS += jerry-core/lit/lit-magic-strings.o

OBJECTS += jerry-core/parser/js/js-parser-scanner.o
OBJECTS += jerry-core/parser/js/js-parser.o
OBJECTS += jerry-core/parser/js/byte-code.o
OBJECTS += jerry-core/parser/js/js-parser-expr.o
OBJECTS += jerry-core/parser/js/js-lexer.o
OBJECTS += jerry-core/parser/js/common.o
OBJECTS += jerry-core/parser/js/js-parser-util.o
OBJECTS += jerry-core/parser/js/js-parser-mem.o
OBJECTS += jerry-core/parser/js/js-parser-statm.o

OBJECTS += jerry-core/parser/regexp/re-parser.o
OBJECTS += jerry-core/parser/regexp/re-bytecode.o
OBJECTS += jerry-core/parser/regexp/re-compiler.o

OBJECTS += jerry-core/vm/opcodes.o
OBJECTS += jerry-core/vm/opcodes-ecma-equality.o
OBJECTS += jerry-core/vm/opcodes-ecma-bitwise.o
OBJECTS += jerry-core/vm/vm.o
OBJECTS += jerry-core/vm/opcodes-ecma-arithmetics.o
OBJECTS += jerry-core/vm/vm-stack.o
OBJECTS += jerry-core/vm/opcodes-ecma-relational.o

OBJECTS += targets/default/jerry-port-default-fatal.o
OBJECTS += targets/default/jerry-port-default-io.o
OBJECTS += targets/default/jerry-port-default-date.o

all : libjerry-core.a jerry.exe

jerry.exe : libjerry-core.a
	$(CC) $(CFLAGS) -o $@ jerry-main/main-unix.c libjerry-core.a $(LDFLAGS)
	
libjerry-core.a : $(OBJECTS)
	$(AR) $@ $(OBJECTS) 
	$(RANLIB) $@
	
%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $<
	
clean :
	$(RM) $(OBJECTS) *.a *.so *.exe
