.class public Lcom/shabakaty/downloader/c45$a;
.super Lcom/shabakaty/downloader/e45;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/c45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lcom/shabakaty/downloader/c45;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/c45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/c45$a;->c:Lcom/shabakaty/downloader/c45;

    invoke-direct {p0}, Lcom/shabakaty/downloader/e45;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/c45$a;->a:Z

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/c45$a;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/shabakaty/downloader/c45$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shabakaty/downloader/c45$a;->b:I

    iget-object v0, p0, Lcom/shabakaty/downloader/c45$a;->c:Lcom/shabakaty/downloader/c45;

    iget-object v0, v0, Lcom/shabakaty/downloader/c45;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/c45$a;->c:Lcom/shabakaty/downloader/c45;

    iget-object p1, p1, Lcom/shabakaty/downloader/c45;->d:Lcom/shabakaty/downloader/d45;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d45;->b(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/shabakaty/downloader/c45$a;->b:I

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/c45$a;->a:Z

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/c45$a;->c:Lcom/shabakaty/downloader/c45;

    .line 7
    iput-boolean p1, v0, Lcom/shabakaty/downloader/c45;->e:Z

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/c45$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/shabakaty/downloader/c45$a;->a:Z

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/c45$a;->c:Lcom/shabakaty/downloader/c45;

    iget-object p1, p1, Lcom/shabakaty/downloader/c45;->d:Lcom/shabakaty/downloader/d45;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/d45;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method
