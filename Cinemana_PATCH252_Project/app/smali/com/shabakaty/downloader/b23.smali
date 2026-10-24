.class public Lcom/shabakaty/downloader/b23;
.super Ljava/lang/Object;
.source "OSCachedUniqueOutcome.kt"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/shabakaty/downloader/w23;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/w23;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/b23;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/b23;->b:Lcom/shabakaty/downloader/w23;

    return-void
.end method
