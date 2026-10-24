.class public final Lcom/shabakaty/downloader/oy6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"


# instance fields
.field public final a:Lcom/shabakaty/downloader/iu5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/iu5<",
            "Lcom/shabakaty/downloader/rw6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/iu5;

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/oy6;->a:Lcom/shabakaty/downloader/iu5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/oy6;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/oy6;

    iget-object v0, p0, Lcom/shabakaty/downloader/oy6;->a:Lcom/shabakaty/downloader/iu5;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/oy6;->a:Lcom/shabakaty/downloader/iu5;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/oy6;->a:Lcom/shabakaty/downloader/iu5;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
