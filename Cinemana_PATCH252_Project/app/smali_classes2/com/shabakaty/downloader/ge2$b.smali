.class public final Lcom/shabakaty/downloader/ge2$b;
.super Lcom/shabakaty/downloader/xd0;
.source "KotlinExtensions.kt"


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "retrofit2.KotlinExtensions"
    f = "KotlinExtensions.kt"
    l = {
        0x71
    }
    m = "suspendAndThrow"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ge2;->a(Ljava/lang/Exception;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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

    iput-object p1, p0, Lcom/shabakaty/downloader/ge2$b;->u:Ljava/lang/Object;

    iget p1, p0, Lcom/shabakaty/downloader/ge2$b;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/ge2$b;->v:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/shabakaty/downloader/ge2;->a(Ljava/lang/Exception;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
