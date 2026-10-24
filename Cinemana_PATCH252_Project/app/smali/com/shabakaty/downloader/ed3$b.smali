.class public final Lcom/shabakaty/downloader/ed3$b;
.super Lcom/shabakaty/downloader/af2;
.source "PlayerBottomSheetController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ed3;->b(Ljava/util/ArrayList;ILjava/lang/String;ILcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ed3;

.field public final synthetic s:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/on$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed3;Lcom/shabakaty/downloader/rm1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ed3;",
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/on$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ed3$b;->r:Lcom/shabakaty/downloader/ed3;

    iput-object p2, p0, Lcom/shabakaty/downloader/ed3$b;->s:Lcom/shabakaty/downloader/rm1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3$b;->r:Lcom/shabakaty/downloader/ed3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ed3$b;->s:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v1}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/on$a;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/sd3;->q(Lcom/shabakaty/downloader/on$a;)V

    .line 4
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
