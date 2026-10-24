.class public final Lcom/shabakaty/downloader/af1$a;
.super Lcom/shabakaty/downloader/xd0;
.source "Emitters.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "kotlinx.coroutines.flow.FlowKt__EmittersKt"
    f = "Emitters.kt"
    l = {
        0xd0
    }
    m = "invokeSafely$FlowKt__EmittersKt"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/af1;->a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/jn1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

    iput-object p1, p0, Lcom/shabakaty/downloader/af1$a;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/af1$a;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/af1$a;->v:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lcom/shabakaty/downloader/af1;->a(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/jn1;Ljava/lang/Throwable;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
