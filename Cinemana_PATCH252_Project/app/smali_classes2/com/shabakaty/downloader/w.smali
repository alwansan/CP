.class public abstract Lcom/shabakaty/downloader/w;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/me0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/shabakaty/downloader/me0$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/me0$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/me0$b;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/me0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0$c;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0$c<",
            "TB;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/me0$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/w;->r:Lcom/shabakaty/downloader/tm1;

    .line 3
    instance-of p2, p1, Lcom/shabakaty/downloader/w;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/shabakaty/downloader/w;

    iget-object p1, p1, Lcom/shabakaty/downloader/w;->s:Lcom/shabakaty/downloader/me0$c;

    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/w;->s:Lcom/shabakaty/downloader/me0$c;

    return-void
.end method
