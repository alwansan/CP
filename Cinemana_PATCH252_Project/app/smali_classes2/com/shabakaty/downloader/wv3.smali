.class public final Lcom/shabakaty/downloader/wv3;
.super Lcom/shabakaty/downloader/oq$a;
.source "RxJava2CallAdapterFactory.java"


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wx3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/oq$a;-><init>()V

    return-void
.end method

.method public static b()Lcom/shabakaty/downloader/wv3;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/wv3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/wv3;-><init>(Lcom/shabakaty/downloader/wx3;Z)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/oq;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/shabakaty/downloader/lt3;",
            ")",
            "Lcom/shabakaty/downloader/oq<",
            "**>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 2
    const-class p3, Lcom/shabakaty/downloader/q70;

    if-ne p2, p3, :cond_0

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/vv3;

    const-class v1, Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/shabakaty/downloader/vv3;-><init>(Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/wx3;ZZZZZZZ)V

    return-object p1

    .line 4
    :cond_0
    const-class p3, Lcom/shabakaty/downloader/qf1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 5
    :goto_0
    const-class p3, Lcom/shabakaty/downloader/f74;

    if-ne p2, p3, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 6
    :goto_1
    const-class p3, Lcom/shabakaty/downloader/zn2;

    if-ne p2, p3, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    .line 7
    :goto_2
    const-class p3, Lcom/shabakaty/downloader/t43;

    if-eq p2, p3, :cond_4

    if-nez v8, :cond_4

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_4
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_8

    if-nez v8, :cond_7

    if-nez v9, :cond_6

    if-eqz v10, :cond_5

    const-string p1, "Maybe"

    goto :goto_3

    :cond_5
    const-string p1, "Observable"

    goto :goto_3

    :cond_6
    const-string p1, "Single"

    goto :goto_3

    :cond_7
    const-string p1, "Flowable"

    .line 9
    :goto_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<? extends Foo>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_8
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 11
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 13
    const-class p3, Lcom/shabakaty/downloader/xs3;

    if-ne p2, p3, :cond_a

    .line 14
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_9

    .line 15
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 16
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_4

    .line 17
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_a
    const-class p3, Lcom/shabakaty/downloader/et3;

    if-ne p2, p3, :cond_c

    .line 19
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_b

    .line 20
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 21
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_4
    move-object v3, p1

    move v6, v0

    const/4 v7, 0x0

    goto :goto_5

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    move-object v3, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 23
    :goto_5
    new-instance p1, Lcom/shabakaty/downloader/vv3;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/shabakaty/downloader/vv3;-><init>(Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/wx3;ZZZZZZZ)V

    return-object p1
.end method
