.class public Lcom/google/mlkit/vision/common/internal/VisionCommonRegistrar;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"

# interfaces
.implements Lcom/shabakaty/downloader/w80;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o80<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lcom/google/mlkit/vision/common/internal/a;

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/common/internal/a$a;

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/eq0;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v1, Lcom/shabakaty/downloader/a06;->a:Lcom/shabakaty/downloader/t80;

    .line 4
    iput-object v1, v0, Lcom/shabakaty/downloader/o80$b;->e:Lcom/shabakaty/downloader/t80;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/la7;->s:Lcom/shabakaty/downloader/ok6;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 7
    aget-object v0, v2, v4

    .line 8
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/nl6;->A(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 9
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/la7;->n([Ljava/lang/Object;I)Lcom/shabakaty/downloader/la7;

    move-result-object v0

    return-object v0
.end method
