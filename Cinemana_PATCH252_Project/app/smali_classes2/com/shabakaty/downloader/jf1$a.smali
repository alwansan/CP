.class public final Lcom/shabakaty/downloader/jf1$a;
.super Lcom/shabakaty/downloader/xd0;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2"
    f = "Reduce.kt"
    l = {
        0x90
    }
    m = "emit"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/jf1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic u:Ljava/lang/Object;

.field public v:I

.field public w:Ljava/lang/Object;

.field public final synthetic x:Lcom/shabakaty/downloader/jf1;

.field public y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jf1;Lcom/shabakaty/downloader/ud0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/jf1$a;->x:Lcom/shabakaty/downloader/jf1;

    invoke-direct {p0, p2}, Lcom/shabakaty/downloader/xd0;-><init>(Lcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/jf1$a;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/jf1$a;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/jf1$a;->v:I

    iget-object p1, p0, Lcom/shabakaty/downloader/jf1$a;->x:Lcom/shabakaty/downloader/jf1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/jf1;->b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
