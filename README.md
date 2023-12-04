# L-Language

## 简介

L-Language，中文名为L语言。是一个编译型语言，支持动态编译运行（虚拟机）和静态编译运行两种模式（可在编译时指定模式）。

有关此语言，你可以阅读[在线文档]()或进入[官网]()。

## 示例程序

### HelloWorld程序

```
// filename: HelloWorld.l
package com.l.example;

public class HelloWorld {
    public static void main(String[] arga){
        SystemOutputStream.println("Hello,world!");
    }
}
```

### 加法程序

```
// filename: Test1.l
package com.l.example;

public class Test1 {
    public static void main(String[] arga) {
        SystemOutputStream.println(add(1,2));
    }
    private static int add(int& a,int& b) {
        return a+b;
    }
}
```

### 输入文本并输出

```
// filename: Test2.l
package com.l.example;

public class Test2 {
    public static void main(String[] arga) {
        String in=SystemInputStream.inputLine();
        SystemOutputStream.println(in);
    }
}
```

### 文件读取与写入

```
// filename: Test3.l
package com.l.example;

public class Test3 {
    public static void main(String[] arga){
        OutputStream outputStream=new OutputStream("test.txt");
        outputStream.println("Hello,world!");
        outputStream.write("Hello,world!\n");
        InputStream inputStream=new InputStream("test.txt");
        String[] lines=inputStream.readLines();
        for (String s:lines) {
            SystemOutputStream.println(s);
        }
    }
}
```

### 类的继承

```
// filename: A.l
package com.l.example;

public class A extends B {
    private String b;
    public A(String& b) {
        this("A");
    }
    public A(String& a,String& b){
        this.b=clone b;
    }
}
class B {
    String name;
    public B(String& name){
        this.name=clone name;
    }
}
```
