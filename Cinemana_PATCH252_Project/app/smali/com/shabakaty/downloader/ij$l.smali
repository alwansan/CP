.class public final Lcom/shabakaty/downloader/ij$l;
.super Lcom/shabakaty/downloader/ij$f;
.source "com.google.android.gms:play-services-basement@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ij$f;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/shabakaty/downloader/ij;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ij;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ij$l;->g:Lcom/shabakaty/downloader/ij;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/ij$f;-><init>(Lcom/shabakaty/downloader/ij;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/shabakaty/downloader/gb0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$l;->g:Lcom/shabakaty/downloader/ij;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$l;->g:Lcom/shabakaty/downloader/ij;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij;->G:Lcom/shabakaty/downloader/ij$c;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/ij$c;->a(Lcom/shabakaty/downloader/gb0;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$l;->g:Lcom/shabakaty/downloader/ij;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ij;->o(Lcom/shabakaty/downloader/gb0;)V

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ij$l;->g:Lcom/shabakaty/downloader/ij;

    iget-object v0, v0, Lcom/shabakaty/downloader/ij;->G:Lcom/shabakaty/downloader/ij$c;

    sget-object v1, Lcom/shabakaty/downloader/gb0;->v:Lcom/shabakaty/downloader/gb0;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ij$c;->a(Lcom/shabakaty/downloader/gb0;)V

    const/4 v0, 0x1

    return v0
.end method
