.class public final Lcom/shabakaty/downloader/cg5;
.super Lcom/shabakaty/downloader/a24;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final d:Lcom/shabakaty/downloader/vw;

.field public final e:Lcom/shabakaty/downloader/tk5;

.field public final f:Lcom/shabakaty/downloader/ae7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/tk5;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vw;->W0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "com.google.android.gms.cast.CATEGORY_CAST"

    const-string v2, "applicationId cannot be null"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p2, Lcom/shabakaty/downloader/vw;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/jl3;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iget-object v0, p2, Lcom/shabakaty/downloader/vw;->r:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/shabakaty/downloader/vw;->W0()Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {v1, v0, v3}, Lcom/shabakaty/downloader/jl3;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/a24;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/cg5;->d:Lcom/shabakaty/downloader/vw;

    .line 10
    iput-object p3, p0, Lcom/shabakaty/downloader/cg5;->e:Lcom/shabakaty/downloader/tk5;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/qf5;

    invoke-direct {p1}, Lcom/shabakaty/downloader/qf5;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cg5;->f:Lcom/shabakaty/downloader/ae7;

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "namespaces cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/shabakaty/downloader/s14;
    .locals 9

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/a24;->a:Landroid/content/Context;

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/a24;->b:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lcom/shabakaty/downloader/cg5;->d:Lcom/shabakaty/downloader/vw;

    iget-object v5, p0, Lcom/shabakaty/downloader/cg5;->f:Lcom/shabakaty/downloader/ae7;

    new-instance v6, Lcom/shabakaty/downloader/o27;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/a24;->a:Landroid/content/Context;

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/cg5;->d:Lcom/shabakaty/downloader/vw;

    iget-object v8, p0, Lcom/shabakaty/downloader/cg5;->e:Lcom/shabakaty/downloader/tk5;

    invoke-direct {v6, v0, v3, v8}, Lcom/shabakaty/downloader/o27;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/tk5;)V

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/xw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/vw;Lcom/shabakaty/downloader/ae7;Lcom/shabakaty/downloader/o27;)V

    return-object v7
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg5;->d:Lcom/shabakaty/downloader/vw;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/vw;->v:Z

    return v0
.end method
