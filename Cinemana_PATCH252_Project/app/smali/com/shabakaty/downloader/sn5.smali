.class public final Lcom/shabakaty/downloader/sn5;
.super Lcom/shabakaty/downloader/dn5;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.1.4"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic u:Lcom/shabakaty/downloader/xn5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xn5;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/sn5;->u:Lcom/shabakaty/downloader/xn5;

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/dn5;-><init>(Lcom/shabakaty/downloader/kn5;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/xn5;I)V
    .locals 1

    iput-object p1, p0, Lcom/shabakaty/downloader/sn5;->u:Lcom/shabakaty/downloader/xn5;

    iget-object v0, p1, Lcom/shabakaty/downloader/kn5;->s:Ljava/util/Collection;

    .line 2
    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/dn5;-><init>(Lcom/shabakaty/downloader/kn5;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/sn5;->u:Lcom/shabakaty/downloader/xn5;

    .line 1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dn5;->a()V

    iget-object v1, p0, Lcom/shabakaty/downloader/dn5;->r:Ljava/util/Iterator;

    .line 3
    check-cast v1, Ljava/util/ListIterator;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/sn5;->u:Lcom/shabakaty/downloader/xn5;

    iget-object p1, p1, Lcom/shabakaty/downloader/xn5;->w:Lcom/shabakaty/downloader/co5;

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/co5;->e(Lcom/shabakaty/downloader/co5;)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/sn5;->u:Lcom/shabakaty/downloader/xn5;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/kn5;->h()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dn5;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/dn5;->r:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dn5;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/dn5;->r:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dn5;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/dn5;->r:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dn5;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/dn5;->r:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/dn5;->a()V

    iget-object v0, p0, Lcom/shabakaty/downloader/dn5;->r:Ljava/util/Iterator;

    .line 2
    check-cast v0, Ljava/util/ListIterator;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
