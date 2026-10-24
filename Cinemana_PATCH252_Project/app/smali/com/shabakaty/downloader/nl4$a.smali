.class public Lcom/shabakaty/downloader/nl4$a;
.super Lcom/shabakaty/downloader/rs3$c;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/nl4;->c(Landroid/content/Context;Lcom/shabakaty/downloader/xa3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xa3;

.field public final synthetic b:Lcom/shabakaty/downloader/nl4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nl4;Lcom/shabakaty/downloader/xa3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/nl4$a;->b:Lcom/shabakaty/downloader/nl4;

    iput-object p2, p0, Lcom/shabakaty/downloader/nl4$a;->a:Lcom/shabakaty/downloader/xa3;

    invoke-direct {p0}, Lcom/shabakaty/downloader/rs3$c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nl4$a;->b:Lcom/shabakaty/downloader/nl4;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/shabakaty/downloader/nl4;->m:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/nl4$a;->a:Lcom/shabakaty/downloader/xa3;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/xa3;->b(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/nl4$a;->b:Lcom/shabakaty/downloader/nl4;

    iget v1, v0, Lcom/shabakaty/downloader/nl4;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/nl4;->n:Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/nl4$a;->b:Lcom/shabakaty/downloader/nl4;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/shabakaty/downloader/nl4;->m:Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/nl4$a;->a:Lcom/shabakaty/downloader/xa3;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/nl4;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/xa3;->c(Landroid/graphics/Typeface;Z)V

    return-void
.end method
