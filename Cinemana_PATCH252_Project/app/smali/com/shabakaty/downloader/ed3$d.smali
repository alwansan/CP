.class public final Lcom/shabakaty/downloader/ed3$d;
.super Lcom/shabakaty/downloader/af2;
.source "PlayerBottomSheetController.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ed3;->d(Ljava/util/ArrayList;II)V
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

.field public final synthetic s:I

.field public final synthetic t:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ed3;II)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ed3$d;->r:Lcom/shabakaty/downloader/ed3;

    iput p2, p0, Lcom/shabakaty/downloader/ed3$d;->s:I

    iput p3, p0, Lcom/shabakaty/downloader/ed3$d;->t:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ed3$d;->r:Lcom/shabakaty/downloader/ed3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ed3;->d:Lcom/shabakaty/downloader/sd3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/ed3$d;->s:I

    iget v2, p0, Lcom/shabakaty/downloader/ed3$d;->t:I

    invoke-interface {v0, v1, v2}, Lcom/shabakaty/downloader/sd3;->t(II)V

    .line 4
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v0
.end method
