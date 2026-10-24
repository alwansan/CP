.class public final Lcom/shabakaty/downloader/cg2$d;
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
        "Ljava/util/Set<",
        "+",
        "Lcom/shabakaty/downloader/hw2;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/cg2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cg2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/cg2$d;->r:Lcom/shabakaty/downloader/cg2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/cg2$d;->r:Lcom/shabakaty/downloader/cg2;

    sget-object v1, Lcom/shabakaty/downloader/vq0;->o:Lcom/shabakaty/downloader/vq0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/cg2;->h(Lcom/shabakaty/downloader/vq0;Lcom/shabakaty/downloader/tm1;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
