.class public final Lcom/shabakaty/downloader/cg2$g;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/cg2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/cg2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Lcom/shabakaty/downloader/xm0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2$g;->r:Lcom/shabakaty/downloader/cg2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2$g;->r:Lcom/shabakaty/downloader/cg2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cg2;->k()Lcom/shabakaty/downloader/xm0;

    move-result-object v0

    return-object v0
.end method
