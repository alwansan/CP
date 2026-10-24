.class public Lcom/shabakaty/downloader/ll3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/v37;
.implements Lcom/shabakaty/downloader/ho5;
.implements Lcom/shabakaty/downloader/j31;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    const-class p0, Lcom/shabakaty/downloader/ll3;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static f(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ll3;->a(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/ll3;->g(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/ClassLoader;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Impl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :catch_3
    invoke-static {p0, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    return-object v0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/ClassNotFoundException;

    const-string v0, "Cannot find implementation for "

    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b([BII)[B
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/gg4;)Ljava/lang/String;
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/gg4;->b:Ljava/lang/String;

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/n31;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/n31;->a:Ljava/lang/String;

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/n31;->f:I

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/shabakaty/downloader/iq6;->k(C)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ge v1, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt v5, v0, :cond_4

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->a:Ljava/lang/String;

    .line 8
    iget v3, p1, Lcom/shabakaty/downloader/n31;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 9
    iget-object v3, p1, Lcom/shabakaty/downloader/n31;->a:Ljava/lang/String;

    .line 10
    iget v4, p1, Lcom/shabakaty/downloader/n31;->f:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 11
    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->k(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/shabakaty/downloader/iq6;->k(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x82

    int-to-char v1, v1

    .line 12
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p1, Lcom/shabakaty/downloader/n31;->f:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/shabakaty/downloader/n31;->f:I

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "not digits: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/n31;->b()C

    move-result v2

    .line 16
    iget-object v4, p1, Lcom/shabakaty/downloader/n31;->a:Ljava/lang/String;

    .line 17
    iget v5, p1, Lcom/shabakaty/downloader/n31;->f:I

    invoke-static {v4, v5, v3}, Lcom/shabakaty/downloader/iq6;->s(Ljava/lang/CharSequence;II)I

    move-result v3

    if-eqz v3, :cond_a

    if-eq v3, v1, :cond_9

    if-eq v3, v0, :cond_8

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    const/4 v0, 0x4

    if-eq v3, v0, :cond_6

    const/4 v0, 0x5

    if-ne v3, v0, :cond_5

    const/16 v1, 0xe7

    .line 18
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iput v0, p1, Lcom/shabakaty/downloader/n31;->g:I

    return-void

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal mode: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v1, 0xf0

    .line 21
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    iput v0, p1, Lcom/shabakaty/downloader/n31;->g:I

    return-void

    :cond_7
    const/16 v1, 0xee

    .line 23
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    iput v0, p1, Lcom/shabakaty/downloader/n31;->g:I

    return-void

    :cond_8
    const/16 v1, 0xef

    .line 25
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    iput v0, p1, Lcom/shabakaty/downloader/n31;->g:I

    return-void

    :cond_9
    const/16 v0, 0xe6

    .line 27
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    iput v1, p1, Lcom/shabakaty/downloader/n31;->g:I

    return-void

    .line 29
    :cond_a
    invoke-static {v2}, Lcom/shabakaty/downloader/iq6;->l(C)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xeb

    .line 30
    iget-object v3, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x80

    add-int/2addr v2, v1

    int-to-char v0, v2

    .line 31
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget v0, p1, Lcom/shabakaty/downloader/n31;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/shabakaty/downloader/n31;->f:I

    return-void

    :cond_b
    add-int/2addr v2, v1

    int-to-char v0, v2

    .line 33
    iget-object v2, p1, Lcom/shabakaty/downloader/n31;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget v0, p1, Lcom/shabakaty/downloader/n31;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/shabakaty/downloader/n31;->f:I

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/FontImportStore;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gg4;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/gg4;->c:Lcom/shabakaty/downloader/gg4;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/gg4$b;->e:Lcom/shabakaty/downloader/gg4$b;

    const-string v1, "fonts/almarai_regular.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/gg4$a;->e:Lcom/shabakaty/downloader/gg4$a;

    const-string v1, "fonts/almarai_bold.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/gg4$k;->e:Lcom/shabakaty/downloader/gg4$k;

    const-string v1, "fonts/helveticaneueltarabic-bold.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/gg4$p;->e:Lcom/shabakaty/downloader/gg4$p;

    const-string v1, "fonts/TheSans-Bold.otf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_0

    .line 6
    :cond_4
    sget-object v0, Lcom/shabakaty/downloader/gg4$h;->e:Lcom/shabakaty/downloader/gg4$h;

    const-string v1, "fonts/Dubai-Bold.otf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0

    .line 7
    :cond_5
    sget-object v0, Lcom/shabakaty/downloader/gg4$s;->e:Lcom/shabakaty/downloader/gg4$s;

    const-string v1, "fonts/UniversNextArabic-Regular.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 8
    :cond_6
    sget-object v0, Lcom/shabakaty/downloader/gg4$m;->e:Lcom/shabakaty/downloader/gg4$m;

    const-string v1, "fonts/makkah.otf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0

    .line 9
    :cond_7
    sget-object v0, Lcom/shabakaty/downloader/gg4$d;->e:Lcom/shabakaty/downloader/gg4$d;

    const-string v1, "fonts/Bahij Muna-Regular.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_0

    .line 10
    :cond_8
    sget-object v0, Lcom/shabakaty/downloader/gg4$e;->e:Lcom/shabakaty/downloader/gg4$e;

    const-string v1, "fonts/Bahij TheSansArabic-Plain.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 11
    :cond_9
    sget-object v0, Lcom/shabakaty/downloader/gg4$g;->e:Lcom/shabakaty/downloader/gg4$g;

    const-string v1, "fonts/dinnextltarabic-light.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 12
    :cond_a
    sget-object v0, Lcom/shabakaty/downloader/gg4$i;->e:Lcom/shabakaty/downloader/gg4$i;

    const-string v1, "fonts/FrutigerLTArabic-55Roman.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_0

    .line 13
    :cond_b
    sget-object v0, Lcom/shabakaty/downloader/gg4$j;->e:Lcom/shabakaty/downloader/gg4$j;

    const-string v1, "fonts/Hacen Typographer Md.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_0

    .line 14
    :cond_c
    sget-object v0, Lcom/shabakaty/downloader/gg4$l;->e:Lcom/shabakaty/downloader/gg4$l;

    const-string v1, "fonts/KacstLetter.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_0

    .line 15
    :cond_d
    sget-object v0, Lcom/shabakaty/downloader/gg4$n;->e:Lcom/shabakaty/downloader/gg4$n;

    const-string v1, "fonts/PF Din Text Arabic Medium.otf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_0

    .line 16
    :cond_e
    sget-object v0, Lcom/shabakaty/downloader/gg4$o;->e:Lcom/shabakaty/downloader/gg4$o;

    const-string v1, "fonts/PalatinoLTArabic-Regular.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_0

    .line 17
    :cond_f
    sget-object v0, Lcom/shabakaty/downloader/gg4$q;->e:Lcom/shabakaty/downloader/gg4$q;

    const-string v1, "fonts/timeburner_regular.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_0

    .line 18
    :cond_10
    sget-object v0, Lcom/shabakaty/downloader/gg4$r;->e:Lcom/shabakaty/downloader/gg4$r;

    const-string v1, "fonts/trado.ttf"

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_0

    .line 19
    :cond_11
    sget-object v0, Lcom/shabakaty/downloader/gg4$c;->e:Lcom/shabakaty/downloader/gg4$c;

    :goto_0
    return-object v0
.end method
