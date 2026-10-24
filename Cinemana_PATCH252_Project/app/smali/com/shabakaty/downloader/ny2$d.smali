.class public final Lcom/shabakaty/downloader/ny2$d;
.super Lcom/shabakaty/downloader/xd0;
.source "NetworkProvider.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.epom_view.data.NetworkProvider"
    f = "NetworkProvider.kt"
    l = {
        0x3a,
        0x3a
    }
    m = "fetchAdWithIp"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ny2;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public synthetic w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/ny2;

.field public y:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ny2;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ny2;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/ny2$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ny2$d;->x:Lcom/shabakaty/downloader/ny2;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/ny2$d;->w:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/ny2$d;->y:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/ny2$d;->y:I

    iget-object p1, p0, Lcom/shabakaty/downloader/ny2$d;->x:Lcom/shabakaty/downloader/ny2;

    .line 1
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/ny2;->b(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
