.class public Lcom/shabakaty/downloader/va$b;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Lcom/shabakaty/downloader/va$f;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public r:Landroidx/appcompat/app/b;

.field public s:Landroid/widget/ListAdapter;

.field public t:Ljava/lang/CharSequence;

.field public final synthetic u:Lcom/shabakaty/downloader/va;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/va;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$b;->u:Lcom/shabakaty/downloader/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fa;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$b;->t:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$b;->t:Ljava/lang/CharSequence;

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public l(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public n(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/va$b;->s:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/app/b$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/va$b;->u:Lcom/shabakaty/downloader/va;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/va;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/va$b;->t:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/va$b;->s:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/shabakaty/downloader/va$b;->u:Lcom/shabakaty/downloader/va;

    .line 6
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 7
    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/b$a;->g(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->create()Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    .line 9
    iget-object v0, v0, Landroidx/appcompat/app/b;->r:Landroidx/appcompat/app/AlertController;

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 12
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/va$b;->u:Lcom/shabakaty/downloader/va;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/va$b;->u:Lcom/shabakaty/downloader/va;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/va$b;->u:Lcom/shabakaty/downloader/va;

    iget-object v1, p0, Lcom/shabakaty/downloader/va$b;->s:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fa;->dismiss()V

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/va$b;->r:Landroidx/appcompat/app/b;

    :cond_1
    return-void
.end method

.method public p(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/va$b;->s:Landroid/widget/ListAdapter;

    return-void
.end method
