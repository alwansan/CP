.class public Lcom/shabakaty/downloader/ba;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/d63;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/aa;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ba;->a:Lcom/shabakaty/downloader/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/shabakaty/downloader/x65;)Lcom/shabakaty/downloader/x65;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ba;->a:Lcom/shabakaty/downloader/aa;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/shabakaty/downloader/aa;->b0(Lcom/shabakaty/downloader/x65;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->c()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->d()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lcom/shabakaty/downloader/x65;->b()I

    move-result v3

    .line 6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    .line 7
    new-instance v4, Lcom/shabakaty/downloader/x65$d;

    invoke-direct {v4, p2}, Lcom/shabakaty/downloader/x65$d;-><init>(Lcom/shabakaty/downloader/x65;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    .line 8
    new-instance v4, Lcom/shabakaty/downloader/x65$c;

    invoke-direct {v4, p2}, Lcom/shabakaty/downloader/x65$c;-><init>(Lcom/shabakaty/downloader/x65;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Lcom/shabakaty/downloader/x65$b;

    invoke-direct {v4, p2}, Lcom/shabakaty/downloader/x65$b;-><init>(Lcom/shabakaty/downloader/x65;)V

    .line 10
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/shabakaty/downloader/r12;->a(IIII)Lcom/shabakaty/downloader/r12;

    move-result-object p2

    .line 11
    invoke-virtual {v4, p2}, Lcom/shabakaty/downloader/x65$e;->d(Lcom/shabakaty/downloader/r12;)V

    .line 12
    invoke-virtual {v4}, Lcom/shabakaty/downloader/x65$e;->b()Lcom/shabakaty/downloader/x65;

    move-result-object p2

    .line 13
    :cond_2
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/c35;->o(Landroid/view/View;Lcom/shabakaty/downloader/x65;)Lcom/shabakaty/downloader/x65;

    move-result-object p1

    return-object p1
.end method
