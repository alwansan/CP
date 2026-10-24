.class public final Lcom/shabakaty/downloader/od2$b;
.super Lcom/shabakaty/downloader/af2;
.source "KTypeImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/od2;-><init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/rm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/mc2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/od2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/od2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/od2$b;->r:Lcom/shabakaty/downloader/od2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/od2$b;->r:Lcom/shabakaty/downloader/od2;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/od2;->a:Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/od2;->a(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/mc2;

    move-result-object v0

    return-object v0
.end method
