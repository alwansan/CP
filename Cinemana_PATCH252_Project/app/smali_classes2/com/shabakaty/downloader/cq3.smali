.class public Lcom/shabakaty/downloader/cq3;
.super Ljava/lang/Object;
.source "ReflectProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cq3$a;,
        Lcom/shabakaty/downloader/cq3$b;,
        Lcom/shabakaty/downloader/cq3$c;
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "initializer"

    aput-object v2, v0, v1

    const-string v1, "kotlin/reflect/jvm/internal/ReflectProperties"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    const-string p0, "lazy"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "lazySoft"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/cq3$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    return-object v0
.end method

.method public static c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/rm1<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/cq3$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/cq3;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/shabakaty/downloader/rm1<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/cq3$a<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cq3$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/cq3$a;-><init>(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)V

    return-object v0

    :cond_0
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/cq3;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
