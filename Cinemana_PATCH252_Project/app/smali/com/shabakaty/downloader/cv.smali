.class public final Lcom/shabakaty/downloader/cv;
.super Lcom/shabakaty/downloader/xa3;
.source "CancelableFontCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/cv$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Lcom/shabakaty/downloader/cv$a;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cv$a;Landroid/graphics/Typeface;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/xa3;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/cv;->a:Landroid/graphics/Typeface;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/cv;->b:Lcom/shabakaty/downloader/cv$a;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/cv;->a:Landroid/graphics/Typeface;

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/cv;->c:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/cv;->b:Lcom/shabakaty/downloader/cv$a;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/cv$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Typeface;Z)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/shabakaty/downloader/cv;->c:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shabakaty/downloader/cv;->b:Lcom/shabakaty/downloader/cv$a;

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/cv$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
