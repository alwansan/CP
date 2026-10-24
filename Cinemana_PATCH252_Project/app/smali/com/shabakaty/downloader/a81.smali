.class public final Lcom/shabakaty/downloader/a81;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideOkHttpDataSourceFactoryFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/lk2;

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/in0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lk2;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/in0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/a81;->a:Lcom/shabakaty/downloader/lk2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/a81;->b:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/a81;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a81;->a:Lcom/shabakaty/downloader/lk2;

    iget-object v1, p0, Lcom/shabakaty/downloader/a81;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/a81;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/in0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userAgent"

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bandwidthMeter"

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/b63$b;

    new-instance v3, Lcom/shabakaty/downloader/a63;

    invoke-direct {v3}, Lcom/shabakaty/downloader/a63;-><init>()V

    invoke-direct {v0, v3}, Lcom/shabakaty/downloader/b63$b;-><init>(Lcom/shabakaty/downloader/mq$a;)V

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/b63$b;->c:Ljava/lang/String;

    .line 6
    iput-object v2, v0, Lcom/shabakaty/downloader/b63$b;->d:Lcom/shabakaty/downloader/sp4;

    return-object v0
.end method
