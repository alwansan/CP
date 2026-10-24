.class public Lcom/shabakaty/downloader/kv5$a;
.super Lcom/shabakaty/downloader/fk5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/kv5<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/kv5$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/fk5<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/kv5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/kv5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/kv5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/shabakaty/downloader/fk5;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/kv5$a;->r:Lcom/shabakaty/downloader/kv5;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/kv5;

    iput-object p1, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/shabakaty/downloader/kv5$a;->t:Z

    return-void
.end method


# virtual methods
.method public final synthetic b()Lcom/shabakaty/downloader/y26;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->r:Lcom/shabakaty/downloader/kv5;

    return-object v0
.end method

.method public final c(Lcom/shabakaty/downloader/kv5;)Lcom/shabakaty/downloader/kv5$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kv5$a;->e()V

    iget-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    .line 1
    sget-object v1, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/shabakaty/downloader/o66;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->r:Lcom/shabakaty/downloader/kv5;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5$a;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kv5$a;->f()Lcom/shabakaty/downloader/y26;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/kv5;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/kv5$a;->c(Lcom/shabakaty/downloader/kv5;)Lcom/shabakaty/downloader/kv5$a;

    return-object v0
.end method

.method public e()V
    .locals 3

    iget-boolean v0, p0, Lcom/shabakaty/downloader/kv5$a;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    iget-object v1, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    .line 1
    sget-object v2, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/shabakaty/downloader/o66;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shabakaty/downloader/kv5$a;->t:Z

    :cond_0
    return-void
.end method

.method public f()Lcom/shabakaty/downloader/y26;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/kv5$a;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/o66;->g(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shabakaty/downloader/kv5$a;->t:Z

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/kv5$a;->s:Lcom/shabakaty/downloader/kv5;

    return-object v0
.end method
