.class public final Lcom/shabakaty/downloader/ov1$e;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l84;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ov1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/ei1;

.field public s:Z

.field public final synthetic t:Lcom/shabakaty/downloader/ov1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ov1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ov1$e;->t:Lcom/shabakaty/downloader/ov1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ei1;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/l84;->l()Lcom/shabakaty/downloader/on4;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ei1;-><init>(Lcom/shabakaty/downloader/on4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/ov1$e;->r:Lcom/shabakaty/downloader/ei1;

    return-void
.end method


# virtual methods
.method public b0(Lcom/shabakaty/downloader/zn;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ov1$e;->s:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p1, Lcom/shabakaty/downloader/zn;->s:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/ry4;->c(JJJ)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$e;->t:Lcom/shabakaty/downloader/ov1;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/l84;->b0(Lcom/shabakaty/downloader/zn;J)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ov1$e;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ov1$e;->s:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$e;->t:Lcom/shabakaty/downloader/ov1;

    iget-object v1, p0, Lcom/shabakaty/downloader/ov1$e;->r:Lcom/shabakaty/downloader/ei1;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/ov1;->i(Lcom/shabakaty/downloader/ov1;Lcom/shabakaty/downloader/ei1;)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$e;->t:Lcom/shabakaty/downloader/ov1;

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Lcom/shabakaty/downloader/ov1;->a:I

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ov1$e;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$e;->t:Lcom/shabakaty/downloader/ov1;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ov1;->g:Lcom/shabakaty/downloader/do;

    .line 4
    invoke-interface {v0}, Lcom/shabakaty/downloader/do;->flush()V

    return-void
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ov1$e;->r:Lcom/shabakaty/downloader/ei1;

    return-object v0
.end method
