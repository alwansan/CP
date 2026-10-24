.class public Lcom/shabakaty/downloader/o65;
.super Lcom/shabakaty/downloader/ec0;
.source "WidgetContainer.java"


# instance fields
.field public q0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ec0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ec0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-super {p0}, Lcom/shabakaty/downloader/ec0;->E()V

    return-void
.end method

.method public H(Lcom/shabakaty/downloader/np4;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/ec0;->H(Lcom/shabakaty/downloader/np4;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ec0;

    .line 4
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/ec0;->H(Lcom/shabakaty/downloader/np4;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ec0;

    .line 4
    instance-of v3, v2, Lcom/shabakaty/downloader/o65;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lcom/shabakaty/downloader/o65;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/o65;->T()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
