local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require "luasnip.extras.postfix".postfix
return {
    s("gh", {
        t({
            "#include <stdio.h>",
            "#include <math.h>",
            "#include <stdlib.h>",
            "#include <time.h>",
            "#include <stdbool.h>",
            "#include <string.h>",
            "#include <unistd.h>",
            "#include <getopt.h>",
            "",
            "#define debug printf",
            "#define INT sizeof(int)",
            "#define DOUBLE sizeof(double)",
            "#define FLOAT sizeof(float)",
            "",
            "#define max(a,b) ((a)>(b)?(a):(b))",
            "#define min(a,b) ((a)<(b)?(a):(b))",
            "#define swap(x,y)   do{typeof(x) t;t=x;x=y;y=t;}while(0);",
            "#define MALLOC(n, type)  (type*)malloc(n*sizeof(type))",
            "#define CALLOC(n, type)  (type*)calloc(n, sizeof(type))",
            ""

        })
    }),
    -- linked list
    s("llNode", {
        t({
            "typedef struct linked_list",
            "{",
            "    struct linked_list * prior;",
            "    int data;",
            "    struct linked_list * next;",
            "}lList;",
            ""
        })
    }),
    s("initLList", {
        t({
            "lList* initLList(lList* head)",
            "{",
            "    ",
            "    lList* list = NULL;",
            "    head = (lList*)malloc(sizeof(lList));",
            "    head->prior = NULL;",
            "    head->next = NULL;",
            "    head->data = 1;",
            "    list = head;",
            "    for (int i = 2; i <= 5; i++)",
            "    {",
            "        lList* body = (lList*)malloc(sizeof(lList));",
            "        body->prior = NULL;",
            "        body->next = NULL;",
            "        body->data = i;",
            "        list->next = body;",
            "        body->prior = list;",
            "        list = list->next;",
            "    }",
            "    return head;",
            "}",
            ""
        })
    }),
    s("insertLList", {
        t({
            "lList* insertLList(lList* head, int data, int add)",
            "{",
            "    lList* temp = (lList*)malloc(sizeof(lList));",
            "    temp->data = data;",
            "    temp->prior = NULL;",
            "    temp->next = NULL;",
            "    if (add == 1)",
            "    {",
            "        temp->next = head;",
            "        head->prior = temp;",
            "        head = temp;",
            "    }",
            "    else",
            "    {",
            "        int i;",
            "        lList* body = head;",
            "        //find the node before the target",
            "        for (i = 1; i < add - 1; i++)",
            "        {",
            "            body = body->next;",
            "            if (!body)",
            "            {",
            "           //wrong",
            "                printf(\"Wrong position\\n\");",
            "                return head;",
            "            }",
            "        }",
            "        if (body && (body->next == NULL))//the position is the end of the linked list",
            "        {",
            "            body->next = temp;",
            "            temp->prior = body;",
            "        }",
            "        else",
            "        {",
            "            // not the end",
            "            body->next->prior = temp;",
            "            temp->next = body->next;",
            "            body->next = temp;",
            "            temp->prior = body;",
            "        }",
            "    }",
            "    return head;",
            "}",
            ""
        })
    }),


    s("freeLList", {
        t({
            "void freeLList(lList* head)",
            "{",
            "    head->prior->next=NULL;",
            "    head->prior=NULL;",
            "    lList* temp=head;",
            "    while(temp)",
            "    {",
            "        head=head->next;",
            "        // free(temp->data);",
            "        free(temp);",
            "        temp=head;",
            "    }",
            "}",
            ""
        })
    }),

    s("findElem", {
        t({
            "int findElem(lList * head,int elem)",
            "{",
            "    lList * t=head;",
            "    int i=1;",
            "    while (t)",
            "    {",
            "        if (t->data==elem)",
            "        {",
            "            return i;",
            "        }",
            "        i++;",
            "        t=t->next;",
            "    }",
            "    return -1;",
            "}",
            ""
        })
    }),

    s("amendElem", {
        t({
            "void amendElem(lList* p, int oldElem, int newElem)",
            "{",
            "    lList* temp = p;",
            "    int isFind = 0;",
            "    while (temp)",
            "    {",
            "        if (temp->data == oldElem)",
            "        {",
            "            isFind = 1;",
            "            break;",
            "        }",
            "        temp = temp->next;",
            "    }",
            "    if (isFind == 1)",
            "    {",
            "        temp->data = newElem;",
            "        return;",
            "    }",
            "    printf(\"Wrong target\\n\");",
            "}",
            ""
        })
    }),
    s("dfs", {
        t({
            "int dfs(int i)",
            "{",
            "	int j;",
            "	for(j = 1;j<=maxj;j++)",
            "	{",
            "		if(新节点符合条件)",
            "		{",
            "			记录新节点；",
            "			标记；",
            "			if(到目标节点)输出；",
            "			else dfs(i+1);",
            "				删除节点",
            "		}",
            "	}",
            "",
            "	return 0;",
            "}"
        })
    }),
    s("opt", {

        t({
            "const struct option long_options[] = ",
            "{",
            "    {\"help\",no_argument,NULL,'h'},",
            "    {\"decks\",required_argument,NULL,'d'},",
            "    {\"log\",optional_argument,NULL,'l'}",
            "};",

            "int main (int argc, char *argv[])",
            "{",
            "    ",
            "    int ch=0;int index, d, l;FILE *fp;",
            "        while(EOF != (ch = getopt_long(argc,argv,\"hd:l::\",long_options,&index)))",
            "        {  ",
            "            switch(ch)  ",
            "            {  ",
            "                case 'd':  ",
            "                    d=atoi(optarg);",
            "                    break;  ",
            "                case 'h':",
            "                    break;  ",
            "                case 'l':",
            "                    if(optarg)l=atoi(optarg);",
            "                    break;  ",
            "                default:  ",
            "                    return 0;",
            "            }",
            "        } ",
            "    return 0;",
            "}",


        })
    }),
    s("hf", {
        t({ "//头文件",
            "#ifndef xxx",
            "#define xxx",
            "// xxxxxx",
            "#endif",
        })

    }),
    s("ran", {
        t({ "int a;",
            "srand((unsigned)time(NULL));//写在循环外面",
            "a=rand()%10;"
        })
    }),
    s("strcmp", {
        t({ " if (strcmp(day,\"Sun\")==0)" })
    }),
    s("gcd", {
        t({ "int gcd(int a, int b)",
            "{",
            "    if (b == 0) return a;",
            "    else return gcd(b, a % b);",
            "}",
        })
    }),
    s("readNumFromFile", {
        t({
            "FILE *fid;",
            "fid = fopen(\"matrices.txt\", \"r\");",
            "while(!feof(fid)){",
            "fscanf(fid,\"%d\",&num[m]);",
            "fclose(fid);",
        })
    }),
    s("readline", {
        t({ "int readline(char sentence[]){",
            "	char c;",
            "	int i=0;",
            "	while((c=(char)getchar())!=\'\\n\'&&c!=EOF){",
            "			sentence[i++]=c;",
            "	}",
            "	sentence[i]=\'\\0\';",
            "	return i;",
            "}"
        })

    }),
    s("kmp", {
        t({ "int kmp(char *s, char *p, int next[])",
            "{",
            "    int s_len = (int)strlen(s);",
            "    int p_len = (int)strlen(p);",
            "    int i = 0;",
            "    int j = 0;",
            "    int cnt=0;",
            "    while(i < s_len && j < p_len)",
            "    {",
            "        if(j == -1 || s[i] == p[j])",
            "        {",
            "            i++;",
            "            j++;",
            "        }",
            "        else",
            "            j = next[j];",
            "        if(j == p_len)",
            "        {",
            "            cnt++;",
            "            j=next[j];",
            "        }",
            "    }",
            "    return cnt;",
            "}",
        })
    })

}
