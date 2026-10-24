.class public final Lcom/shabakaty/downloader/vj2;
.super Lcom/shabakaty/downloader/af2;
.source "LocaleManager.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/uj2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/uj2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vj2;->r:Lcom/shabakaty/downloader/uj2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vj2;->r:Lcom/shabakaty/downloader/uj2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/uj2;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/df3;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
