.class public final Lcom/shabakaty/downloader/ru0;
.super Ljava/lang/Object;
.source "Distinct.kt"

# interfaces
.implements Lcom/shabakaty/downloader/te1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/te1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/te1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/hn1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/te1<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/tm1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/hn1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ru0;->r:Lcom/shabakaty/downloader/te1;

    iput-object p2, p0, Lcom/shabakaty/downloader/ru0;->s:Lcom/shabakaty/downloader/tm1;

    iput-object p3, p0, Lcom/shabakaty/downloader/ru0;->t:Lcom/shabakaty/downloader/hn1;

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lo3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lo3;-><init>()V

    sget-object v1, Lcom/shabakaty/downloader/q13;->a:Lcom/shabakaty/downloader/j61;

    iput-object v1, v0, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ru0;->r:Lcom/shabakaty/downloader/te1;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ru0$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/shabakaty/downloader/ru0$a;-><init>(Lcom/shabakaty/downloader/ru0;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ue1;)V

    invoke-interface {v1, v2, p2}, Lcom/shabakaty/downloader/te1;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
