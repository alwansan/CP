.class public final Lcom/shabakaty/downloader/c73;
.super Lcom/shabakaty/downloader/af2;
.source "OnUndeliveredElement.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Ljava/lang/Throwable;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/tm1;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/me0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/c73;->r:Lcom/shabakaty/downloader/tm1;

    iput-object p2, p0, Lcom/shabakaty/downloader/c73;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/c73;->t:Lcom/shabakaty/downloader/me0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/c73;->r:Lcom/shabakaty/downloader/tm1;

    iget-object v0, p0, Lcom/shabakaty/downloader/c73;->s:Ljava/lang/Object;

    iget-object v1, p0, Lcom/shabakaty/downloader/c73;->t:Lcom/shabakaty/downloader/me0;

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v0, v2}, Lcom/shabakaty/downloader/d73;->a(Lcom/shabakaty/downloader/tm1;Ljava/lang/Object;Lcom/shabakaty/downloader/lv4;)Lcom/shabakaty/downloader/lv4;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v1, p1}, Lcom/shabakaty/downloader/md0;->y(Lcom/shabakaty/downloader/me0;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
