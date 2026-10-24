.class public final Lcom/shabakaty/downloader/e73$a;
.super Lcom/shabakaty/downloader/xd0;
.source "Once.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.Once"
    f = "Once.kt"
    l = {
        0x1b
    }
    m = "executeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/e73;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public u:Ljava/lang/Object;

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lcom/shabakaty/downloader/e73;

.field public x:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/e73;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/e73;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/e73$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/e73$a;->w:Lcom/shabakaty/downloader/e73;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/e73$a;->v:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/e73$a;->x:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/e73$a;->x:I

    iget-object p1, p0, Lcom/shabakaty/downloader/e73$a;->w:Lcom/shabakaty/downloader/e73;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/shabakaty/downloader/e73;->a(Ljava/lang/String;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
