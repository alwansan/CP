.class public final Lcom/shabakaty/downloader/py3$b;
.super Lcom/shabakaty/downloader/af2;
.source "ScopesHolderForClass.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/py3;->a(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/py3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/py3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/ve2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/py3;Lcom/shabakaty/downloader/ve2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/py3<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ve2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/py3$b;->r:Lcom/shabakaty/downloader/py3;

    iput-object p2, p0, Lcom/shabakaty/downloader/py3$b;->s:Lcom/shabakaty/downloader/ve2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/py3$b;->r:Lcom/shabakaty/downloader/py3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/py3;->b:Lcom/shabakaty/downloader/tm1;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/py3$b;->s:Lcom/shabakaty/downloader/ve2;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mr2;

    return-object v0
.end method
