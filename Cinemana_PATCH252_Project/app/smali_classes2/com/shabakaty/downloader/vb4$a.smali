.class public final Lcom/shabakaty/downloader/vb4$a;
.super Lcom/shabakaty/downloader/af2;
.source "StarProjectionImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/vb4;-><init>(Lcom/shabakaty/downloader/kt4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/vb4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vb4;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/vb4$a;->r:Lcom/shabakaty/downloader/vb4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vb4$a;->r:Lcom/shabakaty/downloader/vb4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/vb4;->a:Lcom/shabakaty/downloader/kt4;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/wb4;->b(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    return-object v0
.end method
