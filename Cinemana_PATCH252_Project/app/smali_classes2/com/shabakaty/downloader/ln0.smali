.class public final Lcom/shabakaty/downloader/ln0;
.super Lcom/shabakaty/downloader/oq$a;
.source "DefaultCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ln0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/oq$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ln0;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/oq;
    .locals 2
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

    move-result-object p3

    .line 2
    const-class v0, Lcom/shabakaty/downloader/nq;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of p3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 4
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/bz4;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    const-class p3, Lcom/shabakaty/downloader/m84;

    invoke-static {p2, p3}, Lcom/shabakaty/downloader/bz4;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ln0;->a:Ljava/util/concurrent/Executor;

    .line 7
    :goto_0
    new-instance p2, Lcom/shabakaty/downloader/ln0$a;

    invoke-direct {p2, p0, p1, v1}, Lcom/shabakaty/downloader/ln0$a;-><init>(Lcom/shabakaty/downloader/ln0;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V

    return-object p2

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Call return type must be parameterized as Call<Foo> or Call<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
