.class public abstract Lcom/shabakaty/downloader/pe0;
.super Lcom/shabakaty/downloader/v;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lcom/shabakaty/downloader/yd0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pe0$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/pe0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/pe0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pe0$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/pe0;->r:Lcom/shabakaty/downloader/pe0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/v;-><init>(Lcom/shabakaty/downloader/me0$c;)V

    return-void
.end method


# virtual methods
.method public B(Lcom/shabakaty/downloader/me0;)Z
    .locals 0

    instance-of p0, p0, Lcom/shabakaty/downloader/jv4;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract g(Lcom/shabakaty/downloader/me0;Ljava/lang/Runnable;)V
.end method

.method public get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/me0$b;",
            ">(",
            "Lcom/shabakaty/downloader/me0$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lcom/shabakaty/downloader/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/w;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/w;->s:Lcom/shabakaty/downloader/me0$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "element"

    .line 6
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/w;->r:Lcom/shabakaty/downloader/tm1;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/me0$b;

    .line 8
    instance-of v0, p1, Lcom/shabakaty/downloader/me0$b;

    if-eqz v0, :cond_3

    move-object v2, p1

    goto :goto_2

    .line 9
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    if-ne v0, p1, :cond_3

    move-object v2, p0

    :cond_3
    :goto_2
    return-object v2
.end method

.method public minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;)",
            "Lcom/shabakaty/downloader/me0;"
        }
    .end annotation

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lcom/shabakaty/downloader/w;

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/w;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/v;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/w;->s:Lcom/shabakaty/downloader/me0$c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "element"

    .line 6
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/w;->r:Lcom/shabakaty/downloader/tm1;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/me0$b;

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    goto :goto_2

    :cond_2
    move-object p1, p0

    goto :goto_2

    .line 9
    :cond_3
    sget-object v0, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    if-ne v0, p1, :cond_2

    sget-object p1, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    :goto_2
    return-object p1
.end method

.method public final r(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/ud0<",
            "-TT;>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/au0;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/au0;-><init>(Lcom/shabakaty/downloader/pe0;Lcom/shabakaty/downloader/ud0;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/shabakaty/downloader/he0;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/au0;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/au0;->p()Lcom/shabakaty/downloader/gv;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->s()V

    :cond_0
    return-void
.end method
