.class public final Lcom/shabakaty/downloader/wa6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/qz2;

.field public final b:Lcom/shabakaty/downloader/np4;

.field public final c:Lcom/shabakaty/downloader/np4;

.field public final d:Lcom/shabakaty/downloader/ft2;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/shabakaty/downloader/qz2;

    const/4 v1, 0x7

    .line 1
    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/qz2;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wa6;->a:Lcom/shabakaty/downloader/qz2;

    new-instance v1, Lcom/shabakaty/downloader/np4;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/np4;-><init>(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/qz2;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/wa6;->c:Lcom/shabakaty/downloader/np4;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/wa6;->b:Lcom/shabakaty/downloader/np4;

    new-instance v0, Lcom/shabakaty/downloader/ft2;

    const/4 v2, 0x1

    .line 4
    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ft2;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/wa6;->d:Lcom/shabakaty/downloader/ft2;

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/rf7;

    invoke-direct {v2, v0}, Lcom/shabakaty/downloader/rf7;-><init>(Lcom/shabakaty/downloader/ft2;)V

    const-string v3, "require"

    invoke-virtual {v1, v3, v2}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    sget-object v2, Lcom/shabakaty/downloader/z46;->r:Lcom/shabakaty/downloader/z46;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    const-string v3, "internal.platform"

    .line 7
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/ug5;

    const-wide/16 v2, 0x0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    const-string v2, "runtime.counter"

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/shabakaty/downloader/np4;[Lcom/shabakaty/downloader/pj6;)Lcom/shabakaty/downloader/gj5;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    .line 2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p2, v2

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ol3;->k(Lcom/shabakaty/downloader/pj6;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    iget-object v3, p0, Lcom/shabakaty/downloader/wa6;->c:Lcom/shabakaty/downloader/np4;

    .line 4
    invoke-static {v3}, Lcom/shabakaty/downloader/kl3;->o(Lcom/shabakaty/downloader/np4;)I

    .line 5
    instance-of v3, v0, Lcom/shabakaty/downloader/mj5;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/shabakaty/downloader/yi5;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/wa6;->a:Lcom/shabakaty/downloader/qz2;

    .line 6
    invoke-virtual {v3, p1, v0}, Lcom/shabakaty/downloader/qz2;->k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
