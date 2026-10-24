.class public final Lcom/shabakaty/downloader/pn;
.super Lcom/shabakaty/downloader/af2;
.source "BottomSheetList.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/on;

.field public final synthetic s:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/on;Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/on;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/pn;->r:Lcom/shabakaty/downloader/on;

    iput-object p2, p0, Lcom/shabakaty/downloader/pn;->s:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pn;->r:Lcom/shabakaty/downloader/on;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/b;->X1()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pn;->s:Lcom/shabakaty/downloader/rm1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    .line 3
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
