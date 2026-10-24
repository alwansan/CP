.class public final Lcom/shabakaty/downloader/bx0$a;
.super Lcom/shabakaty/downloader/af2;
.source "DownloadItemsFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/bx0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/dz0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bx0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bx0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/bx0$a;->r:Lcom/shabakaty/downloader/bx0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/dz0;

    iget-object v1, p0, Lcom/shabakaty/downloader/bx0$a;->r:Lcom/shabakaty/downloader/bx0;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/dz0;-><init>(Lcom/shabakaty/downloader/qw0;)V

    return-object v0
.end method
