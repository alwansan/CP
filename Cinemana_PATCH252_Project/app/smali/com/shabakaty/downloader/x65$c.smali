.class public Lcom/shabakaty/downloader/x65$c;
.super Lcom/shabakaty/downloader/x65$e;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/x65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/x65$e;-><init>()V

    .line 2
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/x65$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/x65;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/x65$e;-><init>(Lcom/shabakaty/downloader/x65;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/x65;->h()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/x65$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/x65;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/x65$e;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$c;->b:Landroid/view/WindowInsets$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/x65;->i(Landroid/view/WindowInsets;)Lcom/shabakaty/downloader/x65;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/x65;->a:Lcom/shabakaty/downloader/x65$k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/x65$k;->l([Lcom/shabakaty/downloader/r12;)V

    return-object v0
.end method

.method public c(Lcom/shabakaty/downloader/r12;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/r12;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public d(Lcom/shabakaty/downloader/r12;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x65$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/r12;->c()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
