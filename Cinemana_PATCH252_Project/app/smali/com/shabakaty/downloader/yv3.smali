.class public Lcom/shabakaty/downloader/yv3;
.super Ljava/lang/Object;
.source "RxRoom.java"

# interfaces
.implements Lcom/shabakaty/downloader/f53;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/f53<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/shabakaty/downloader/vt3;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/shabakaty/downloader/vt3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yv3;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/yv3;->b:Lcom/shabakaty/downloader/vt3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/y43;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y43<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yv3$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/yv3;->a:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/shabakaty/downloader/yv3$a;-><init>(Lcom/shabakaty/downloader/yv3;[Ljava/lang/String;Lcom/shabakaty/downloader/y43;)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yv3;->b:Lcom/shabakaty/downloader/vt3;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/vt3;->e:Lcom/shabakaty/downloader/v32;

    .line 4
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/v32;->a(Lcom/shabakaty/downloader/v32$c;)V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/yv3$b;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/yv3$b;-><init>(Lcom/shabakaty/downloader/yv3;Lcom/shabakaty/downloader/v32$c;)V

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/n2;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/n2;-><init>(Lcom/shabakaty/downloader/j2;)V

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/v43$a;

    .line 8
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/pu0;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/bw3;->a:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/v43$a;->n()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/v43$a;->r:Lcom/shabakaty/downloader/q53;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
