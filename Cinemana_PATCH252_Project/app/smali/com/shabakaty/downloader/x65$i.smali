.class public Lcom/shabakaty/downloader/x65$i;
.super Lcom/shabakaty/downloader/x65$h;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/x65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public o:Lcom/shabakaty/downloader/r12;

.field public p:Lcom/shabakaty/downloader/r12;

.field public q:Lcom/shabakaty/downloader/r12;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/x65$h;-><init>(Lcom/shabakaty/downloader/x65;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x65$i;->o:Lcom/shabakaty/downloader/r12;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/x65$i;->p:Lcom/shabakaty/downloader/r12;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/x65$i;->q:Lcom/shabakaty/downloader/r12;

    return-void
.end method


# virtual methods
.method public f()Lcom/shabakaty/downloader/r12;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$i;->p:Lcom/shabakaty/downloader/r12;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/r12;->b(Landroid/graphics/Insets;)Lcom/shabakaty/downloader/r12;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/x65$i;->p:Lcom/shabakaty/downloader/r12;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$i;->p:Lcom/shabakaty/downloader/r12;

    return-object v0
.end method

.method public i(IIII)Lcom/shabakaty/downloader/x65;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/x65;->i(Landroid/view/WindowInsets;)Lcom/shabakaty/downloader/x65;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/shabakaty/downloader/r12;)V
    .locals 0

    return-void
.end method
