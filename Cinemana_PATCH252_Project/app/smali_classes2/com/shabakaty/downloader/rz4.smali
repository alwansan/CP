.class public final Lcom/shabakaty/downloader/rz4;
.super Ljava/lang/Object;
.source "util.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/qe2;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qe2;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rz4;->a:Lcom/shabakaty/downloader/qe2;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/rz4;->b:Z

    return-void
.end method
