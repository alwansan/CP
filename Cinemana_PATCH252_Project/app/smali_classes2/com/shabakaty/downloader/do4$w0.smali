.class public final enum Lcom/shabakaty/downloader/do4$w0;
.super Lcom/shabakaty/downloader/do4;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/do4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/do4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/do4$k;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->h(Lcom/shabakaty/downloader/do4;)V

    .line 3
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 5
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [C

    .line 6
    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ez;->p([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->a()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e

    .line 8
    invoke-virtual {p2, v1}, Lcom/shabakaty/downloader/ez;->o(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->e(Lcom/shabakaty/downloader/zn4;)V

    .line 10
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->a()V

    .line 11
    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    .line 12
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-object v0, p2, Lcom/shabakaty/downloader/zn4$e;->c:Ljava/lang/String;

    .line 14
    sget-object p2, Lcom/shabakaty/downloader/do4;->t0:Lcom/shabakaty/downloader/do4;

    .line 15
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    .line 16
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->n(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-object v0, p2, Lcom/shabakaty/downloader/zn4$e;->c:Ljava/lang/String;

    .line 18
    sget-object p2, Lcom/shabakaty/downloader/do4;->z0:Lcom/shabakaty/downloader/do4;

    .line 19
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/co4;->i(Lcom/shabakaty/downloader/do4;)V

    .line 21
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->m:Lcom/shabakaty/downloader/zn4$e;

    iput-boolean v2, p2, Lcom/shabakaty/downloader/zn4$e;->f:Z

    .line 22
    sget-object p2, Lcom/shabakaty/downloader/do4;->E0:Lcom/shabakaty/downloader/do4;

    .line 23
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 24
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_0
    return-void

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
