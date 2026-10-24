.class public final Lcom/shabakaty/downloader/ng5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/gj5;


# instance fields
.field public final r:Lcom/shabakaty/downloader/gj5;

.field public final s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    iput-object v0, p0, Lcom/shabakaty/downloader/ng5;->r:Lcom/shabakaty/downloader/gj5;

    iput-object p1, p0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/ng5;->r:Lcom/shabakaty/downloader/gj5;

    iput-object p1, p0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Lcom/shabakaty/downloader/gj5;
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/ng5;

    iget-object v1, p0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/ng5;->r:Lcom/shabakaty/downloader/gj5;

    .line 1
    invoke-interface {v2}, Lcom/shabakaty/downloader/gj5;->d()Lcom/shabakaty/downloader/gj5;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ng5;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/ng5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/ng5;

    iget-object v3, p1, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/ng5;->r:Lcom/shabakaty/downloader/gj5;

    iget-object p1, p1, Lcom/shabakaty/downloader/ng5;->r:Lcom/shabakaty/downloader/gj5;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Ljava/lang/Double;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Control is not a double"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Control is not a String"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ng5;->s:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/shabakaty/downloader/ng5;->r:Lcom/shabakaty/downloader/gj5;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Control is not a boolean"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final q(Ljava/lang/String;Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/shabakaty/downloader/np4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/gj5;",
            ">;)",
            "Lcom/shabakaty/downloader/gj5;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Control does not have functions"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
