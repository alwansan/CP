.class public final Lcom/shabakaty/downloader/wf2$h;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wf2;-><init>(Lcom/shabakaty/downloader/bg2;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/q62;ZLcom/shabakaty/downloader/wf2;)V
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
.field public final synthetic r:Lcom/shabakaty/downloader/wf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wf2$h;->r:Lcom/shabakaty/downloader/wf2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$h;->r:Lcom/shabakaty/downloader/wf2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/wf2;->o:Lcom/shabakaty/downloader/q62;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->P()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/m50;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
