.class public final Lcom/shabakaty/downloader/mb;
.super Lcom/shabakaty/downloader/af2;
.source "AppSettingsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/jb;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mb;->r:Lcom/shabakaty/downloader/jb;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/mb;->r:Lcom/shabakaty/downloader/jb;

    invoke-static {p1}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    new-instance v3, Lcom/shabakaty/downloader/lb;

    iget-object p1, p0, Lcom/shabakaty/downloader/mb;->r:Lcom/shabakaty/downloader/jb;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/shabakaty/downloader/lb;-><init>(Lcom/shabakaty/downloader/jb;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 3
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
