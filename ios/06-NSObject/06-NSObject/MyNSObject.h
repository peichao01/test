#include <stddef.h>
typedef const struct objc_selector
{
	void *sel_id;
	const char *sel_types;
} *MySEL;
typedef struct my_objc_object {
	struct my_objc_class*  class_pointer;
} *myId;

typedef myId (*MyIMP)(myId, MySEL, );

typedef char *STR;                              /* String alias */

typedef struct my_objc_class *MetaClass;
typedef struct my_objc_class *MyClass;
struct my_objc_class {
	MetaClass           class_pointer;
	struct my_objc_class*  super_class;
	const char*         name;
	long                version;
	unsigned long       info;
	long                instance_size;
	struct objc_ivar_list* ivars;
	struct objc_method_list*  methods;
	struct sarray *    dtable;
	struct my_objc_class* subclass_list;
	struct my_objc_class* sibling_class;
	struct objc_protocol_list *protocols;
	void* gc_object_type;
};

typedef struct objc_protocol {
	struct my_objc_class* class_pointer;
	char *protocol_name;
	struct objc_protocol_list *protocol_list;
	struct objc_method_description_list *instance_methods, *class_methods;
} Protocol;


typedef void* retval_t;
typedef void(*apply_t)(void);
typedef union arglist {
	char *arg_ptr;
	char arg_regs[sizeof (char*)];
} *arglist_t;

typedef struct objc_ivar* Ivar_t;
typedef struct objc_ivar_list {
	int   ivar_count;
	struct objc_ivar {
		const char* ivar_name;
		const char* ivar_type;
		int        ivar_offset;
	} ivar_list[1];
} IvarList, *IvarList_t;

typedef struct objc_method {
	MySEL         method_name;
	const char* method_types;
	MyIMP         method_imp;
} Method, *Method_t;

typedef struct objc_method_list {
	struct objc_method_list*  method_next;
	int            method_count;
	Method method_list[1];
} MethodList, *MethodList_t;

struct objc_protocol_list {
	struct objc_protocol_list *next;
	size_t count;
	Protocol *list[1];
};