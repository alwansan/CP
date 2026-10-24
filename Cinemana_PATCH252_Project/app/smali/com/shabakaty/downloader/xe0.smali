.class public final Lcom/shabakaty/downloader/xe0;
.super Lcom/shabakaty/downloader/ui4;
.source "CoroutinesRoom.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1"
    f = "CoroutinesRoom.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic v:Lcom/shabakaty/downloader/fv;

.field public final synthetic w:Lcom/shabakaty/downloader/yd0;

.field public final synthetic x:Ljava/util/concurrent/Callable;

.field public final synthetic y:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/yd0;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/xe0;->v:Lcom/shabakaty/downloader/fv;

    iput-object p3, p0, Lcom/shabakaty/downloader/xe0;->w:Lcom/shabakaty/downloader/yd0;

    iput-object p4, p0, Lcom/shabakaty/downloader/xe0;->x:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lcom/shabakaty/downloader/xe0;->y:Landroid/os/CancellationSignal;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/shabakaty/downloader/ud0;

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/xe0;->r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/xe0;

    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/xe0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/shabakaty/downloader/xe0;

    iget-object v1, p0, Lcom/shabakaty/downloader/xe0;->v:Lcom/shabakaty/downloader/fv;

    iget-object v3, p0, Lcom/shabakaty/downloader/xe0;->w:Lcom/shabakaty/downloader/yd0;

    iget-object v4, p0, Lcom/shabakaty/downloader/xe0;->x:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Lcom/shabakaty/downloader/xe0;->y:Landroid/os/CancellationSignal;

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/xe0;-><init>(Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/ud0;Lcom/shabakaty/downloader/yd0;Ljava/util/concurrent/Callable;Landroid/os/CancellationSignal;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/xe0;->x:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/xe0;->v:Lcom/shabakaty/downloader/fv;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/xe0;->v:Lcom/shabakaty/downloader/fv;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    .line 5
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
