.class public final Lcom/shabakaty/downloader/m$a;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xy<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Lcom/shabakaty/downloader/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/m<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/m<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    iput-object p1, p0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/m$a;->b(Ljava/lang/Object;)Z

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/m;->v()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/m$a;->b(Ljava/lang/Object;)Z

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->q(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/he0;->l(Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/gv;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/m$d;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/m$d;-><init>(Lcom/shabakaty/downloader/m$a;Lcom/shabakaty/downloader/fv;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    .line 9
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/m;->o(Lcom/shabakaty/downloader/xn3;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Lcom/shabakaty/downloader/m$e;

    invoke-direct {v2, v1, v0}, Lcom/shabakaty/downloader/m$e;-><init>(Lcom/shabakaty/downloader/m;Lcom/shabakaty/downloader/xn3;)V

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/gv;->q(Lcom/shabakaty/downloader/tm1;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/m;->v()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    .line 15
    instance-of v2, v1, Lcom/shabakaty/downloader/f40;

    if-eqz v2, :cond_5

    .line 16
    check-cast v1, Lcom/shabakaty/downloader/f40;

    iget-object v0, v1, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/f40;->B()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/gv;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_5
    sget-object v2, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    if-eq v1, v2, :cond_2

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    iget-object v2, p0, Lcom/shabakaty/downloader/m$a;->b:Lcom/shabakaty/downloader/m;

    iget-object v2, v2, Lcom/shabakaty/downloader/z0;->s:Lcom/shabakaty/downloader/tm1;

    if-eqz v2, :cond_6

    .line 23
    iget-object v3, p1, Lcom/shabakaty/downloader/gv;->u:Lcom/shabakaty/downloader/me0;

    .line 24
    new-instance v4, Lcom/shabakaty/downloader/c73;

    invoke-direct {v4, v2, v1, v3}, Lcom/shabakaty/downloader/c73;-><init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/me0;)V

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    .line 25
    :goto_0
    iget v1, p1, Lcom/shabakaty/downloader/du0;->t:I

    invoke-virtual {p1, v0, v1, v4}, Lcom/shabakaty/downloader/gv;->D(Ljava/lang/Object;ILcom/shabakaty/downloader/tm1;)V

    .line 26
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gv;->x()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/f40;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/f40;

    iget-object v0, p1, Lcom/shabakaty/downloader/f40;->u:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/f40;->B()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/db4;->a:Ljava/lang/String;

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/f40;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    if-eq v0, v1, :cond_0

    .line 4
    iput-object v1, p0, Lcom/shabakaty/downloader/m$a;->a:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Lcom/shabakaty/downloader/f40;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f40;->B()Ljava/lang/Throwable;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/db4;->a:Ljava/lang/String;

    throw v0
.end method
