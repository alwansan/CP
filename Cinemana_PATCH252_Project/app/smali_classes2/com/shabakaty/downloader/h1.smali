.class public final Lcom/shabakaty/downloader/h1;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractTypeAliasDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/h1;->r:Lcom/shabakaty/downloader/i1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/h1;->r:Lcom/shabakaty/downloader/i1;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->f(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/g30;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/g30;->x()Lcom/shabakaty/downloader/b74;

    move-result-object p1

    :goto_0
    return-object p1
.end method
