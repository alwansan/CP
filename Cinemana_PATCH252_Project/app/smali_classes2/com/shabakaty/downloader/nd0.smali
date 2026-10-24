.class public final Lcom/shabakaty/downloader/nd0;
.super Lcom/shabakaty/downloader/af2;
.source "context.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/p82;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/bg2;

.field public final synthetic s:Lcom/shabakaty/downloader/z20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/z20;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/nd0;->r:Lcom/shabakaty/downloader/bg2;

    iput-object p2, p0, Lcom/shabakaty/downloader/nd0;->s:Lcom/shabakaty/downloader/z20;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nd0;->r:Lcom/shabakaty/downloader/bg2;

    iget-object v1, p0, Lcom/shabakaty/downloader/nd0;->s:Lcom/shabakaty/downloader/z20;

    invoke-interface {v1}, Lcom/shabakaty/downloader/h8;->y()Lcom/shabakaty/downloader/d9;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/od0;->c(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/d9;)Lcom/shabakaty/downloader/p82;

    move-result-object v0

    return-object v0
.end method
