.class public final Lcom/shabakaty/downloader/hu0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/pe0;

.field public static final b:Lcom/shabakaty/downloader/pe0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shabakaty/downloader/ne0;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/vo0;->y:Lcom/shabakaty/downloader/vo0;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/k70;->t:Lcom/shabakaty/downloader/k70;

    .line 2
    :goto_0
    sput-object v0, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/jv4;->s:Lcom/shabakaty/downloader/jv4;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/vo0;->y:Lcom/shabakaty/downloader/vo0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/vo0;->x:Lcom/shabakaty/downloader/pe0;

    .line 6
    sput-object v0, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    return-void
.end method
