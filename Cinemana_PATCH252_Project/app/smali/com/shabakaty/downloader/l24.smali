.class public final Lcom/shabakaty/downloader/l24;
.super Lcom/shabakaty/downloader/af2;
.source "Settings.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/n24;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/n24;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/l24;->r:Lcom/shabakaty/downloader/n24;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/l24;->r:Lcom/shabakaty/downloader/n24;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/n24;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
