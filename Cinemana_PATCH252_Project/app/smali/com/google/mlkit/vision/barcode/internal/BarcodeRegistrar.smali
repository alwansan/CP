.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

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
    .locals 6
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

    const-class v0, Lcom/shabakaty/downloader/g56;

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/zt2;

    .line 2
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v2, Lcom/shabakaty/downloader/pm5;->a:Lcom/shabakaty/downloader/t80;

    .line 4
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 5
    invoke-virtual {v1}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v1

    const-class v2, Lcom/shabakaty/downloader/zz5;

    .line 6
    invoke-static {v2}, Lcom/shabakaty/downloader/o80;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o80$b;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v0, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    const-class v0, Lcom/shabakaty/downloader/x61;

    .line 9
    new-instance v3, Lcom/shabakaty/downloader/eq0;

    invoke-direct {v3, v0, v4, v5}, Lcom/shabakaty/downloader/eq0;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/o80$b;->a(Lcom/shabakaty/downloader/eq0;)Lcom/shabakaty/downloader/o80$b;

    sget-object v0, Lcom/shabakaty/downloader/pt5;->a:Lcom/shabakaty/downloader/t80;

    .line 11
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/o80$b;->c(Lcom/shabakaty/downloader/t80;)Lcom/shabakaty/downloader/o80$b;

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/o80$b;->b()Lcom/shabakaty/downloader/o80;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/shabakaty/downloader/iu5;->s:Lcom/shabakaty/downloader/xj5;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    :goto_0
    if-ge v5, v2, :cond_0

    .line 14
    aget-object v0, v3, v5

    invoke-static {v0, v5}, Lcom/shabakaty/downloader/tp6;->j(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v3, v2}, Lcom/shabakaty/downloader/iu5;->p([Ljava/lang/Object;I)Lcom/shabakaty/downloader/iu5;

    move-result-object v0

    return-object v0
.end method
