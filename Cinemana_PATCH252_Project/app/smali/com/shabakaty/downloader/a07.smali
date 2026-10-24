.class public final Lcom/shabakaty/downloader/a07;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wu4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wu4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a07;->r:Lcom/shabakaty/downloader/wu4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/a07;->r:Lcom/shabakaty/downloader/wu4;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wu4;->m()Lcom/shabakaty/downloader/br3;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/shabakaty/downloader/ji1;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/op4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/op4;-><init>()V

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/wu4;->a:Landroid/app/Activity;

    check-cast p1, Lcom/shabakaty/downloader/ji1;

    .line 7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object v1

    .line 8
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/q;)V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ji1;->getSupportFragmentManager()Landroidx/fragment/app/q;

    move-result-object p1

    const-string v1, "TRACKS_CHOOSER_DIALOG_TAG"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/q;->I(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {v2, p1}, Landroidx/fragment/app/a;->q(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/t;

    :cond_2
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, v0, Lcom/shabakaty/downloader/ct0;->E:Z

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v0, Lcom/shabakaty/downloader/ct0;->F:Z

    .line 13
    invoke-virtual {v2, p1, v0, v1, v3}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 14
    iput-boolean p1, v0, Lcom/shabakaty/downloader/ct0;->D:Z

    .line 15
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    move-result p1

    iput p1, v0, Lcom/shabakaty/downloader/ct0;->z:I

    :cond_3
    :goto_0
    return-void
.end method
