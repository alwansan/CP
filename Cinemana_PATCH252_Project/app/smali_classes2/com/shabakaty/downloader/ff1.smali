.class public final Lcom/shabakaty/downloader/ff1;
.super Lcom/shabakaty/downloader/xd0;
.source "Errors.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt"
    f = "Errors.kt"
    l = {
        0xe6
    }
    m = "catchImpl"
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public v:I

.field public w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/ff1;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/ff1;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/ff1;->v:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/shabakaty/downloader/zy;->c(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
