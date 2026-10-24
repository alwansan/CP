.class public Lcom/shabakaty/downloader/b37$b;
.super Lcom/shabakaty/downloader/dz6;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/b37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/b37<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/b37$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/dz6<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/b37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/b37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b37;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/dz6;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/b37$b;->r:Lcom/shabakaty/downloader/b37;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v1}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/shabakaty/downloader/b37;

    iput-object p1, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/b37;Lcom/shabakaty/downloader/b37;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/n87;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->r:Lcom/shabakaty/downloader/b37;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/b37$b;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b37$b;->k()Lcom/shabakaty/downloader/d77;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/b37;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b37$b;->i(Lcom/shabakaty/downloader/b37;)Lcom/shabakaty/downloader/b37$b;

    return-object v0
.end method

.method public final synthetic f()Lcom/shabakaty/downloader/d77;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->r:Lcom/shabakaty/downloader/b37;

    return-object v0
.end method

.method public final i(Lcom/shabakaty/downloader/b37;)Lcom/shabakaty/downloader/b37$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b37$b;->j()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/b37$b;->h(Lcom/shabakaty/downloader/b37;Lcom/shabakaty/downloader/b37;)V

    return-object p0
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/b37;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 6
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/shabakaty/downloader/n87;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    return-void
.end method

.method public k()Lcom/shabakaty/downloader/d77;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 5
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/n87;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/b37$b;->t:Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/b37$b;->s:Lcom/shabakaty/downloader/b37;

    :goto_0
    return-object v0
.end method

.method public l()Lcom/shabakaty/downloader/d77;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/b37$b;->k()Lcom/shabakaty/downloader/d77;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b37;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/b37;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/u97;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    .line 4
    throw v0
.end method
