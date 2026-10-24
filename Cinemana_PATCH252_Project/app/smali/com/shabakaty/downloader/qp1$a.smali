.class public abstract Lcom/shabakaty/downloader/qp1$a;
.super Lcom/shabakaty/downloader/i0$a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/qp1<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/qp1$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/i0$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/qp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public s:Lcom/shabakaty/downloader/qp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qp1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/i0$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qp1$a;->r:Lcom/shabakaty/downloader/qp1;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->u:Lcom/shabakaty/downloader/qp1$e;

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/qp1;->s(Lcom/shabakaty/downloader/qp1$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/qp1;

    iput-object p1, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/qp1$a;->t:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/ds2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->r:Lcom/shabakaty/downloader/qp1;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->r:Lcom/shabakaty/downloader/qp1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->y()Lcom/shabakaty/downloader/qp1$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->o()Lcom/shabakaty/downloader/qp1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qp1$a;->r(Lcom/shabakaty/downloader/qp1;)Lcom/shabakaty/downloader/qp1$a;

    return-object v0
.end method

.method public final n()Lcom/shabakaty/downloader/qp1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->o()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/u97;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/u97;-><init>(I)V

    .line 4
    throw v0
.end method

.method public o()Lcom/shabakaty/downloader/qp1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qp1$a;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 5
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/ey3;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qp1$a;->t:Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    return-object v0
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/qp1$a;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    sget-object v1, Lcom/shabakaty/downloader/qp1$e;->u:Lcom/shabakaty/downloader/qp1$e;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/qp1;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 7
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/shabakaty/downloader/ey3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/shabakaty/downloader/qp1$a;->t:Z

    :cond_0
    return-void
.end method

.method public r(Lcom/shabakaty/downloader/qp1;)Lcom/shabakaty/downloader/qp1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    invoke-virtual {p0, v0, p1}, Lcom/shabakaty/downloader/qp1$a;->s(Lcom/shabakaty/downloader/qp1;Lcom/shabakaty/downloader/qp1;)V

    return-object p0
.end method

.method public final s(Lcom/shabakaty/downloader/qp1;Lcom/shabakaty/downloader/qp1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/ey3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
