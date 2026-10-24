.class public final Lcom/shabakaty/downloader/wf1$a;
.super Lcom/shabakaty/downloader/cl;
.source "FlowableDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/cl<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final w:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/xl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/xl<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m90;Lcom/shabakaty/downloader/in1;Lcom/shabakaty/downloader/xl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/m90<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;TK;>;",
            "Lcom/shabakaty/downloader/xl<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/cl;-><init>(Lcom/shabakaty/downloader/m90;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/wf1$a;->w:Lcom/shabakaty/downloader/in1;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/wf1$a;->x:Lcom/shabakaty/downloader/xl;

    return-void
.end method


# virtual methods
.method public D(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cl;->h(I)I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/wf1$a;->g(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/cl;->s:Lcom/shabakaty/downloader/lf4;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cl;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/cl;->v:I

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cl;->r:Lcom/shabakaty/downloader/m90;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/m90;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/shabakaty/downloader/wf1$a;->w:Lcom/shabakaty/downloader/in1;

    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-boolean v3, p0, Lcom/shabakaty/downloader/wf1$a;->z:Z

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/wf1$a;->x:Lcom/shabakaty/downloader/xl;

    iget-object v4, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;

    check-cast v3, Lcom/shabakaty/downloader/n43$a;

    invoke-virtual {v3, v4, v2}, Lcom/shabakaty/downloader/n43$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 7
    iput-object v2, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;

    if-eqz v3, :cond_3

    return v1

    .line 8
    :cond_2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/wf1$a;->z:Z

    .line 9
    iput-object v2, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/shabakaty/downloader/cl;->r:Lcom/shabakaty/downloader/m90;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/ef4;->e(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/cl;->c(Ljava/lang/Throwable;)V

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cl;->t:Lcom/shabakaty/downloader/yk3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y64;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wf1$a;->w:Lcom/shabakaty/downloader/in1;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/in1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/shabakaty/downloader/wf1$a;->z:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 4
    iput-boolean v3, p0, Lcom/shabakaty/downloader/wf1$a;->z:Z

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/shabakaty/downloader/wf1$a;->x:Lcom/shabakaty/downloader/xl;

    iget-object v4, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/n43$a;

    invoke-virtual {v2, v4, v1}, Lcom/shabakaty/downloader/n43$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;

    return-object v0

    .line 8
    :cond_3
    iput-object v1, p0, Lcom/shabakaty/downloader/wf1$a;->y:Ljava/lang/Object;

    .line 9
    iget v0, p0, Lcom/shabakaty/downloader/cl;->v:I

    if-eq v0, v3, :cond_0

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/cl;->s:Lcom/shabakaty/downloader/lf4;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/lf4;->u(J)V

    goto :goto_0
.end method
