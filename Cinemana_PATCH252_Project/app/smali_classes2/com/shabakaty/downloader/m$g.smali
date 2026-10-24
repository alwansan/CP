.class public final Lcom/shabakaty/downloader/m$g;
.super Lcom/shabakaty/downloader/xd0;
.source "AbstractChannel.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.channels.AbstractChannel"
    f = "AbstractChannel.kt"
    l = {
        0x277
    }
    m = "receiveOrClosed-WVj179g"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/m;->m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public v:I

.field public final synthetic w:Lcom/shabakaty/downloader/m;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/m;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/m$g;->w:Lcom/shabakaty/downloader/m;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/m$g;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/m$g;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/m$g;->v:I

    iget-object p1, p0, Lcom/shabakaty/downloader/m$g;->w:Lcom/shabakaty/downloader/m;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/m;->m(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/pz4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/pz4;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
