.class public final Lcom/shabakaty/downloader/ho;
.super Lcom/shabakaty/downloader/de0$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ho$c;,
        Lcom/shabakaty/downloader/ho$a;,
        Lcom/shabakaty/downloader/ho$f;,
        Lcom/shabakaty/downloader/ho$e;,
        Lcom/shabakaty/downloader/ho$b;,
        Lcom/shabakaty/downloader/ho$d;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/de0$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ho;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/de0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/shabakaty/downloader/lt3;",
            ")",
            "Lcom/shabakaty/downloader/de0<",
            "*",
            "Lcom/shabakaty/downloader/yr3;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p2, Lcom/shabakaty/downloader/yr3;

    invoke-static {p1}, Lcom/shabakaty/downloader/bz4;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/ho$b;->r:Lcom/shabakaty/downloader/ho$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/lt3;)Lcom/shabakaty/downloader/de0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/shabakaty/downloader/lt3;",
            ")",
            "Lcom/shabakaty/downloader/de0<",
            "Lcom/shabakaty/downloader/ys3;",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p3, Lcom/shabakaty/downloader/ys3;

    if-ne p1, p3, :cond_1

    .line 2
    const-class p1, Lcom/shabakaty/downloader/yd4;

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/bz4;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/ho$c;->r:Lcom/shabakaty/downloader/ho$c;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/ho$a;->r:Lcom/shabakaty/downloader/ho$a;

    :goto_0
    return-object p1

    .line 5
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 6
    sget-object p1, Lcom/shabakaty/downloader/ho$f;->r:Lcom/shabakaty/downloader/ho$f;

    return-object p1

    .line 7
    :cond_2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/ho;->a:Z

    if-eqz p2, :cond_3

    .line 8
    :try_start_0
    const-class p2, Lcom/shabakaty/downloader/qv4;

    if-ne p1, p2, :cond_3

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/ho$e;->r:Lcom/shabakaty/downloader/ho$e;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ho;->a:Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
