.class public final Lcom/shabakaty/downloader/q54;
.super Ljava/lang/Object;
.source "ShowMoreUseCases.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/k9;

.field public final b:Lcom/shabakaty/downloader/qm2;

.field public final c:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k9;Lcom/shabakaty/downloader/qm2;Lcom/shabakaty/downloader/n24;)V
    .locals 1

    const-string v0, "apiServices"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/q54;->a:Lcom/shabakaty/downloader/k9;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/q54;->b:Lcom/shabakaty/downloader/qm2;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/q54;->c:Lcom/shabakaty/downloader/n24;

    return-void
.end method
