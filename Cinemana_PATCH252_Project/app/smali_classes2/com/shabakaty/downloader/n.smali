.class public final Lcom/shabakaty/downloader/n;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/j61;

.field public static final b:Lcom/shabakaty/downloader/j61;

.field public static final c:Lcom/shabakaty/downloader/j61;

.field public static final d:Lcom/shabakaty/downloader/j61;

.field public static final e:Lcom/shabakaty/downloader/j61;

.field public static final f:Lcom/shabakaty/downloader/j61;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "EMPTY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n;->a:Lcom/shabakaty/downloader/j61;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n;->b:Lcom/shabakaty/downloader/j61;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n;->c:Lcom/shabakaty/downloader/j61;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n;->d:Lcom/shabakaty/downloader/j61;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n;->e:Lcom/shabakaty/downloader/j61;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/j61;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/j61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/n;->f:Lcom/shabakaty/downloader/j61;

    return-void
.end method
