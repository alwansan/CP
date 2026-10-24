.class public Lcom/shabakaty/downloader/ij$d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/ij$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ij;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ij;)V
    .locals 0
    .param p1    # Lcom/shabakaty/downloader/ij;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ij$d;->a:Lcom/shabakaty/downloader/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/gb0;)V
    .locals 2
    .param p1    # Lcom/shabakaty/downloader/gb0;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->o1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/ij$d;->a:Lcom/shabakaty/downloader/ij;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->j()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ij;->w(Lcom/shabakaty/downloader/uw1;Ljava/util/Set;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$d;->a:Lcom/shabakaty/downloader/ij;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/ij;->M:Lcom/shabakaty/downloader/ij$b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ij$b;->onConnectionFailed(Lcom/shabakaty/downloader/gb0;)V

    :cond_1
    return-void
.end method
