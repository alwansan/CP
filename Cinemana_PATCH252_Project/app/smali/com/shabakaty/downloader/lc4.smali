.class public Lcom/shabakaty/downloader/lc4;
.super Lcom/shabakaty/downloader/h01;
.source "StateListDrawable.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/lc4$a;
    }
.end annotation


# instance fields
.field public E:Lcom/shabakaty/downloader/lc4$a;

.field public F:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lc4$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/shabakaty/downloader/h01;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/lc4$a;Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/h01;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lc4$a;

    invoke-direct {v0, p1, p0, p2}, Lcom/shabakaty/downloader/lc4$a;-><init>(Lcom/shabakaty/downloader/lc4$a;Lcom/shabakaty/downloader/lc4;Landroid/content/res/Resources;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/lc4;->e(Lcom/shabakaty/downloader/h01$c;)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lc4;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/h01;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/lc4;->onStateChange([I)Z

    return-void
.end method

.method public bridge synthetic b()Lcom/shabakaty/downloader/h01$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc4;->f()Lcom/shabakaty/downloader/lc4$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/shabakaty/downloader/h01$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/h01;->r:Lcom/shabakaty/downloader/h01$c;

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/h01;->x:I

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/h01$c;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/h01;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/h01;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/h01;->u:Landroid/graphics/drawable/Drawable;

    .line 6
    instance-of v0, p1, Lcom/shabakaty/downloader/lc4$a;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lcom/shabakaty/downloader/lc4$a;

    iput-object p1, p0, Lcom/shabakaty/downloader/lc4;->E:Lcom/shabakaty/downloader/lc4$a;

    :cond_1
    return-void
.end method

.method public f()Lcom/shabakaty/downloader/lc4$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/lc4$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/lc4;->E:Lcom/shabakaty/downloader/lc4$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/shabakaty/downloader/lc4$a;-><init>(Lcom/shabakaty/downloader/lc4$a;Lcom/shabakaty/downloader/lc4;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/lc4;->F:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/shabakaty/downloader/h01;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/lc4;->E:Lcom/shabakaty/downloader/lc4$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lc4$a;->e()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/lc4;->F:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/h01;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/lc4;->E:Lcom/shabakaty/downloader/lc4$a;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/lc4$a;->g([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/lc4;->E:Lcom/shabakaty/downloader/lc4$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/lc4$a;->g([I)I

    move-result p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/h01;->d(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
