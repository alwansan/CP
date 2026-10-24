.class public final Lcom/shabakaty/downloader/mv4;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ue1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ue1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Ljava/lang/Object;

.field public final s:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/me0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/me0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/mv4;->t:Lcom/shabakaty/downloader/me0;

    .line 2
    invoke-static {p2}, Lcom/shabakaty/downloader/zm4;->b(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/shabakaty/downloader/mv4;->r:Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/mv4$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/mv4$a;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/mv4;->s:Lcom/shabakaty/downloader/hn1;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mv4;->t:Lcom/shabakaty/downloader/me0;

    iget-object v1, p0, Lcom/shabakaty/downloader/mv4;->r:Ljava/lang/Object;

    iget-object v2, p0, Lcom/shabakaty/downloader/mv4;->s:Lcom/shabakaty/downloader/hn1;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/shabakaty/downloader/rm3;->B(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
