.class public final Lcom/shabakaty/downloader/x71;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideDataSourceFactoryFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/lk2;

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/lk2;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/sp;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x71;->a:Lcom/shabakaty/downloader/lk2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/x71;->b:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x71;->a:Lcom/shabakaty/downloader/lk2;

    iget-object v1, p0, Lcom/shabakaty/downloader/x71;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/sp;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cacheDataSource"

    .line 3
    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/kn0;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/kn0;-><init>(Lcom/shabakaty/downloader/sp;)V

    return-object v0
.end method
