.class public final Lcom/shabakaty/downloader/yb6;
.super Lcom/shabakaty/downloader/jb6;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/jb6<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient t:Lcom/shabakaty/downloader/ba6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ba6<",
            "TK;*>;"
        }
    .end annotation
.end field

.field public final transient u:Lcom/shabakaty/downloader/k96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/k96<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ba6;Lcom/shabakaty/downloader/k96;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ba6<",
            "TK;*>;",
            "Lcom/shabakaty/downloader/k96<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/jb6;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yb6;->t:Lcom/shabakaty/downloader/ba6;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/yb6;->u:Lcom/shabakaty/downloader/k96;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/yb6;->t:Lcom/shabakaty/downloader/ba6;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final d([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb6;->u:Lcom/shabakaty/downloader/k96;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/k96;->d([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final h()Lcom/shabakaty/downloader/xc6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/xc6<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb6;->u:Lcom/shabakaty/downloader/k96;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/k96;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xc6;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yb6;->h()Lcom/shabakaty/downloader/xc6;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/shabakaty/downloader/k96;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/k96<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb6;->u:Lcom/shabakaty/downloader/k96;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb6;->t:Lcom/shabakaty/downloader/ba6;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method
