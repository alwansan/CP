.class public Lcom/shabakaty/downloader/ht3$a;
.super Ljava/lang/Object;
.source "ResultObservable.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ht3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/q53<",
        "Lcom/shabakaty/downloader/xs3<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/q53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/q53<",
            "-",
            "Lcom/shabakaty/downloader/et3<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-",
            "Lcom/shabakaty/downloader/et3<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0}, Lcom/shabakaty/downloader/q53;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    const-string v1, "error == null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/et3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/shabakaty/downloader/et3;-><init>(Lcom/shabakaty/downloader/xs3;Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q53;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/d90;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/d90;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xs3;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ht3$a;->r:Lcom/shabakaty/downloader/q53;

    const-string v1, "response == null"

    .line 3
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/et3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/et3;-><init>(Lcom/shabakaty/downloader/xs3;Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    return-void
.end method
