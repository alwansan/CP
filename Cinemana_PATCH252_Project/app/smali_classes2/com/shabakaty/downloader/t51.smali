.class public final Lcom/shabakaty/downloader/t51;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;

.field public static final b:Lcom/shabakaty/downloader/j61;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "REMOVED_TASK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/t51;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/t51;->b:Lcom/shabakaty/downloader/j61;

    return-void
.end method
