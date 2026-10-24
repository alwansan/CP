.class public final Lcom/shabakaty/downloader/ne0;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlinx.coroutines.scheduler"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/rm3;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_1

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_3

    const-string v1, "off"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "on"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    sput-boolean v0, Lcom/shabakaty/downloader/ne0;->a:Z

    return-void

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final a(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/se0;->B()Lcom/shabakaty/downloader/me0;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    if-eq p0, p1, :cond_0

    .line 3
    sget v0, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v0, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final b(Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/me0;Ljava/lang/Object;)Lcom/shabakaty/downloader/nv4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;",
            "Lcom/shabakaty/downloader/me0;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/shabakaty/downloader/nv4<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/ue0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ov4;->r:Lcom/shabakaty/downloader/ov4;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    check-cast p0, Lcom/shabakaty/downloader/ue0;

    .line 4
    :cond_3
    instance-of v0, p0, Lcom/shabakaty/downloader/cu0;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-interface {p0}, Lcom/shabakaty/downloader/ue0;->h()Lcom/shabakaty/downloader/ue0;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 6
    instance-of v0, p0, Lcom/shabakaty/downloader/nv4;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/nv4;

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 7
    iput-object p1, v1, Lcom/shabakaty/downloader/nv4;->v:Lcom/shabakaty/downloader/me0;

    .line 8
    iput-object p2, v1, Lcom/shabakaty/downloader/nv4;->w:Ljava/lang/Object;

    :cond_6
    return-object v1
.end method
