.class public final Lcom/shabakaty/downloader/od3;
.super Lcom/shabakaty/downloader/af2;
.source "PlayerBottomSheetController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Boolean;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ed3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/od3;->r:Lcom/shabakaty/downloader/ed3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/od3;->r:Lcom/shabakaty/downloader/ed3;

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1201e0

    const-string v1, "yes"

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/sd3;->o(ILjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/od3;->r:Lcom/shabakaty/downloader/ed3;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f1201df

    const-string v1, "no"

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/sd3;->o(ILjava/lang/String;)V

    .line 8
    :goto_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
