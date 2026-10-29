.class public final Lcom/shabakaty/cinemana/ca1/NuvioHomeCommit;
.super Ljava/lang/Object;
.source "NuvioHomeCommit.java"
.implements Ljava/lang/Runnable;

.field private final a:Lcom/shabakaty/downloader/yt1;

.method public constructor <init>(Lcom/shabakaty/downloader/yt1;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/NuvioHomeCommit;->a:Lcom/shabakaty/downloader/yt1;
    return-void
.end method

# Runs on AndroidX main executor only for the winning generation.
# DiffUtil can emit zero update operations for equivalent home sections.
# Still publish the new committed snapshot to the legacy binding adapter.
.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/NuvioHomeCommit;->a:Lcom/shabakaty/downloader/yt1;
    iget-object v1, v0, Lcom/shabakaty/downloader/yt1;->e:Landroidx/recyclerview/widget/e;
    iget-object v1, v1, Landroidx/recyclerview/widget/e;->f:Ljava/util/List;
    iput-object v1, v0, Lcom/shabakaty/downloader/yt1;->c:Ljava/util/List;
    return-void
.end method
