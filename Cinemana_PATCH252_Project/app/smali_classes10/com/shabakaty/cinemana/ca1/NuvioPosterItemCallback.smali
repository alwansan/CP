.class public final Lcom/shabakaty/cinemana/ca1/NuvioPosterItemCallback;
.super Landroidx/recyclerview/widget/j$e;
.source "NuvioPosterItemCallback.java"

.field private final a:Lcom/shabakaty/downloader/jj;

.method public constructor <init>(Lcom/shabakaty/downloader/jj;)V
    .locals 0
    invoke-direct {p0}, Landroidx/recyclerview/widget/j$e;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterItemCallback;->a:Lcom/shabakaty/downloader/jj;
    return-void
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterItemCallback;->a:Lcom/shabakaty/downloader/jj;
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ej;->g(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method

.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioPosterItemCallback;->a:Lcom/shabakaty/downloader/jj;
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/ej;->f(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method
