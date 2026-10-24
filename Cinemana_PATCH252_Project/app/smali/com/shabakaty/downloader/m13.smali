.class public final Lcom/shabakaty/downloader/m13;
.super Ljava/lang/Object;
.source "NotificationsUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public b:Lcom/shabakaty/downloader/qm2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/m13;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/m13;->b:Lcom/shabakaty/downloader/qm2;

    return-void
.end method
