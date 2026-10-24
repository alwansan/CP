.class public final Lcom/shabakaty/downloader/pq6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final a:Lcom/shabakaty/downloader/nq6;

.field public final b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ag6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/ag6;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/nq6;

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/pq6;->a:Lcom/shabakaty/downloader/nq6;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ag6;->t:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/pq6;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/shabakaty/downloader/pq6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/pq6;

    iget-object v1, p0, Lcom/shabakaty/downloader/pq6;->a:Lcom/shabakaty/downloader/nq6;

    .line 3
    iget-object v3, p1, Lcom/shabakaty/downloader/pq6;->a:Lcom/shabakaty/downloader/nq6;

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shabakaty/downloader/pq6;->b:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/shabakaty/downloader/pq6;->b:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/pq6;->a:Lcom/shabakaty/downloader/nq6;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shabakaty/downloader/pq6;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
