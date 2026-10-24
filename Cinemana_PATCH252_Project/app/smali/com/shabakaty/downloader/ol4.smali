.class public Lcom/shabakaty/downloader/ol4;
.super Lcom/shabakaty/downloader/xa3;
.source "TextAppearance.java"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Lcom/shabakaty/downloader/xa3;

.field public final synthetic c:Lcom/shabakaty/downloader/nl4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nl4;Landroid/text/TextPaint;Lcom/shabakaty/downloader/xa3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ol4;->c:Lcom/shabakaty/downloader/nl4;

    iput-object p2, p0, Lcom/shabakaty/downloader/ol4;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lcom/shabakaty/downloader/ol4;->b:Lcom/shabakaty/downloader/xa3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/xa3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ol4;->b:Lcom/shabakaty/downloader/xa3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xa3;->b(I)V

    return-void
.end method

.method public c(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ol4;->c:Lcom/shabakaty/downloader/nl4;

    iget-object v1, p0, Lcom/shabakaty/downloader/ol4;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lcom/shabakaty/downloader/nl4;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ol4;->b:Lcom/shabakaty/downloader/xa3;

    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/xa3;->c(Landroid/graphics/Typeface;Z)V

    return-void
.end method
