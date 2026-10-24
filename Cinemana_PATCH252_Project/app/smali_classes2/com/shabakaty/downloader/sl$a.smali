.class public final Lcom/shabakaty/downloader/sl$a;
.super Ljava/lang/Object;
.source "BehaviorSubject.java"

# interfaces
.implements Lcom/shabakaty/downloader/mu0;
.implements Lcom/shabakaty/downloader/ye3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/q53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/sl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/sl<",
            "TT;>;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Z

.field public v:Lcom/shabakaty/downloader/wb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/wb<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public volatile x:Z

.field public y:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q53;Lcom/shabakaty/downloader/sl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/sl<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sl$a;->r:Lcom/shabakaty/downloader/q53;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/sl$a;->s:Lcom/shabakaty/downloader/sl;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->x:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/shabakaty/downloader/sl$a;->r:Lcom/shabakaty/downloader/q53;

    .line 2
    sget-object v3, Lcom/shabakaty/downloader/w03;->r:Lcom/shabakaty/downloader/w03;

    if-ne p1, v3, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    instance-of v3, p1, Lcom/shabakaty/downloader/w03$a;

    if-eqz v3, :cond_1

    .line 5
    check-cast p1, Lcom/shabakaty/downloader/w03$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/w03$a;->r:Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public b(Ljava/lang/Object;J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->w:Z

    if-nez v0, :cond_6

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/sl$a;->y:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    iget-boolean p2, p0, Lcom/shabakaty/downloader/sl$a;->u:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/sl$a;->v:Lcom/shabakaty/downloader/wb;

    const/4 v0, 0x4

    if-nez p2, :cond_3

    .line 10
    new-instance p2, Lcom/shabakaty/downloader/wb;

    invoke-direct {p2, v0}, Lcom/shabakaty/downloader/wb;-><init>(I)V

    .line 11
    iput-object p2, p0, Lcom/shabakaty/downloader/sl$a;->v:Lcom/shabakaty/downloader/wb;

    .line 12
    :cond_3
    iget v1, p2, Lcom/shabakaty/downloader/wb;->c:I

    if-ne v1, v0, :cond_4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    iget-object v2, p2, Lcom/shabakaty/downloader/wb;->b:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 14
    iput-object v1, p2, Lcom/shabakaty/downloader/wb;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 15
    :cond_4
    iget-object v0, p2, Lcom/shabakaty/downloader/wb;->b:[Ljava/lang/Object;

    aput-object p1, v0, v1

    add-int/2addr v1, p3

    .line 16
    iput v1, p2, Lcom/shabakaty/downloader/wb;->c:I

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_5
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sl$a;->t:Z

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iput-boolean p3, p0, Lcom/shabakaty/downloader/sl$a;->w:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 22
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/sl$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->x:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/sl$a;->s:Lcom/shabakaty/downloader/sl;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/sl;->n(Lcom/shabakaty/downloader/sl$a;)V

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/sl$a;->x:Z

    return v0
.end method
