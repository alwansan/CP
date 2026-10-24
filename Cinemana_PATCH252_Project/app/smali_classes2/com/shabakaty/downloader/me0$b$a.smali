.class public final Lcom/shabakaty/downloader/me0$b$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/me0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/me0$b;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/me0$b;",
            "TR;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TR;-",
            "Lcom/shabakaty/downloader/me0$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2, p1, p0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/me0$b;",
            ">(",
            "Lcom/shabakaty/downloader/me0$b;",
            "Lcom/shabakaty/downloader/me0$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/me0$b;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0$b;",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;)",
            "Lcom/shabakaty/downloader/me0;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/me0$b;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    :cond_0
    return-object p0
.end method

.method public static d(Lcom/shabakaty/downloader/me0$b;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$a;->a(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p0

    return-object p0
.end method
