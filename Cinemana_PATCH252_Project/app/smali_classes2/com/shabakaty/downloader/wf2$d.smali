.class public final Lcom/shabakaty/downloader/wf2$d;
.super Lcom/shabakaty/downloader/af2;
.source "LazyJavaClassMemberScope.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wf2;->n(Lcom/shabakaty/downloader/hw2;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/hw2;",
        "Ljava/util/Collection<",
        "+",
        "Lcom/shabakaty/downloader/t64;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wf2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wf2;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/wf2$d;->r:Lcom/shabakaty/downloader/wf2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hw2;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wf2$d;->r:Lcom/shabakaty/downloader/wf2;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/wf2;->w(Lcom/shabakaty/downloader/wf2;Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
