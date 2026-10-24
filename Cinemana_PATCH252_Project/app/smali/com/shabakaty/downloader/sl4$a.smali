.class public Lcom/shabakaty/downloader/sl4$a;
.super Lcom/shabakaty/downloader/xa3;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sl4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/sl4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sl4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sl4$a;->a:Lcom/shabakaty/downloader/sl4;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/xa3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/sl4$a;->a:Lcom/shabakaty/downloader/sl4;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/shabakaty/downloader/sl4;->d:Z

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/sl4;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sl4$b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/sl4$b;->a()V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/sl4$a;->a:Lcom/shabakaty/downloader/sl4;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/shabakaty/downloader/sl4;->d:Z

    .line 3
    iget-object p1, p1, Lcom/shabakaty/downloader/sl4;->e:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sl4$b;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/sl4$b;->a()V

    :cond_1
    return-void
.end method
