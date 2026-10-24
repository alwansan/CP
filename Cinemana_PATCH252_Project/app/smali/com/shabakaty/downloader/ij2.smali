.class public final Lcom/shabakaty/downloader/ij2;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/shabakaty/downloader/kj2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ij2$g;,
        Lcom/shabakaty/downloader/ij2$d;,
        Lcom/shabakaty/downloader/ij2$c;,
        Lcom/shabakaty/downloader/ij2$f;,
        Lcom/shabakaty/downloader/ij2$b;,
        Lcom/shabakaty/downloader/ij2$e;,
        Lcom/shabakaty/downloader/ij2$h;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/ij2$c;

.field public static final e:Lcom/shabakaty/downloader/ij2$c;

.field public static final f:Lcom/shabakaty/downloader/ij2$c;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lcom/shabakaty/downloader/ij2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ij2$d<",
            "+",
            "Lcom/shabakaty/downloader/ij2$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ij2;->c(ZJ)Lcom/shabakaty/downloader/ij2$c;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ij2;->d:Lcom/shabakaty/downloader/ij2$c;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ij2$c;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/shabakaty/downloader/ij2$c;-><init>(IJLcom/shabakaty/downloader/ij2$a;)V

    sput-object v0, Lcom/shabakaty/downloader/ij2;->e:Lcom/shabakaty/downloader/ij2$c;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ij2$c;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/shabakaty/downloader/ij2$c;-><init>(IJLcom/shabakaty/downloader/ij2$a;)V

    sput-object v0, Lcom/shabakaty/downloader/ij2;->f:Lcom/shabakaty/downloader/ij2$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayer:Loader:"

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ny4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/ny4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/ij2;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static c(ZJ)Lcom/shabakaty/downloader/ij2$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ij2$c;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shabakaty/downloader/ij2$c;-><init>(IJLcom/shabakaty/downloader/ij2$a;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->b:Lcom/shabakaty/downloader/ij2$d;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ij2$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2$d;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ij2;->f(I)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->b:Lcom/shabakaty/downloader/ij2$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->c:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->b:Lcom/shabakaty/downloader/ij2$d;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 3
    iget p1, v0, Lcom/shabakaty/downloader/ij2$d;->r:I

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/shabakaty/downloader/ij2$d;->v:Ljava/io/IOException;

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/shabakaty/downloader/ij2$d;->w:I

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    throw v0
.end method

.method public g(Lcom/shabakaty/downloader/ij2$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->b:Lcom/shabakaty/downloader/ij2$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ij2$d;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ij2;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/downloader/ij2$g;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ij2$g;-><init>(Lcom/shabakaty/downloader/ij2$f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/ij2;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public h(Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/shabakaty/downloader/ij2$e;",
            ">(TT;",
            "Lcom/shabakaty/downloader/ij2$b<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/Looper;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/ij2;->c:Ljava/io/IOException;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ij2$d;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/ij2$d;-><init>(Lcom/shabakaty/downloader/ij2;Landroid/os/Looper;Lcom/shabakaty/downloader/ij2$e;Lcom/shabakaty/downloader/ij2$b;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ij2$d;->b(J)V

    return-wide v9
.end method
