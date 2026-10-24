.class public final Lcom/shabakaty/downloader/si4;
.super Ljava/lang/Object;
.source "suspendFunctionTypeUtil.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/fi1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fi1;

    const-string v1, "kotlin.suspend"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fi1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/si4;->a:Lcom/shabakaty/downloader/fi1;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/sq;

    sget-object v1, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    const-string v2, "suspend"

    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/sq;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    return-void
.end method
