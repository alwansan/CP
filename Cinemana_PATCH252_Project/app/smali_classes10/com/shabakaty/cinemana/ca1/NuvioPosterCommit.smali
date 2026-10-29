.class public final Lcom/shabakaty/cinemana/ca1/NuvioPosterCommit;
.super Ljava/lang/Object;
.source "NuvioPosterCommit.java"
.implements Ljava/lang/Runnable;

.field private final a:Lcom/shabakaty/downloader/jj;

.method public constructor <init>(Lcom/shabakaty/downloader/jj;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterCommit;->a:Lcom/shabakaty/downloader/jj;
    return-void
.end method

# For equivalent snapshots DiffUtil emits no change callbacks.
.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterCommit;->a:Lcom/shabakaty/downloader/jj;
    iget-object v1, v0, Lcom/shabakaty/downloader/jj;->d:Landroidx/recyclerview/widget/e;
    iget-object v1, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, v0, Lcom/shabakaty/downloader/ej;->a:Ljava/util/List;
    return-void
.end method
